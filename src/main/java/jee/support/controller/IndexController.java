package jee.support.controller;


import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@RestController
public class IndexController {

//    @RequestMapping("/index")
//    public String index()
//    {
//        return "index_iiphci";
//    }

    @RequestMapping(value={"/", "/index"})
    public ModelAndView index(HttpServletRequest request, HttpServletResponse response){
        return new ModelAndView("index_iiphci");
    }



    @RequestMapping(value="toIndex_iipchi")
    public ModelAndView toIndex_iipchi(HttpServletRequest request, HttpServletResponse response){
        return new ModelAndView("index_iiphci");
    }


    @RequestMapping(value="/toStaff")
    public ModelAndView toStaff(HttpServletRequest request, HttpServletResponse response){
        return new ModelAndView("staff_iiphci");
    }

    @RequestMapping(value="/toMasterStaff")
    public ModelAndView toMasterStaff(HttpServletRequest request, HttpServletResponse response){
        return new ModelAndView("staff_master_iiphci");
    }
    @RequestMapping(value="/toDoctorStaff")
    public ModelAndView toDoctorStaff(HttpServletRequest request, HttpServletResponse response){
        return new ModelAndView("staff_doctor_iiphci");
    }


    @RequestMapping(value="/todirector")
    public ModelAndView todirector(HttpServletRequest request, HttpServletResponse response){
        return new ModelAndView("director_iiphci");
    }

    @RequestMapping(value="/toContact")
    public ModelAndView toContact(HttpServletRequest request, HttpServletResponse response){
        return new ModelAndView("contact_iiphci");
    }
    @RequestMapping(value="/toContactEnglish")
    public ModelAndView toContactEnglish(HttpServletRequest request, HttpServletResponse response){
        return new ModelAndView("contact_iiphciEnglish");
    }

    @RequestMapping(value="/toResult")
    public ModelAndView toResult(HttpServletRequest request, HttpServletResponse response){
        return new ModelAndView("result_iiphci");
    }

    @RequestMapping(value="/toface")
    public ModelAndView toface(HttpServletRequest request, HttpServletResponse response){
        return new ModelAndView("faceRespurce_iiphci");
    }

    @RequestMapping(value="/toxiujue")
    public ModelAndView toxiujue(HttpServletRequest request, HttpServletResponse response){
        return new ModelAndView("xiujueRespurce_iiphci");
    }

    @RequestMapping(value="/toeeg")
    public ModelAndView toeeg(HttpServletRequest request, HttpServletResponse response){
        return new ModelAndView("eegRespurce_iiphci");
    }


    @RequestMapping(value="/toeegEnglish")
    public ModelAndView toeegEnglish(HttpServletRequest request, HttpServletResponse response){
        return new ModelAndView("eegRespurce_iiphciEnglish");
    }



//    @RequestMapping(value="/toNewsInfo/{ID}", method = RequestMethod.GET)
//    public ModelAndView toNewsInfo(HttpServletRequest request, HttpServletResponse response,@PathVariable("id") Integer id){
//
//
//        return new ModelAndView("news_iiphci");
//    }



//    @RequestMapping(value = "/index")
//    public ModelAndView index(HttpServletRequest request, HttpServletResponse response){
//        return new ModelAndView("index_iiphci");
//    }

}
