package jee.support.interceptor;

import jee.support.model.TbUser;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {


        String url=request.getRequestURI();

        HttpSession session=request.getSession();
        TbUser tbUser=(TbUser)session.getAttribute("currentUser");
        if(tbUser!=null)
        {
            return true;
        }else
        {
            if(url.indexOf("/tResource/getStu/")>=0) {

                request.setAttribute("msg","下载EEG数据需要登录，点击后台管理系统(普通用户登录)");
                request.getRequestDispatcher("/WEB-INF/jsp/view/login2.jsp").forward(request,response);
                return false;
            }
            if(url.indexOf("/resource/xiujue_motion")>=0) {

                request.setAttribute("msg","下载嗅觉数据需要登录，点击后台管理系统(普通用户登录)");
                request.getRequestDispatcher("/WEB-INF/jsp/view/login2.jsp").forward(request,response);
                return false;
            }
            if(url.indexOf("/resource/video_motion")>=0) {

                request.setAttribute("msg","下载视频情感数据需要登录，点击后台管理系统(普通用户登录)");
                request.getRequestDispatcher("/WEB-INF/jsp/view/login2.jsp").forward(request,response);
                return false;
            }

            if(url.indexOf("tResource/getStuEnglish")>=0)
            {
                request.setAttribute("msg","Download EEG data need to log in, click background management system ( user login)");
                request.getRequestDispatcher("/WEB-INF/jsp/view/login2English.jsp").forward(request,response);
                return false;
            }
            return true;

        }


    }

    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
}
