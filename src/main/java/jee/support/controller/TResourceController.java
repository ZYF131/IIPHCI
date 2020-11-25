package jee.support.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import jee.support.model.*;
import jee.support.util.DateUtil;
import jee.support.util.ResponseUtil2;
import jee.support.util.StringUtil;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestParam;

import jee.support.util.ResponseUtil;
import jee.support.dto.LimitShowDTO;
import jee.support.service.ITResourceService;
import jee.support.dto.TResourceDTO;
import org.springframework.web.servlet.ModelAndView;


@RestController
@RequestMapping("/api/tResource")
public class TResourceController {
    @Resource
    private ITResourceService tResourceService;



    @RequestMapping(value = "/getAll",method = RequestMethod.GET)
    public JSONArray getAll()
    {
        List<TResource> l1=  tResourceService.loadModels();

        String arrString=  JSONArray.toJSONStringWithDateFormat(l1,"yyyy-MM-dd HH:mm:ss");
        // String arrString= JSONArray.toJSONString(l1);
        JSONArray jsonArray=JSONArray.parseArray(arrString);

        return  jsonArray;
    }

//    @RequestMapping(value = "/getAll/{id}",method = RequestMethod.GET)
//    public JSONArray getAllBypage(@PathVariable("id") Integer curpage)
//    {
//        List<TResource> l1=  tResourceService.loadModels(curpage,10);
//
//        String arrString= JSONArray.toJSONStringWithDateFormat(l1,"yyyy-MM-dd HH:mm:ss");
//        // String arrString= JSONArray.toJSONString(l1);
//        JSONArray jsonArray=JSONArray.parseArray(arrString);
//
//        return  jsonArray;
//    }

    @RequestMapping(value = "/getAllBy/{id}",method = RequestMethod.GET)
    public ModelAndView tostudensInfo(HttpServletRequest request, HttpServletResponse response,@PathVariable("id") Integer id){


        ModelAndView modelAndView=new ModelAndView("eegDownDetial_iiphci");


        List<TResource> l1=  tResourceService.loadModels("subjectid="+id,1,10);

        String arrString= JSONArray.toJSONStringWithDateFormat(l1,"yyyy-MM-dd HH:mm:ss");
        // String arrString= JSONArray.toJSONString(l1);
        JSONObject jsonArray=JSONArray.parseObject(arrString);


//        HttpSession session=request.getSession();
//        session.setAttribute("jsonArray",jsonArray);
        modelAndView.addObject("jsonArray",jsonArray);
        //String t= JSONObject.toJSONString(tNews);

        return modelAndView;
    }

    @RequestMapping(value = "/getAllByEnglish/{id}",method = RequestMethod.GET)
    public ModelAndView getAllByEnglish(HttpServletRequest request, HttpServletResponse response,@PathVariable("id") Integer id){


        ModelAndView modelAndView=new ModelAndView("eegDownDetial_iiphciEnglish");


        List<TResource> l1=  tResourceService.loadModels("subjectid="+id,1,10);

        String arrString= JSONArray.toJSONStringWithDateFormat(l1,"yyyy-MM-dd HH:mm:ss");
        // String arrString= JSONArray.toJSONString(l1);
        JSONObject jsonArray=JSONArray.parseObject(arrString);


//        HttpSession session=request.getSession();
//        session.setAttribute("jsonArray",jsonArray);
        modelAndView.addObject("jsonArray",jsonArray);
        //String t= JSONObject.toJSONString(tNews);

        return modelAndView;
    }



    @RequestMapping(value="/getStu/{id}/{currentPage}",method = RequestMethod.GET)
    public ModelAndView index(HttpServletRequest request, HttpServletResponse response,@PathVariable("id") Integer id, @PathVariable("currentPage") Integer currentPage, Model model){

        ModelAndView modelAndView=new ModelAndView("eegDownDetial_iiphci");
        PageBean<TResource> l1=  tResourceService.findByPage("subjectid="+id,currentPage);

        String arrString= JSONObject.toJSONStringWithDateFormat(l1,"yyyy-MM-dd HH:mm:ss");
        // String arrString= JSONArray.toJSONString(l1);
        JSONObject jsonArray=JSONObject.parseObject(arrString);

        modelAndView.addObject("jsonArray",jsonArray);

        return modelAndView;
    }


    @RequestMapping(value="/getStuEnglish/{id}/{currentPage}",method = RequestMethod.GET)
    public ModelAndView getStuEnglish(HttpServletRequest request, HttpServletResponse response,@PathVariable("id") Integer id, @PathVariable("currentPage") Integer currentPage, Model model){

        ModelAndView modelAndView=new ModelAndView("eegDownDetial_iiphciEnglish");
        PageBean<TResource> l1=  tResourceService.findByPage("subjectid="+id,currentPage);

        String arrString= JSONObject.toJSONStringWithDateFormat(l1,"yyyy-MM-dd HH:mm:ss");
        // String arrString= JSONArray.toJSONString(l1);
        JSONObject jsonArray=JSONObject.parseObject(arrString);

        modelAndView.addObject("jsonArray",jsonArray);

        return modelAndView;
    }





    @RequestMapping(value = "/getAll/{page}",method = RequestMethod.GET)
    public ModelAndView tostudensInfoPage(HttpServletRequest request, HttpServletResponse response,@PathVariable("page") Integer curpage){


        ModelAndView modelAndView=new ModelAndView("eegDownDetial_iiphci");

        List<TResource> l2=  tResourceService.loadModels();
        int count=l2.size();

        List<TResource> l1=  tResourceService.loadModels(curpage,10);

        String arrString= JSONArray.toJSONStringWithDateFormat(l1,"yyyy-MM-dd HH:mm:ss");
        // String arrString= JSONArray.toJSONString(l1);
        JSONArray jsonArray=JSONArray.parseArray(arrString);


//        HttpSession session=request.getSession();
//        session.setAttribute("jsonArray",jsonArray);
        modelAndView.addObject("jsonArray",jsonArray);
        modelAndView.addObject("count",count);
        //String t= JSONObject.toJSONString(tNews);

        return modelAndView;
    }

    @RequestMapping(value = "/getAllEnglish/{page}",method = RequestMethod.GET)
    public ModelAndView getAllEnglish(HttpServletRequest request, HttpServletResponse response,@PathVariable("page") Integer curpage){


        ModelAndView modelAndView=new ModelAndView("eegDownDetial_iiphciEnglish");

        List<TResource> l2=  tResourceService.loadModels();
        int count=l2.size();

        List<TResource> l1=  tResourceService.loadModels(curpage,10);

        String arrString= JSONArray.toJSONStringWithDateFormat(l1,"yyyy-MM-dd HH:mm:ss");
        // String arrString= JSONArray.toJSONString(l1);
        JSONArray jsonArray=JSONArray.parseArray(arrString);


//        HttpSession session=request.getSession();
//        session.setAttribute("jsonArray",jsonArray);
        modelAndView.addObject("jsonArray",jsonArray);
        modelAndView.addObject("count",count);
        //String t= JSONObject.toJSONString(tNews);

        return modelAndView;
    }



    @RequestMapping(value="/toeegDown", method = RequestMethod.GET)
    public ModelAndView toeegDown(HttpServletRequest request, HttpServletResponse response){


        ModelAndView modelAndView=new ModelAndView("eegDown_iiphci");
//        TNews tNews= tNewsService.findModel(id);
//
//        modelAndView.addObject("TNews_title",tNews.getTitle());
//        modelAndView.addObject("TNews_datetime", DateUtil.format(tNews.getDatetime()));
//        modelAndView.addObject("TNews_con",tNews.getCon());
        //String t= JSONObject.toJSONString(tNews);

        return modelAndView;
    }

    @RequestMapping(value="/toeegDownEnglish", method = RequestMethod.GET)
    public ModelAndView toeegDownEnglish(HttpServletRequest request, HttpServletResponse response){


        ModelAndView modelAndView=new ModelAndView("eegDown_iiphciEnglish");
//        TNews tNews= tNewsService.findModel(id);
//
//        modelAndView.addObject("TNews_title",tNews.getTitle());
//        modelAndView.addObject("TNews_datetime", DateUtil.format(tNews.getDatetime()));
//        modelAndView.addObject("TNews_con",tNews.getCon());
        //String t= JSONObject.toJSONString(tNews);

        return modelAndView;
    }

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public ResponseEntity<String> list(
        @Validated
        LimitShowDTO limitShowDTO, BindingResult errors) {
        if(errors.hasErrors())
            return ResponseUtil.getResponseEntityWhenInvalidReqParams();

        Map<String, Object> result = new HashMap<String, Object>();

        List<Map<String, Object>> tResourceList = tResourceService.loadMaps(null, null, null, null, limitShowDTO.getCurPage(), limitShowDTO.getLimit());
        long count = tResourceService.count();

        result.put("rows", tResourceList);
        result.put("total", count);

        return ResponseUtil.getResEntityForGetAndJson(result);
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public ResponseEntity<String> show(@PathVariable("id") Integer id) {
        Map<String, Object> tResourceModel = tResourceService.findMap(id);

        return ResponseUtil.getResEntityForGetAndJson(tResourceModel);
    }

    @RequestMapping(value = "", method = RequestMethod.POST)
    public ResponseEntity<String> create(
        @Validated
        TResourceDTO tResourceDTO, BindingResult errors) {
        if(errors.hasErrors())
            return ResponseUtil.getResponseEntityWhenInvalidReqParams();

        TResource tResourceModel = tResourceDTO.toModel();

        return ResponseUtil.getResEntityForPPP(tResourceService.save(tResourceModel));
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.PUT)
    public ResponseEntity<String> update(@PathVariable("id") Integer id,
        @Validated
        TResourceDTO tResourceDTO, BindingResult errors) {

        TResource tResourceModel = tResourceDTO.toModel();
        tResourceModel.setId(id);
        return ResponseUtil.getResEntityForPPP(tResourceService.update(tResourceModel));
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE)
    public ResponseEntity<String> destory(@PathVariable("id") Integer id) {
        return ResponseUtil.getResEntityForDel(tResourceService.delete(id));
    }

    @RequestMapping(value = "/deletes", method = RequestMethod.DELETE)
    public ResponseEntity<String> deletes(@RequestParam("primaryKeys") Integer[] primaryKeys) {
        return ResponseUtil.getResEntityForDel(tResourceService.batchDelete(primaryKeys));
    }

    @RequestMapping("/listHoutai")
    public String list(
            @RequestParam(value = "page", required = false) String page,
            @RequestParam(value = "rows", required = false) String rows,
            Subjectinfo subjectinfo,HttpServletRequest request, HttpServletResponse response) throws Exception {
        Map<String, Object> map = new HashMap<String, Object>();
        if (page != null && rows != null) {
            PageBean2 pageBean = new PageBean2(Integer.parseInt(page),
                    Integer.parseInt(rows));
            map.put("start", pageBean.getStart());
            map.put("size", pageBean.getPageSize());
        }
        if (subjectinfo.getSubname() != null) {
            map.put("subname",
                    StringUtil.formatLike(subjectinfo.getSubname()));
        }
        List<TResource> list = tResourceService.findTResource(map);
        Long total = tResourceService.getTotalfindTResource(map);
        JSONObject result = new JSONObject();
        String test=  JSONArray.toJSONStringWithDateFormat(list,"yyyy-MM-dd HH:mm:ss");
        JSONArray jsonArray = JSONArray.parseArray(test);
        for(int i=0;i<jsonArray.size();i++){
            //3、把里面的对象转化为JSONObject
            JSONObject job = jsonArray.getJSONObject(i);
            // 4、把里面想要的参数一个个用.属性名的方式获取到
           String url= (String)job.get("url");
            String pattern = ".*<a.*";
            boolean isMatch = Pattern.matches(pattern, url);
            if(!isMatch)
            {

              // '<a class=\"ke-insertfile\" href=\"/admin/editor/attached/file/20181127/20181127193233_36125.rar\" target=\"_blank\">OYR_20141026_cap1_no1</a>'
                job.put("url", "<a  class=\"ke-insertfile\" href=\"http://iiphci.ahu.edu.cn:8081/iiphci/editor/attached/file/"+url+"\">"+url+"</a>");



            }else
            {
               String urlNew=url.replaceAll("admin","iiphci");
                job.put("url", urlNew);
            }
        }


        result.put("rows", jsonArray);
        result.put("total", total);
        ResponseUtil2.write(response, result);
        // log.info("request: article/list , map: " + map.toString());
        return null;
    }


    @RequestMapping("/save")
    public String save(TResource tResource, HttpServletResponse response)
            throws Exception {
        boolean resultTotal;
        if (tResource.getId() == null) {
            //subjectinfo.setArticleCreateDate(DateUtil2.getCurrentDateStr());
            resultTotal = tResourceService.save(tResource);
        } else {
            resultTotal = tResourceService.update(tResource);
        }
        JSONObject result = new JSONObject();
        if (resultTotal) {
            result.put("success", true);
        } else {
            result.put("success", false);
        }
        ResponseUtil2.write(response, result);
        // log.info("request: article/save , " + article.toString());
        return null;
    }

    @RequestMapping("/delete")
    public String delete(@RequestParam(value = "ids") String ids,
                         HttpServletResponse response) throws Exception {
        JSONObject result = new JSONObject();
        String[] idsStr = ids.split(",");
        for (int i = 0; i < idsStr.length; i++) {
            tResourceService.delete(Integer.parseInt(idsStr[i]));
        }
        result.put("success", true);
        ResponseUtil2.write(response, result);
        //log.info("request: article/delete , ids: " + ids);
        return null;
    }


}
