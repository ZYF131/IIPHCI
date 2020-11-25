package jee.support.controller;


import jee.support.vo.PublicMsg;
import org.apache.commons.io.FilenameUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by admin on 2019/4/13.
 */
@Controller
public class UeditorController {

    /**
     * 替换ueditor jsp/controller.jsp文件
     * 由于controller.jsp + lib下面的ueditor-1.1.2.jar的作用是读取config.json文件，所以这里直接将config.json文件以字符串的形式返回给了前端
     * @param request
     * @return
     */
    @RequestMapping(value = "/ueditor")
    @ResponseBody
    public String ueditor(HttpServletRequest request) {
        return PublicMsg.UEDITOR_CONFIG;
    }

    private static final String STORE_PATH = "/image/upload/";
   // private static final String SERVER_PATH = "http://localhost:8081/iiphci";
    private static final String SERVER_PATH = "http://iiphci.ahu.edu.cn:8081/iiphci";

    @RequestMapping(value = "/imgUpload")
    @ResponseBody
    public Map<String, Object> imgUpload(HttpServletRequest request, HttpSession session) {
        Map<String, Object> rs = new HashMap<String, Object>();
        MultipartHttpServletRequest mReq = null;
        MultipartFile file = null;
        String fileName = "";
        String originalFileName = "";

        try {
            mReq = (MultipartHttpServletRequest) request;
            // 从config.json中取得上传文件的ID "imageFieldName": "upfile", /* 提交的图片表单名称 */
            file = mReq.getFile("upfile");

            if (!file.isEmpty()) {
                // 取得文件的原始文件名称
                originalFileName = file.getOriginalFilename();
                fileName = originalFileName;

                // 设置上传目录
                String ext = (FilenameUtils.getExtension(file.getOriginalFilename())).toLowerCase();
                String storePath = "";
                if ("jpg".equals(ext) || "png".equals(ext) || "jpeg".equals(ext) || "bmp".equals(ext)) {
                    storePath = STORE_PATH;
                } else {
                    storePath = STORE_PATH;
                }




                //获取服务器根目录
                File path = new File("");
                // 编辑上传目录，使其生效
                File uploadPath = new File(session.getServletContext().getRealPath("/"),storePath);

                //获取上传的图片具体路径
                File targetFile = new File(uploadPath, fileName);

                //获取父目录
                File pfile = new File(uploadPath.getAbsolutePath());

                //判断如果目录不存在，先创建
                if(!pfile.exists())pfile.mkdirs();

                // 文件上传
                file.transferTo(targetFile);

                rs.put("state", "SUCCESS"); // UEDITOR的规则:不为SUCCESS则显示state的内容
                rs.put("url",SERVER_PATH + STORE_PATH + fileName); //能访问到你现在图片的路径
                rs.put("title", originalFileName);
                rs.put("original", originalFileName);
            }
        } catch (Exception e) {
            e.printStackTrace();
            rs.put("state", "文件上传失败!"); //在此处写上错误提示信息，这样当错误的时候就会显示此信息
            rs.put("url", "");
            rs.put("title", "");
            rs.put("original", "");
        }
        return rs;

    }
}
