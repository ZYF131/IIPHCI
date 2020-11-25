package jee.support.dao;

import java.util.List;
import java.util.Map;

import jee.support.model.Subjectinfo;
import jee.support.model.TbUser;
import org.apache.ibatis.annotations.Param;

import jee.support.model.Teacher;

public interface TeacherMapper {

    public List<Teacher> findTeacher(Map<String, Object> map);
    public Long getTotalTeacher(Map<String, Object> map);


    Teacher login(Teacher user);

    int deleteByPrimaryKey(@Param("tId") Integer tId);

    int deleteByPrimaryKeys(@Param("primaryKeys") Integer[] primaryKeys);

    int insert(Teacher record);

    int insertSelective(Teacher record);

    Teacher selectByPrimaryKey(@Param("tId") Integer tId);

    int updateByPrimaryKeySelective(Teacher record);

    int updateByPrimaryKey(Teacher record);

    List<Teacher> loadModels(@Param("parameters") String parameters, @Param("condition") String condition, @Param("order") String order, @Param("sort") String sort, @Param("offset") int offset, @Param("limit") int limit);

    List<Map<String, Object>> loadMaps(@Param("parameters") String parameters, @Param("condition") String condition, @Param("order") String order, @Param("sort") String sort, @Param("offset") int offset, @Param("limit") int limit);

    long count(@Param("parameters") String parameters, @Param("condition") String condition, @Param("isDistinct") boolean isDistinct);

    Teacher findModel(@Param("tId") Integer tId, @Param("parameters") String parameters);

    Map<String, Object> findMap(@Param("tId") Integer tId, @Param("parameters") String parameters);
}
