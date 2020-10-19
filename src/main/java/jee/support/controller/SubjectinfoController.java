package jee.support.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import jee.support.model.*;
import jee.support.util.DateUtil2;
import jee.support.util.ResponseUtil2;
import jee.support.util.StringUtil;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import jee.support.util.ResponseUtil;
import jee.support.dto.LimitShowDTO;
import jee.support.dto.SubjectinfoDTO;
import jee.support.service.ISubjectinfoService;
import org.springframework.web.servlet.ModelAndView;


@RestController
@RequestMapping("/api/subjectinfo")
public class SubjectinfoController {
    @Resource(name="subjectinfoService")
    private ISubjectinfoService subjectinfoService;



    @RequestMapping(value = "/getAll",method = RequestMethod.GET)
    public JSONArray getAll()
    {
        List<Subjectinfo> l1=  subjectinfoService.loadModels();

        String arrString=  JSONArray.toJSONString(l1);
        // String arrString= JSONArray.toJSONString(l1);
        JSONArray jsonArray=JSONArray.parseArray(arrString);

        return  jsonArray;
    }
    @RequestMapping(value = "/getAll/{curpage}",method = RequestMethod.GET)
    public JSONArray getAllBypage(@PathVariable("curpage") Integer curpage)
    {
        List<Subjectinfo> l1=  subjectinfoService.loadModels(curpage,10);


        String arrString=  JSONArray.toJSONString(l1);
        // String arrString= JSONArray.toJSONString(l1);
        JSONArray jsonArray=JSONArray.parseArray(arrString);

        return  jsonArray;
    }

//    @RequestMapping(value="/getStu/{currentPage}",method = RequestMethod.GET)
//    @ResponseBody
//    public String  getStu(@RequestParam(value="currentPage",defaultValue="1",required=false)int currentPage, Model model){
//        model.addAttribute("pagemsg", subjectinfoService.findByPage(currentPage));//回显分页数据
//        return "eegDown_iiphci";
//    }

    @RequestMapping(value="/getStu/{currentPage}",method = RequestMethod.GET)
    public ModelAndView index(HttpServletRequest request, HttpServletResponse response,@PathVariable("currentPage") Integer currentPage,Model model){

        ModelAndView modelAndView=new ModelAndView("eegDown_iiphci");
        PageBean<Subjectinfo> l1=  subjectinfoService.findByPage(currentPage);

        String arrString= JSONObject.toJSONStringWithDateFormat(l1,"yyyy-MM-dd HH:mm:ss");
        // String arrString= JSONArray.toJSONString(l1);
        JSONObject jsonArray=JSONObject.parseObject(arrString);

        modelAndView.addObject("jsonArray",jsonArray);

        return modelAndView;
    }

    @RequestMapping(value="/getStuEnglish/{currentPage}",method = RequestMethod.GET)
    public ModelAndView getStuEnglish(HttpServletRequest request, HttpServletResponse response,@PathVariable("currentPage") Integer currentPage,Model model){

        ModelAndView modelAndView=new ModelAndView("eegDown_iiphciEnglish");
        PageBean<Subjectinfo> l1=  subjectinfoService.findByPage(currentPage);

        String arrString= JSONObject.toJSONStringWithDateFormat(l1,"yyyy-MM-dd HH:mm:ss");
        // String arrString= JSONArray.toJSONString(l1);
        JSONObject jsonArray=JSONObject.parseObject(arrString);

        modelAndView.addObject("jsonArray",jsonArray);

        return modelAndView;
    }





    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public ResponseEntity<String> list(
        @Validated
        LimitShowDTO limitShowDTO, BindingResult errors) {
        if(errors.hasErrors())
            return ResponseUtil.getResponseEntityWhenInvalidReqParams();

        Map<String, Object> result = new HashMap<String, Object>();

        List<Map<String, Object>> subjectinfoList = subjectinfoService.loadMaps(null, null, null, null, limitShowDTO.getCurPage(), limitShowDTO.getLimit());
        long count = subjectinfoService.count();

        result.put("rows", subjectinfoList);
        result.put("total", count);

        return ResponseUtil.getResEntityForGetAndJson(result);
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public ResponseEntity<String> show(@PathVariable("id") Integer id) {
        Map<String, Object> subjectinfoModel = subjectinfoService.findMap(id);

        return ResponseUtil.getResEntityForGetAndJson(subjectinfoModel);
    }

    @RequestMapping(value = "", method = RequestMethod.POST)
    public ResponseEntity<String> create(
        @Validated
        SubjectinfoDTO subjectinfoDTO, BindingResult errors) {
        if(errors.hasErrors())
            return ResponseUtil.getResponseEntityWhenInvalidReqParams();

        Subjectinfo subjectinfoModel = subjectinfoDTO.toModel();

        return ResponseUtil.getResEntityForPPP(subjectinfoService.save(subjectinfoModel));
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.PUT)
    public ResponseEntity<String> update(@PathVariable("id") Integer id,
        @Validated
        SubjectinfoDTO subjectinfoDTO, BindingResult errors) {

        Subjectinfo subjectinfoModel = subjectinfoDTO.toModel();
        subjectinfoModel.setId(id);
        return ResponseUtil.getResEntityForPPP(subjectinfoService.update(subjectinfoModel));
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE)
    public ResponseEntity<String> destory(@PathVariable("id") Integer id) {
        return ResponseUtil.getResEntityForDel(subjectinfoService.delete(id));
    }

    @RequestMapping(value = "/deletes", method = RequestMethod.DELETE)
    public ResponseEntity<String> deletes(@RequestParam("primaryKeys") Integer[] primaryKeys) {
        return ResponseUtil.getResEntityForDel(subjectinfoService.batchDelete(primaryKeys));
    }


    @RequestMapping("/listHoutai")
    public String list(
            @RequestParam(value = "page", required = false) String page,
            @RequestParam(value = "rows", required = false) String rows,
            Subjectinfo subjectinfo, HttpServletResponse response) throws Exception {
        Map<String, Object> map = new HashMap<String, Object>();
        if (page != null && rows != null) {
            PageBean2 pageBean = new PageBean2(Integer.parseInt(page),
                    Integer.parseInt(rows));
            map.put("start", pageBean.getStart());
            map.put("size", pageBean.getPageSize());
        }
        if (subjectinfo != null) {
            map.put("subname",
                    StringUtil.formatLike(subjectinfo.getSubname()));
        }
        List<Subjectinfo> list = subjectinfoService.findSubjectinfo(map);
        Long total = subjectinfoService.getTotalSubjectinfo(map);
        JSONObject result = new JSONObject();
        String test= JSONArray.toJSONString(list);
        JSONArray jsonArray = JSONArray.parseArray(test);
        result.put("rows", jsonArray);
        result.put("total", total);
        ResponseUtil2.write(response, result);
       // log.info("request: article/list , map: " + map.toString());
        return null;
    }


    @RequestMapping("/save")
    public String save(Subjectinfo subjectinfo, HttpServletResponse response)
            throws Exception {
        boolean resultTotal;
        if (subjectinfo.getId() == null) {
            //subjectinfo.setArticleCreateDate(DateUtil2.getCurrentDateStr());
            resultTotal = subjectinfoService.save(subjectinfo);
        } else {
            resultTotal = subjectinfoService.update(subjectinfo);
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

    /**
     * 删除
     *
     * @param ids
     * @param response
     * @return
     * @throws Exception
     */
    @RequestMapping("/delete")
    public String delete(@RequestParam(value = "ids") String ids,
                         HttpServletResponse response) throws Exception {
        JSONObject result = new JSONObject();
        String[] idsStr = ids.split(",");
        for (int i = 0; i < idsStr.length; i++) {
            subjectinfoService.delete(Integer.parseInt(idsStr[i]));
        }
        result.put("success", true);
        ResponseUtil2.write(response, result);
        //log.info("request: article/delete , ids: " + ids);
        return null;
    }

}
