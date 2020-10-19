package jee.support.dto;

import jee.support.util.BeanUtil;
import jee.support.model.Admin;
import java.io.Serializable;


public class AdminDTO implements Serializable {
        
        private static final long serialVersionUID = 1L;
        
        private String adminname;
        
        private String password;
        
        private Boolean accountnonexpired;
        
        private Boolean  accountnonlocked;
        
        private Boolean enabled;
        
        private String email;
        
        public String getAdminname() {
            return this.adminname;
        }
        
        public void setAdminname(String adminname) {
            this.adminname = adminname;
        }
        
        public String getPassword() {
            return this.password;
        }
        
        public void setPassword(String password) {
            this.password = password;
        }
        
        public Boolean getAccountnonexpired() {
            return this.accountnonexpired;
        }
        
        public void setAccountnonexpired(Boolean accountnonexpired) {
            this.accountnonexpired = accountnonexpired;
        }
        
//        public Boolean get accountnonlocked() {
//            return this. accountnonlocked;
//        }
//
//        public void set accountnonlocked(Boolean  accountnonlocked) {
//            this. accountnonlocked =  accountnonlocked;
//        }
        
        public Boolean getEnabled() {
            return this.enabled;
        }
        
        public void setEnabled(Boolean enabled) {
            this.enabled = enabled;
        }
        
        public String getEmail() {
            return this.email;
        }
        
        public void setEmail(String email) {
            this.email = email;
        }
        
        public Admin toModel() {
            Admin model = new Admin();
			BeanUtil.convert(this, model);
			return model;
        }
    
}