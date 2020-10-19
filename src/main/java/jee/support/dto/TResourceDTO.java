package jee.support.dto;

import jee.support.util.BeanUtil;
import java.util.Date;
import jee.support.model.TResource;
import java.io.Serializable;


public class TResourceDTO implements Serializable {
        
        private static final long serialVersionUID = 1L;
        
        private Integer subjectid;
        
        private String title;
        
        private Date datetime;
        
        private String url;
        
        private String desc;
        
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
        
        public TResource toModel() {
            TResource model = new TResource();
			BeanUtil.convert(this, model);
			return model;
        }
    
}