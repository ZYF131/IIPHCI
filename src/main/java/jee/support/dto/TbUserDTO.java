package jee.support.dto;

import jee.support.util.BeanUtil;
import java.util.Date;
import jee.support.model.TbUser;
import java.io.Serializable;


public class TbUserDTO implements Serializable {
        
        private static final long serialVersionUID = 1L;
        
        private String usernc;
        
        private String truename;
        
        private String email;
        
        private String tel;
        
        private String workplace;
        
        private Date regtime;
        
        private String sex;
        
        private String userpwd;
        
        public String getUsernc() {
            return this.usernc;
        }
        
        public void setUsernc(String usernc) {
            this.usernc = usernc;
        }
        
        public String getTruename() {
            return this.truename;
        }
        
        public void setTruename(String truename) {
            this.truename = truename;
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
        
        public Date getRegtime() {
            return this.regtime;
        }
        
        public void setRegtime(Date regtime) {
            this.regtime = regtime;
        }
        
        public String getSex() {
            return this.sex;
        }
        
        public void setSex(String sex) {
            this.sex = sex;
        }
        
        public String getUserpwd() {
            return this.userpwd;
        }
        
        public void setUserpwd(String userpwd) {
            this.userpwd = userpwd;
        }
        
        public TbUser toModel() {
            TbUser model = new TbUser();
			BeanUtil.convert(this, model);
			return model;
        }
    
}