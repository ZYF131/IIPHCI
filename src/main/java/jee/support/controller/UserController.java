package jee.support.controller;


import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
//import com.sun.istack.internal.logging.Logger;
import jee.support.model.PageBean2;
import jee.support.model.User;
import jee.support.service.UserService;
import jee.support.util.MD5Util;
import jee.support.util.ResponseUtil;
import jee.support.util.ResponseUtil2;
import jee.support.util.StringUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.MDC;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @author 1034683568@qq.com
 * @project_name ssm-maven
 * @date 2017-3-1
 */
@Controller
@RequestMapping("/user")
public class UserController {

    @Resource
    private UserService userService;
//    private static final Logger log = Logger.getLogger(UserController.class);// 日志文件

    /**
     * 登录
     *
     * @param user
     * @param request
     * @return
     */
    @RequestMapping("/login")
    public String login(User user, HttpServletRequest request) {
//        try {
//           // String MD5pwd = MD5Util.MD5Encode(user.getPassword(), "UTF-8");
//            String MD5pwd =user.getPassword();
//            user.setPassword(MD5pwd);
//        } catch (Exception e) {
//            user.setPassword("");
//        }
        User resultUser = userService.login(user);
//        log.info("request: user/login2 , user: " + user.toString());
        if (resultUser == null) {
            request.setAttribute("user", user);
            request.setAttribute("errorMsg", "请认真核对账号、密码！");
            return "login2";
        } else {
            HttpSession session = request.getSession();
            session.setAttribute("User", resultUser);
            MDC.put("userName", user.getUserName());
            return "main";
        }
    }

    @RequestMapping("/articleManage")
    public String articleManage(HttpServletRequest request) {

            return "articleManage";

    }
    @RequestMapping("/allBooksManage")
    public String allBooksManage(HttpServletRequest request) {

        return "allBooksManage";

    }

    @RequestMapping("/userManage")
    public String userManage(HttpServletRequest request) {

        return "userManage";

    }



    @RequestMapping("/beiShiZheManage")
    public String beiShiZheManage(HttpServletRequest request) {

        return "beiShiZheManage";

    }

    @RequestMapping("/registerUserManage")
    public String registerUserManage(HttpServletRequest request) {

        return "registerUserManage";

    }



    @RequestMapping("/dataEEGManage")
    public String dataEEGManage(HttpServletRequest request) {

        return "dataEEGManage";

    }

    @RequestMapping("/login2")
    public String login2(HttpServletRequest request) {

        return "login2";
    }

    @RequestMapping("/register2")
    public String register2(HttpServletRequest request) {

        return "register2";

    }
    @RequestMapping("/registerCopy2")
    public String registerCopy2(HttpServletRequest request) {

        return "registerCopy2";

    }


    @RequestMapping("/login2English")
    public String login2English(HttpServletRequest request) {

        return "login2English";
    }

    @RequestMapping("/register2English")
    public String register2English(HttpServletRequest request) {

        return "register2English";

    }
    @RequestMapping("/registerCopy2English")
    public String registerCopy2English(HttpServletRequest request) {

        return "registerCopy2English";

    }


    @RequestMapping("/toIndex_iiphciEnglish")
    public String toIndex_iiphciEnglish(HttpServletRequest request) {

        return "index_iiphciEnglish";

    }

    @RequestMapping("/tofaceEnglish")
    public String tofaceEnglish(HttpServletRequest request) {

        return "faceRespurce_iiphciEnglish";

    }


    /**
     * 修改密码
     *
     * @param user
     * @param response
     * @return
     * @throws Exception
     */
    @RequestMapping("/modifyPassword")
    public String modifyPassword(User user, HttpServletResponse response) throws Exception {
        String MD5pwd = MD5Util.MD5Encode(user.getPassword(), "UTF-8");
        user.setPassword(MD5pwd);
        int resultTotal = userService.updateUser(user);
        JSONObject result = new JSONObject();
        if (resultTotal > 0) {
            result.put("success", true);
        } else {
            result.put("success", false);
        }
//        log.info("request: user/modifyPassword , user: " + user.toString());
        ResponseUtil2.write(response, result);
        return null;
    }

    /**
     * 退出系统
     *
     * @return
     * @throws Exception
     */
    @RequestMapping("/logout")
    public String logout(HttpSession session) throws Exception {
        session.invalidate();
//        log.info("request: user/logout");
        return "login2";
    }

    /**
     * @param page
     * @param rows
     * @param s_user
     * @param response
     * @return
     * @throws Exception
     */
    @RequestMapping("/list")
    public String list(@RequestParam(value = "page", required = false) String page, @RequestParam(value = "rows", required = false) String rows, User s_user, HttpServletResponse response) throws Exception {
        Map<String, Object> map = new HashMap<String, Object>();
        if (page != null && rows != null) {
            PageBean2 pageBean = new PageBean2(Integer.parseInt(page),
                    Integer.parseInt(rows));
            map.put("start", pageBean.getStart());
            map.put("size", pageBean.getPageSize());
        }
        map.put("userName", StringUtil.formatLike(s_user.getUserName()));
        List<User> userList = userService.findUser(map);
        Long total = userService.getTotalUser(map);
        JSONObject result = new JSONObject();
        String text=JSONArray.toJSONString(userList);
        JSONArray jsonArray = JSONArray.parseArray(text);
        result.put("rows", jsonArray);
        result.put("total", total);
//        log.info("request: user/list , map: " + map.toString());
        ResponseUtil2.write(response, result);
        return null;
    }

    /**
     * 添加或修改管理员
     *
     * @param response
     * @return
     * @throws Exception
     */
    @RequestMapping("/save")
    public String save(User user, HttpServletResponse response) throws Exception {
        int resultTotal = 0;
        String MD5pwd = MD5Util.MD5Encode(user.getPassword(), "UTF-8");
        user.setPassword(MD5pwd);
        if (user.getId() == null) {
            resultTotal = userService.addUser(user);
        } else {
            resultTotal = userService.updateUser(user);
        }
        JSONObject result = new JSONObject();
        if (resultTotal > 0) {
            result.put("success", true);
        } else {
            result.put("success", false);
        }
//        log.info("request: user/save , user: " + user.toString());
        ResponseUtil2.write(response, result);
        return null;
    }

    /**
     * 删除管理员
     *
     * @param ids
     * @param response
     * @return
     * @throws Exception
     */
    @RequestMapping("/delete")
    public String delete(@RequestParam(value = "ids") String ids, HttpServletResponse response) throws Exception {
        JSONObject result = new JSONObject();
        String[] idsStr = ids.split(",");
        for (int i = 0; i < idsStr.length; i++) {
            userService.deleteUser(Integer.parseInt(idsStr[i]));
        }
        result.put("success", true);
//        log.info("request: user/delete , ids: " + ids);
        ResponseUtil2.write(response, result);
        return null;
    }
}
