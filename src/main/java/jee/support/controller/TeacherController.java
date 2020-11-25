package jee.support.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import jee.support.model.PageBean2;
import jee.support.model.Subjectinfo;
import jee.support.model.TbUser;
import jee.support.util.ResponseUtil2;
import jee.support.util.StringUtil;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

import jee.support.util.ResponseUtil;
import jee.support.service.ITeacherService;
import jee.support.model.Teacher;
import jee.support.dto.LimitShowDTO;
import jee.support.dto.TeacherDTO;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.ModelAndView;


@RestController
@RequestMapping("/api/teacher")
public class TeacherController {
    @Resource(name="teacherService")
    private ITeacherService teacherService;

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public ResponseEntity<String> list(
        @Validated
        LimitShowDTO limitShowDTO, BindingResult errors) {
        if(errors.hasErrors())
            return ResponseUtil.getResponseEntityWhenInvalidReqParams();

        Map<String, Object> result = new HashMap<String, Object>();

        List<Map<String, Object>> teacherList = teacherService.loadMaps(null, null, null, null, limitShowDTO.getCurPage(), limitShowDTO.getLimit());
        long count = teacherService.count();

        result.put("rows", teacherList);
        result.put("total", count);

        return ResponseUtil.getResEntityForGetAndJson(result);
    }


    @RequestMapping("/listHoutai")
    public String list(
            @RequestParam(value = "page", required = false) String page,
            @RequestParam(value = "rows", required = false) String rows,
            Teacher teacher, HttpServletResponse response) throws Exception {
        Map<String, Object> map = new HashMap<String, Object>();
        if (page != null && rows != null) {
            PageBean2 pageBean = new PageBean2(Integer.parseInt(page),
                    Integer.parseInt(rows));
            map.put("start", pageBean.getStart());
            map.put("size", pageBean.getPageSize());
        }
//        if (teacher != null) {
//            map.put("subname",
//                    StringUtil.formatLike(subjectinfo.getSubname()));
//        }
        List<Teacher> list = teacherService.findTeacher(map);
        Long total = teacherService.getTotalTeacher(map);
        JSONObject result = new JSONObject();
        String test= JSONArray.toJSONStringWithDateFormat(list,"yyyy-MM-dd");
        JSONArray jsonArray = JSONArray.parseArray(test);
        result.put("rows", jsonArray);
        result.put("total", total);
        ResponseUtil2.write(response, result);
        // log.info("request: article/list , map: " + map.toString());
        return null;
    }

    @RequestMapping("/listHoutai/{id}")
    public String list(
            @RequestParam(value = "page", required = false) String page,
            @RequestParam(value = "rows", required = false) String rows,
            @PathVariable("id") Integer id,
            Teacher teacher, HttpServletResponse response) throws Exception {
        Map<String, Object> map = new HashMap<String, Object>();
        if (page != null && rows != null) {
            PageBean2 pageBean = new PageBean2(Integer.parseInt(page),
                    Integer.parseInt(rows));
            map.put("start", pageBean.getStart());
            map.put("size", pageBean.getPageSize());
        }
//        if (id != null) {
//            map.put("tId",
//                    id);
//        }
        Teacher teacher2 = teacherService.findModel(id);
        List<Teacher> list=new ArrayList<>();
        list.add(teacher2);
        //Long total = teacherService.getTotalTeacher(map);
        JSONObject result = new JSONObject();
        String test= JSONArray.toJSONStringWithDateFormat(list,"yyyy-MM-dd");
        JSONArray jsonArray = JSONArray.parseArray(test);
        result.put("rows", jsonArray);
        result.put("total", 1);
        ResponseUtil2.write(response, result);
        // log.info("request: article/list , map: " + map.toString());
        return null;
    }



    @RequestMapping("/listHoutai2/{id}")
    public ModelAndView list2(
            @RequestParam(value = "page", required = false) String page,
            @RequestParam(value = "rows", required = false) String rows,
            @PathVariable("id") Integer id,
            Teacher teacher,HttpServletRequest request, HttpServletResponse response) throws Exception {
        Map<String, Object> map = new HashMap<String, Object>();
        if (page != null && rows != null) {
            PageBean2 pageBean = new PageBean2(Integer.parseInt(page),
                    Integer.parseInt(rows));
            map.put("start", pageBean.getStart());
            map.put("size", pageBean.getPageSize());
        }
//        if (id != null) {
//            map.put("tId",
//                    id);
//        }
        Teacher teacher2 = teacherService.findModel(id);
//        List<Teacher> list=new ArrayList<>();
//        list.add(teacher2);
//        //Long total = teacherService.getTotalTeacher(map);
//        JSONObject result = new JSONObject();
//        String test= JSONArray.toJSONStringWithDateFormat(list,"yyyy-MM-dd");
//        JSONArray jsonArray = JSONArray.parseArray(test);
//        result.put("rows", jsonArray);
//        result.put("total", 1);
//        ResponseUtil2.write(response, result);

        //JSONObject result = new JSONObject();
        String test= JSONObject.toJSONStringWithDateFormat(teacher2,"yyyy-MM-dd");
        JSONObject jsonObject = JSONObject.parseObject(test);
        HttpSession session = request.getSession();
        session.setAttribute("asd", jsonObject);

        // log.info("request: article/list , map: " + map.toString());
        return new ModelAndView("teacherDetails_iiphci");
    }

//    @RequestMapping(value = "/{tId}", method = RequestMethod.GET)
//    public ResponseEntity<String> show(@PathVariable("tId") Integer tId) {
//        Map<String, Object> teacherModel = teacherService.findMap(tId);
//
//        return ResponseUtil.getResEntityForGetAndJson(teacherModel);
//    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public ResponseEntity<String> create(
        @Validated
        Teacher teacherDTO, BindingResult errors) {
        if(errors.hasErrors())
            return ResponseUtil.getResponseEntityWhenInvalidReqParams();

        Teacher teacherModel = teacherDTO;

        return ResponseUtil.getResEntityForPPP(teacherService.save(teacherModel));
    }

    @InitBinder
    public void initBinder(WebDataBinder binder, WebRequest request) {
        //转换日期 注意这里的转化要和传进来的字符串的格式一直 如2015-9-9 就应该为yyyy-MM-dd
        DateFormat dateFormat=new SimpleDateFormat("yyyy-MM-dd");
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));// CustomDateEditor为自定义日期编辑器
    }

    @RequestMapping("/teacherManage")
    public ModelAndView teacherManage(HttpServletRequest request) {

        return new ModelAndView("teacherManage") ;

    }

    @RequestMapping("/teacherManage2")
    public ModelAndView teacherManage2(HttpServletRequest request) {

        return new ModelAndView("teacherManage2") ;

    }

    @RequestMapping("/{tId}")
    public ResponseEntity<String> update(@PathVariable("tId") Integer tId,
        @Validated
        Teacher teacherDTO, BindingResult errors) {

        Teacher teacherModel = teacherDTO;
        teacherModel.setTId(tId);
        return ResponseUtil.getResEntityForPPP(teacherService.update(teacherModel));
    }

    @RequestMapping(value = "/{tId}", method = RequestMethod.DELETE)
    public ResponseEntity<String> destory(@PathVariable("tId") Integer tId) {
        return ResponseUtil.getResEntityForDel(teacherService.delete(tId));
    }

    @RequestMapping(value = "/deletes", method = RequestMethod.DELETE)
    public ResponseEntity<String> deletes(@RequestParam("primaryKeys") Integer[] primaryKeys) {
        return ResponseUtil.getResEntityForDel(teacherService.batchDelete(primaryKeys));
    }

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
        Teacher user=new Teacher();
        user.setTname(username);
        user.setTpwd(userpwd);
        Teacher resultUser = teacherService.login(user);
        //log.info("request: user/login2 , user: " + user.toString());
        if (resultUser == null) {
            request.setAttribute("user", user);
            request.setAttribute("errorMsg", "请认真核对账号、密码！");
            return "error";
        } else {
            HttpSession session = request.getSession();
            session.setAttribute("teacherId", resultUser.getTId());
            // MDC.put("userName", user.getTruename());
//            ResponseUtil2.write(response, "ok");
//
//            JSONObject result = new JSONObject();
//            result.put("success", true);
//            ResponseUtil2.write(response, result);
           // request.setAttribute("id", resultUser.getTId());
            return "ok";
        }
    }
}
