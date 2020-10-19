package jee.support.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import jee.support.model.PageBean2;
import jee.support.model.Subjectinfo;
import jee.support.model.User;
import jee.support.util.*;
import org.apache.log4j.MDC;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import jee.support.service.ITbUserService;
import jee.support.dto.TbUserDTO;
import jee.support.model.TbUser;
import jee.support.dto.LimitShowDTO;
import org.springframework.web.multipart.MultipartFile;


@Controller
@RequestMapping("/api/tbUser")
public class TbUserController {
    @Resource(name="tbUserService")
    private ITbUserService tbUserService;





    @RequestMapping("/login")
    @ResponseBody
    public String login(@RequestParam("username") String username,@RequestParam("userpwd") String userpwd,
                        HttpServletRequest request, HttpServletResponse response) throws Exception {
//        try {
//           // String MD5pwd = MD5Util.MD5Encode(user.getPassword(), "UTF-8");
//            String MD5pwd =user.getPassword();
//            user.setPassword(MD5pwd);
//        } catch (Exception e) {
//            user.setPassword("");
//        }
        TbUser user=new TbUser();
        user.setUsernc(username);
        user.setUserpwd(userpwd);
        TbUser resultUser = tbUserService.login(user);
        //log.info("request: user/login2 , user: " + user.toString());
        if (resultUser == null) {
            request.setAttribute("user", user);
            request.setAttribute("errorMsg", "请认真核对账号、密码！");
            return "error";
        } else {
            HttpSession session = request.getSession();
            session.setAttribute("currentUser", resultUser);
           // MDC.put("userName", user.getTruename());
//            ResponseUtil2.write(response, "ok");
//
//            JSONObject result = new JSONObject();
//            result.put("success", true);
//            ResponseUtil2.write(response, result);

            return "ok";
        }
    }







    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public ResponseEntity<String> list(
        @Validated
        LimitShowDTO limitShowDTO, BindingResult errors) {
        if(errors.hasErrors())
            return ResponseUtil.getResponseEntityWhenInvalidReqParams();

        Map<String, Object> result = new HashMap<String, Object>();

        List<Map<String, Object>> tbUserList = tbUserService.loadMaps(null, null, null, null, limitShowDTO.getCurPage(), limitShowDTO.getLimit());
        long count = tbUserService.count();

        result.put("rows", tbUserList);
        result.put("total", count);

        return ResponseUtil.getResEntityForGetAndJson(result);
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public ResponseEntity<String> show(@PathVariable("id") Integer id) {
        Map<String, Object> tbUserModel = tbUserService.findMap(id);

        return ResponseUtil.getResEntityForGetAndJson(tbUserModel);
    }

    @RequestMapping(value = "", method = RequestMethod.POST)
    public ResponseEntity<String> create(
        @Validated
        TbUserDTO tbUserDTO, BindingResult errors) {
        if(errors.hasErrors())
            return ResponseUtil.getResponseEntityWhenInvalidReqParams();

        TbUser tbUserModel = tbUserDTO.toModel();

        return ResponseUtil.getResEntityForPPP(tbUserService.save(tbUserModel));
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.PUT)
    public ResponseEntity<String> update(@PathVariable("id") Integer id,
        @Validated
        TbUserDTO tbUserDTO, BindingResult errors) {

        TbUser tbUserModel = tbUserDTO.toModel();
        tbUserModel.setId(id);
        return ResponseUtil.getResEntityForPPP(tbUserService.update(tbUserModel));
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE)
    public ResponseEntity<String> destory(@PathVariable("id") Integer id) {
        return ResponseUtil.getResEntityForDel(tbUserService.delete(id));
    }

    @RequestMapping(value = "/deletes", method = RequestMethod.DELETE)
    public ResponseEntity<String> deletes(@RequestParam("primaryKeys") Integer[] primaryKeys) {
        return ResponseUtil.getResEntityForDel(tbUserService.batchDelete(primaryKeys));
    }

    @RequestMapping("/listHoutai")
    public String list(
            @RequestParam(value = "page", required = false) String page,
            @RequestParam(value = "rows", required = false) String rows,
            TbUser tbUser, HttpServletResponse response) throws Exception {
        Map<String, Object> map = new HashMap<String, Object>();
        if (page != null && rows != null) {
            PageBean2 pageBean = new PageBean2(Integer.parseInt(page),
                    Integer.parseInt(rows));
            map.put("start", pageBean.getStart());
            map.put("size", pageBean.getPageSize());
        }
        if (tbUser != null) {
            map.put("truename",
                    StringUtil.formatLike(tbUser.getTruename()));
        }
        List<TbUser> list = tbUserService.findTbUser(map);
        Long total = tbUserService.getTotalTbUser(map);
        JSONObject result = new JSONObject();
        String test=  JSONArray.toJSONStringWithDateFormat(list,"yyyy-MM-dd HH:mm:ss");
        JSONArray jsonArray = JSONArray.parseArray(test);
        result.put("rows", jsonArray);
        result.put("total", total);
        ResponseUtil2.write(response, result);
        // log.info("request: article/list , map: " + map.toString());
        return null;
    }

    @RequestMapping("/save")
    public String save(TbUser tbUser,HttpServletRequest request)  {

        Date date = new Date();
        SimpleDateFormat dateFormat= new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");

        date=DateUtil.parse(dateFormat.format(date));
      tbUser.setRegtime(date );

        if(tbUserService.save(tbUser))
        {
            return "login2";
        }else
        {
            request.setAttribute("user", tbUser);
            request.setAttribute("errorMsg", "请认真核对账号、密码！");
            return "register2";
        }
    }

    @RequestMapping("/login2")
    public String login2(HttpServletRequest request) {

        return "login2";
    }
//
//    @RequestMapping("/login")
//    public String login(User user, HttpServletRequest request) {
////        try {
////           // String MD5pwd = MD5Util.MD5Encode(user.getPassword(), "UTF-8");
////            String MD5pwd =user.getPassword();
////            user.setPassword(MD5pwd);
////        } catch (Exception e) {
////            user.setPassword("");
////        }
////        User resultUser = userService.login(user);
////        log.info("request: user/login2 , user: " + user.toString());
////        if (resultUser == null) {
////            request.setAttribute("user", user);
////            request.setAttribute("errorMsg", "请认真核对账号、密码！");
////            return "login2";
////        } else {
////            HttpSession session = request.getSession();
////            session.setAttribute("currentUser", resultUser);
////            MDC.put("userName", user.getUserName());
////            return "main";
////        }
//    }

}
