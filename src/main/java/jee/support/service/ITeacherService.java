package jee.support.service;

import java.util.List;
import java.util.Map;

import jee.support.model.Teacher;

public interface ITeacherService {

    Teacher login(Teacher teacher);
    boolean save(Teacher teacher);

    boolean update(Teacher teacher);

    boolean delete(Integer tId);

    boolean batchDelete(Integer[] primaryKeys);

    List<Teacher> findTeacher(Map<String, Object> map);
    Long getTotalTeacher(Map<String, Object> map);


    Teacher findModel(Integer tId);

    Teacher findModel(Integer tId, String[] parameters);

    Map<String, Object> findMap(Integer tId);

    Map<String, Object> findMap(Integer tId, String[][] parameters);

    List<Teacher> loadModels();

    List<Teacher> loadModels(String condition, Object[] values, String order, String sort, int curPage, int limit);

    List<Teacher> loadModels(String[] parameters, String condition, Object[] values, String order, String sort, int curPage, int limit);

    List<Map<String, Object>> loadMaps();

    List<Map<String, Object>> loadMaps(String condition, Object[] values, String order, String sort, int curPage, int limit);

    List<Map<String, Object>> loadMaps(String[][] parameters, String condition, Object[] values, String order, String sort, int curPage, int limit);

    long count();

    long count(String condition, Object[] values);

    long count(String[] parameters, boolean isDistinct);

    long count(String[] parameters, String condition, Object[] values, boolean isDistinct);
}
