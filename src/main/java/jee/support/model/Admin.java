package jee.support.model;

import java.io.Serializable;

import lombok.Data;




@Data
public class Admin implements Serializable {
        
        private static final long serialVersionUID = 1L;
        
        private Long adminid;
        
        private String adminname;
        
        private String password;
        
        private Boolean accountnonexpired;
        
        private Boolean  accountnonlocked;
        
        private Boolean enabled;
        
        private String email;
        
        public Long getAdminid() {
            return this.adminid;
        }
        
        public void setAdminid(Long adminid) {
            this.adminid = adminid;
        }
        
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
    
}