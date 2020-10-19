package jee.support.controller;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;

//import com.sun.istack.internal.logging.Logger;
import jee.support.model.PageBean2;
import jee.support.model.Picture;
import jee.support.service.PictureService;
import jee.support.util.DateUtil2;
import jee.support.util.ResponseUtil2;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/picture")
public class PictureController {
	@Resource
	private PictureService pictureService;
	private static final long serialVersionUID = 1L;
//	private static final Logger log = Logger.getLogger(PictureController.class);// 日志文件
	/**
	 * 查找相应的数据集合
	 * 
	 * @param page
	 * @param rows
	 * @param picture
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/list")
	public String list(
			@RequestParam(value = "page", required = false) String page,
			@RequestParam(value = "rows", required = false) String rows,
			Picture picture, HttpServletResponse response) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		if (page != null && rows != null) {
			PageBean2 pageBean = new PageBean2(Integer.parseInt(page),
					Integer.parseInt(rows));
			map.put("start", pageBean.getStart());
			map.put("size", pageBean.getPageSize());
		}
		if (picture != null) {
			map.put("id", picture.getId() + "");
			map.put("type", picture.getType() + "");
			map.put("grade", picture.getGrade() + "");
		}
		List<Picture> pictureList = pictureService.findPicture(map);
		Long total = pictureService.getTotalPicture(map);
		JSONObject result = new JSONObject();
		String text= JSONArray.toJSONString(pictureList);
		JSONArray jsonArray = JSONArray.parseArray(text);
		result.put("rows", jsonArray);
		result.put("total", total);
//		log.info("request: picture/list , map: " + map.toString());
		ResponseUtil2.write(response, result);
		return null;
	}

	/**
	 * 保存或修改
	 * 
	 * @param picture
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/save")
	public String save(Picture picture, HttpServletResponse response)
			throws Exception {
		int resultTotal = 0; 
		if (picture.getId() == null) {
			picture.setTime(DateUtil2.getCurrentDateStr());
			resultTotal = pictureService.addPicture(picture);
		} else {
			System.out.println(picture.getPath());
			resultTotal = pictureService.updatePicture(picture);
		}
		JSONObject result = new JSONObject();
		if (resultTotal > 0) { 
			result.put("success", true);
		} else {
			result.put("success", false);
		}
//		log.info("request: picture/save ,  " + picture.toString());
		ResponseUtil2.write(response, result);
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
			pictureService.deletePicture(idsStr[i]);
		}
		result.put("success", true);
//		log.info("request: picture/delete , ids: " + ids);
		ResponseUtil2.write(response, result);
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
	public String findById(@RequestParam(value = "id") String id,
			HttpServletResponse response) throws Exception {
		Picture picture = pictureService.findById(id);
		String text=JSONObject.toJSONString(picture);
		JSONObject jsonObject = JSONObject.parseObject(text);
//		log.info("request: picture/findById");
		ResponseUtil2.write(response, jsonObject);
		return null;
	}
}