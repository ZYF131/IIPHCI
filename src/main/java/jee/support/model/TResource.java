package jee.support.model;

import java.util.Date;
import java.io.Serializable;

import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;


@Data
public class TResource implements Serializable {
        
        private static final long serialVersionUID = 1L;
        
        private Integer id;
        
        private Integer subjectid;
        
        private String title;

        @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
        private Date datetime;
        
        private String url;
        
        private String desc;
        
        public Integer getId() {
            return this.id;
        }
        
        public void setId(Integer id) {
            this.id = id;
        }
        
        public Integer getSubjectid() {
            return this.subjectid;
        }
        
        public void setSubjectid(Integer subjectid) {
            this.subjectid = subjectid;
        }
        
        public String getTitle() {
            return this.title;
        }
        
        public void setTitle(String title) {
            this.title = title;
        }
        
        public Date getDatetime() {
            return this.datetime;
        }
        
        public void setDatetime(Date datetime) {
            this.datetime = datetime;
        }
        
        public String getUrl() {
            return this.url;
        }
        
        public void setUrl(String url) {
            this.url = url;
        }
        
        public String getDesc() {
            return this.desc;
        }
        
        public void setDesc(String desc) {
            this.desc = desc;
        }
    
}