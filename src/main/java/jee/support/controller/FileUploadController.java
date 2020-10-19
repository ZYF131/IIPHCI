package jee.support.controller;


import com.alibaba.fastjson.JSONObject;
import jee.support.util.ResponseUtil2;
import org.apache.commons.io.FileUtils;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.net.URLEncoder;
import java.util.List;

@Controller
public class FileUploadController {


    @RequestMapping("/fileUpload")
    public String handleFormUpload(@RequestParam("uploadfile")List<MultipartFile> uploadfile,
                                   HttpServletRequest request, HttpServletResponse response) throws Exception {
        if(uploadfile.size()>0)
        {
            String originalFilename="";
            for(MultipartFile file:uploadfile)
            {
                 originalFilename=file.getOriginalFilename();

                //设置上传文件的保存地址目录
                String dirPath=request.getServletContext().getRealPath("/upload/");

                File filePath=new File(dirPath);
                if(!filePath.exists())
                {
                    filePath.mkdirs();
                }
                //model.addAttribute("fileName",originalFilename);

                try
                {
                    file.transferTo(new File(dirPath+originalFilename));

                }catch (Exception e)
                {
                     e.printStackTrace();
                     return "error";
                }
            }
            ResponseUtil2.write(response,"ok");
            return null;
        }else
        {
            return "error";
        }

    }

    @RequestMapping("/download")
    public ResponseEntity<byte[]> fileDownload(HttpServletRequest request,String filename) throws Exception{

        String path=request.getServletContext().getRealPath("/upload/");


        File file=new File(path+filename);

        filename=this.getFilename(request,filename);
        HttpHeaders headers=new HttpHeaders();
        headers.setContentDispositionFormData("attachment",filename);

        headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);

        return new ResponseEntity<byte[]>(FileUtils.readFileToByteArray(file),headers, HttpStatus.OK);




    }

    private String getFilename(HttpServletRequest request,String filename) throws Exception
    {
        String[] IEBrowserKeyWords={"MSIE","Trident","Edge"};
        String userAgent=request.getHeader("User-Agent");

        for(String keyWord:IEBrowserKeyWords)
        {
            if(userAgent.contains(keyWord))
                return URLEncoder.encode(filename,"UTF-8");
        }

        return new String(filename.getBytes("UTF-8"),"ISO-8859-1");

    }

}
