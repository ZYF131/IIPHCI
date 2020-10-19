package jee.support.controller;


import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
//import com.sun.istack.internal.logging.Logger;
import jee.support.model.*;
import jee.support.service.ArticleService;
import jee.support.util.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


@RestController
@RequestMapping("/article")
public class ArticleController {
	@Resource
	private ArticleService articleService;
	private static final long serialVersionUID = 1L;
//	private static final Logger log = Logger.getLogger(ArticleController.class);// 日志文件

	/**
	 * 查找相应的数据集合
	 * 
	 * @param page
	 * @param rows
	 * @param article
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/list")
	public String list(
			@RequestParam(value = "page", required = false) String page,
			@RequestParam(value = "rows", required = false) String rows,
			Article article, HttpServletResponse response) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		if (page != null && rows != null) {
			PageBean2 pageBean = new PageBean2(Integer.parseInt(page),
					Integer.parseInt(rows));
			map.put("start", pageBean.getStart());
			map.put("size", pageBean.getPageSize());
		}
		if (article != null) {
			map.put("articleTitle",
					StringUtil.formatLike(article.getArticleTitle()));
		}
		List<Article> articleList = articleService.findArticle(map);
		Long total = articleService.getTotalArticle(map);
		JSONObject result = new JSONObject();
		String test= JSONArray.toJSONString(articleList);
		JSONArray jsonArray = JSONArray.parseArray(test);
		result.put("rows", jsonArray);
		result.put("total", total);
		ResponseUtil2.write(response, result);
//		log.info("request: article/list , map: " + map.toString());
		return null;
	}

	/**
	 * 保存或修改
	 * 
	 * @param article
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/save")
	public String save(Article article, HttpServletResponse response)
			throws Exception {
		int resultTotal = 0;
		if (article.getId() == null) {
			article.setArticleCreateDate(DateUtil2.getCurrentDateStr());
			resultTotal = articleService.addArticle(article);
		} else {
			resultTotal = articleService.updateArticle(article);
		}
		JSONObject result = new JSONObject();
		if (resultTotal > 0) {
			result.put("success", true);
		} else {
			result.put("success", false);
		}
		ResponseUtil2.write(response, result);
//		log.info("request: article/save , " + article.toString());
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
			articleService.deleteArticle(idsStr[i]);
		}
		result.put("success", true);
		ResponseUtil2.write(response, result);
//		log.info("request: article/delete , ids: " + ids);
		return null;
	}

	/**
	 * 根据id查找
	 * 
	 * @param id
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/findById")
	public JSONObject findById(@RequestParam(value = "id") String id,
			HttpServletResponse response) throws Exception {
		Article article = articleService.findById(id);
		String text= JSONObject.toJSONString(article);
		JSONObject jsonObject = JSONObject.parseObject(text);
//		ResponseUtil2.write(response, jsonObject);
//		log.info("request: article/findById");
		return jsonObject;
	}

	@RequestMapping(value="/toNewsInfo/{id}", method = RequestMethod.GET)
	public ModelAndView toNewsInfo(HttpServletRequest request, HttpServletResponse response,@PathVariable("id") Integer id){


		ModelAndView modelAndView=new ModelAndView("news_iiphci");
		Article article= articleService.findById(id+"");

		modelAndView.addObject("TNews_title",article.getArticleTitle());
		modelAndView.addObject("TNews_datetime", article.getArticleCreateDate());
		modelAndView.addObject("TNews_con",article.getArticleContent());
		//String t= JSONObject.toJSONString(tNews);

		return modelAndView;
	}




	@RequestMapping(value="/infoByid/{id}",method = RequestMethod.GET)
	public ModelAndView infoByid(HttpServletRequest request, HttpServletResponse response, @PathVariable("id") int id){

		ModelAndView modelAndView=new ModelAndView("article");


		modelAndView.addObject("id",id);

		return modelAndView;
	}
}