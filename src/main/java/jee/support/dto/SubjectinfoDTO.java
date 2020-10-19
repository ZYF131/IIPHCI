package jee.support.dto;

import jee.support.util.BeanUtil;
import jee.support.model.Subjectinfo;
import java.io.Serializable;


public class SubjectinfoDTO implements Serializable {
        
        private static final long serialVersionUID = 1L;
        
        private Integer subid;
        
        private String enabname;
        
        private String subname;
        
        private String email;
        
        private String tel;
        
        private String workplace;
        
        private String birth;
        
        private String sex;
        
        public Integer getSubid() {
            return this.subid;
        }
        
        public void setSubid(Integer subid) {
            this.subid = subid;
        }
        
        public String getEnabname() {
            return this.enabname;
        }
        
        public void setEnabname(String enabname) {
            this.enabname = enabname;
        }
        
        public String getSubname() {
            return this.subname;
        }
        
        public void setSubname(String subname) {
            this.subname = subname;
        }
        
        public String getEmail() {
            return this.email;
        }
        
        public void setEmail(String email) {
            this.email = email;
        }
        
        public String getTel() {
            return this.tel;
        }
        
        public void setTel(String tel) {
            this.tel = tel;
        }
        
        public String getWorkplace() {
            return this.workplace;
        }
        
        public void setWorkplace(String workplace) {
            this.workplace = workplace;
        }
        
        public String getBirth() {
            return this.birth;
        }
        
        public void setBirth(String birth) {
            this.birth = birth;
        }
        
        public String getSex() {
            return this.sex;
        }
        
        public void setSex(String sex) {
            this.sex = sex;
        }
        
        public Subjectinfo toModel() {
            Subjectinfo model = new Subjectinfo();
			BeanUtil.convert(this, model);
			return model;
        }
    
}