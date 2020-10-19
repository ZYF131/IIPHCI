package jee.support.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import jee.support.model.Article;
import jee.support.model.PageBean;
import jee.support.model.Subjectinfo;

public interface ISubjectinfoService {


    /**
     * 返回相应的数据集合
     *
     * @param map
     * @return
     */
    public List<Subjectinfo> findSubjectinfo(Map<String, Object> map);
    public Long getTotalSubjectinfo(Map<String, Object> map);

    boolean save(Subjectinfo subjectinfo);

    boolean update(Subjectinfo subjectinfo);

    boolean delete(Integer id);

    boolean batchDelete(Integer[] primaryKeys);

    Subjectinfo findModel(Integer id);

    Subjectinfo findModel(Integer id, String[] parameters);

    Map<String, Object> findMap(Integer id);

    Map<String, Object> findMap(Integer id, String[][] parameters);

    List<Subjectinfo> loadModels();

    PageBean<Subjectinfo> findByPage(int currentPage);


    public List<Subjectinfo> loadModels(int curPage, int limit);

    List<Subjectinfo> loadModels(String condition, Object[] values, String order, String sort, int curPage, int limit);

    List<Subjectinfo> loadModels(String[] parameters, String condition, Object[] values, String order, String sort, int curPage, int limit);

    List<Map<String, Object>> loadMaps();

    List<Map<String, Object>> loadMaps(String condition, Object[] values, String order, String sort, int curPage, int limit);

    List<Map<String, Object>> loadMaps(String[][] parameters, String condition, Object[] values, String order, String sort, int curPage, int limit);

    long count();

    long count(String condition, Object[] values);

    long count(String[] parameters, boolean isDistinct);

    long count(String[] parameters, String condition, Object[] values, boolean isDistinct);
}
