package jee.support.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import jee.support.util.SqlUtil;
import jee.support.service.ITeacherService;
import jee.support.model.Teacher;
import jee.support.dao.TeacherMapper;

@Service
public class TeacherService implements ITeacherService {
    @Resource(name="teacherMapper")
    private TeacherMapper teacherMapper;

    @Override
    public Teacher login(Teacher teacher) {
        return teacherMapper.login(teacher);
    }

    @Override
    public boolean save(Teacher teacher) {
        return teacherMapper.insert(teacher) > 0;
    }

    @Override
    public boolean update(Teacher teacher) {
        return teacherMapper.updateByPrimaryKeySelective(teacher) >= 0;
    }

    @Override
    public boolean delete(Integer tId) {
        return teacherMapper.deleteByPrimaryKey(tId) > 0;
    }

    @Override
    public boolean batchDelete(Integer[] primaryKeys) {
        return teacherMapper.deleteByPrimaryKeys(primaryKeys) > 0;
    }

    @Override
    public List<Teacher> findTeacher(Map<String, Object> map) {
        return teacherMapper.findTeacher(map);
    }

    @Override
    public Long getTotalTeacher(Map<String, Object> map) {
        return teacherMapper.getTotalTeacher(map);
    }

    @Override
    public Teacher findModel(Integer tId) {
        return teacherMapper.selectByPrimaryKey(tId);
    }

    @Override
    public Teacher findModel(Integer tId, String[] parameters) {
        return teacherMapper.findModel(tId, SqlUtil.formatParameters(parameters));
    }

    public Map<String, Object> findMap(Integer tId) {
        String[][] parameters = {{"t_id", "tId"}, {"tname", "tname"}, {"tsex", "tsex"}, {"tbirthday", "tbirthday"}, {"learningExperience", "learningexperience"}, {"jobtitle", "jobtitle"}, {"email", "email"}, {"researchDirection", "researchdirection"}, {"resume", "resume"}, {"repersentativePapers", "repersentativepapers"}, {"subjectName", "subjectname"}, {"patent", "patent"}, {"awarded", "awarded"}, {"researchingProject", "researchingproject"}};
        return this.findMap(tId, parameters);
    }

    public Map<String, Object> findMap(Integer tId, String[][] parameters) {
        return teacherMapper.findMap(tId, SqlUtil.formatParametersForAlias(parameters));
    }

    @Override
    public List<Teacher> loadModels() {
        return this.loadModels(null, null, null, null, -1, -1);
    }

    @Override
    public List<Teacher> loadModels(String condition, Object[] values, String order, String sort, int curPage, int limit) {
        return this.loadModels(null, condition, values, order, sort, curPage, limit);
    }

    @Override
    public List<Teacher> loadModels(String[] parameters, String condition, Object[] values, String order, String sort, int curPage, int limit) {
        return teacherMapper.loadModels(SqlUtil.formatParameters(parameters), SqlUtil.fillCondition(condition, values), order, sort, SqlUtil.getOffset(curPage, limit), limit);
    }

    @Override
    public List<Map<String, Object>> loadMaps() {
        String[][] parameters = {{"t_id", "tId"}, {"tname", "tname"}, {"tsex", "tsex"}, {"tbirthday", "tbirthday"}, {"learningExperience", "learningexperience"}, {"jobtitle", "jobtitle"}, {"email", "email"}, {"researchDirection", "researchdirection"}, {"resume", "resume"}, {"repersentativePapers", "repersentativepapers"}, {"subjectName", "subjectname"}, {"patent", "patent"}, {"awarded", "awarded"}, {"researchingProject", "researchingproject"}};
        return this.loadMaps(parameters, null, null, null, null, -1, -1);
    }

    @Override
    public List<Map<String, Object>> loadMaps(String condition, Object[] values, String order, String sort, int curPage, int limit) {
        String[][] parameters = {{"t_id", "tId"}, {"tname", "tname"}, {"tsex", "tsex"}, {"tbirthday", "tbirthday"}, {"learningExperience", "learningexperience"}, {"jobtitle", "jobtitle"}, {"email", "email"}, {"researchDirection", "researchdirection"}, {"resume", "resume"}, {"repersentativePapers", "repersentativepapers"}, {"subjectName", "subjectname"}, {"patent", "patent"}, {"awarded", "awarded"}, {"researchingProject", "researchingproject"}};
        return this.loadMaps(parameters, condition, values, order, sort, curPage, limit);
    }

    @Override
    public List<Map<String, Object>> loadMaps(String[][] parameters, String condition, Object[] values, String order, String sort, int curPage, int limit) {
        return teacherMapper.loadMaps(SqlUtil.formatParametersForAlias(parameters), SqlUtil.fillCondition(condition, values), order, sort, SqlUtil.getOffset(curPage, limit), limit);
    }

    @Override
    public long count() {
        return this.count(null, false);
    }

    @Override
    public long count(String condition, Object[] values) {
        return this.count(null, condition, values, false);
    }

    @Override
    public long count(String[] parameters, boolean isDistinct) {
        return this.count(parameters, null, null, isDistinct);
    }

    @Override
    public long count(String[] parameters, String condition, Object[] values, boolean isDistinct) {
        return teacherMapper.count(SqlUtil.formatParameters(parameters), SqlUtil.fillCondition(condition, values), isDistinct);
    }

}
