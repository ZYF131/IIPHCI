package jee.support.dto;

import jee.support.util.BeanUtil;
import java.util.Date;
import jee.support.model.Teacher;
import java.io.Serializable;


public class TeacherDTO implements Serializable {
        
        private static final long serialVersionUID = 1L;
        
        private String tname;
        
        private String tsex;
        
        private Date tbirthday;
        
        private String learningexperience;
        
        private String jobtitle;
        
        private String email;
        
        private String researchdirection;
        
        private String resume;
        
        private String repersentativepapers;
        
        private String subjectname;
        
        private String patent;
        
        private String awarded;
        
        private String researchingproject;
        
        public String getTname() {
            return this.tname;
        }
        
        public void setTname(String tname) {
            this.tname = tname;
        }
        
        public String getTsex() {
            return this.tsex;
        }
        
        public void setTsex(String tsex) {
            this.tsex = tsex;
        }
        
        public Date getTbirthday() {
            return this.tbirthday;
        }
        
        public void setTbirthday(Date tbirthday) {
            this.tbirthday = tbirthday;
        }
        
        public String getLearningexperience() {
            return this.learningexperience;
        }
        
        public void setLearningexperience(String learningexperience) {
            this.learningexperience = learningexperience;
        }
        
        public String getJobtitle() {
            return this.jobtitle;
        }
        
        public void setJobtitle(String jobtitle) {
            this.jobtitle = jobtitle;
        }
        
        public String getEmail() {
            return this.email;
        }
        
        public void setEmail(String email) {
            this.email = email;
        }
        
        public String getResearchdirection() {
            return this.researchdirection;
        }
        
        public void setResearchdirection(String researchdirection) {
            this.researchdirection = researchdirection;
        }
        
        public String getResume() {
            return this.resume;
        }
        
        public void setResume(String resume) {
            this.resume = resume;
        }
        
        public String getRepersentativepapers() {
            return this.repersentativepapers;
        }
        
        public void setRepersentativepapers(String repersentativepapers) {
            this.repersentativepapers = repersentativepapers;
        }
        
        public String getSubjectname() {
            return this.subjectname;
        }
        
        public void setSubjectname(String subjectname) {
            this.subjectname = subjectname;
        }
        
        public String getPatent() {
            return this.patent;
        }
        
        public void setPatent(String patent) {
            this.patent = patent;
        }
        
        public String getAwarded() {
            return this.awarded;
        }
        
        public void setAwarded(String awarded) {
            this.awarded = awarded;
        }
        
        public String getResearchingproject() {
            return this.researchingproject;
        }
        
        public void setResearchingproject(String researchingproject) {
            this.researchingproject = researchingproject;
        }
        
        public Teacher toModel() {
            Teacher model = new Teacher();
			BeanUtil.convert(this, model);
			return model;
        }
    
}