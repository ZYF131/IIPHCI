package jee.support.controller;


import com.baidu.ueditor.ActionEnter;
import org.omg.CORBA_2_3.portable.OutputStream;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.*;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

@Controller
@RequestMapping("/upload")
public class UploadController {

   // Logger logger = LoggerFactory.getLogger(UploadController.class);

    @RequestMapping(value="/enter",method= RequestMethod.GET)
    public void enterUE(HttpServletRequest request, HttpServletResponse response) {
        try {
            request.setCharacterEncoding( "utf-8" );
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        response.setHeader("Content-Type" , "text/html");
        String rootPath = request.getSession().getServletContext().getRealPath("/");
        try {
            String exec = new ActionEnter(request, rootPath,"").exec();
            PrintWriter writer = response.getWriter();
            writer.write(exec);
            writer.flush();
            writer.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


    /**
     * ueditor上传图片的方法
     * @param upfile 上传图片的文件
     * @param request
     * @param response
     * @return
     */
    @RequestMapping(value="/uploadImage",method=RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> uploadNewsImg(@RequestParam(value="upfile",required=false) MultipartFile upfile,HttpServletRequest request,HttpServletResponse response) {
        Date date = new Date();
        String upLoadPath = "\\upload\\image\\"+new SimpleDateFormat("yyyy\\MM\\").format(date);
        String path =   upLoadPath;
        //图片后缀
        String last = upfile.getOriginalFilename().substring(upfile.getOriginalFilename().lastIndexOf("."), upfile.getOriginalFilename().length());

        String uuid = UUID.randomUUID().toString().replace("-", "");
        String fileName = uuid+last;

        File fileT = new File(path,fileName);
        if(!fileT.exists()){
            fileT.mkdirs();
        }
        Map<String, Object> result = new HashMap<String,Object>();
        try {
            upfile.transferTo(fileT);
        } catch (IllegalStateException e) {
           // logger.error("富文本编辑器图片上传失败，参数异常："+e);
        } catch (IOException e1) {
            //logger.error("富文本编辑器图片上传失败io异常："+e1);
        }
        result.put("state", "SUCCESS");
        result.put("url",  path);
        result.put("original", "");
        result.put("type", last);
        result.put("size", upfile.getSize());
        result.put("title", fileName);
        return result;
    }


    /**
     * ueditor文件上传方法
     * @param upfile
     * @param request
     * @param response
     * @return
     */
    @RequestMapping(value="/uploadfile",method=RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> uploadFile(@RequestParam(value="upfile",required=false) MultipartFile upfile, HttpServletRequest request, HttpServletResponse response) {
        Date date = new Date();
        String upLoadPath = "\\upload\\file\\"+new SimpleDateFormat("yyyy\\MM\\").format(date);
        String path =  upLoadPath;
        //附件后缀
        String last = upfile.getOriginalFilename().substring(upfile.getOriginalFilename().lastIndexOf("."), upfile.getOriginalFilename().length());

        String uuid = UUID.randomUUID().toString().replace("-", "");
        String fileName = uuid+last;

        File fileT = new File(path,fileName);
        if(!fileT.exists()){
            fileT.mkdirs();
        }
        Map<String, Object> result = new HashMap<String,Object>();
        try {
            upfile.transferTo(fileT);
        } catch (IllegalStateException e) {
          //  logger.error("富文本编辑器文件上传失败，参数异常："+e);
        } catch (IOException e1) {
          //  logger.error("富文本编辑器文件上传失败io异常："+e1);
        }

        HttpSession session = request.getSession();
        session.setAttribute("imgName",fileName);

        result.put("state", "SUCCESS");
        result.put("url", upLoadPath.replace("\\", "/")+fileName);
        result.put("original", "");
        result.put("type", last);
        result.put("size", upfile.getSize());
        result.put("title", fileName);
        return result;
    }


}
