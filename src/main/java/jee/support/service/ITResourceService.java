package jee.support.service;

import java.util.List;
import java.util.Map;

import jee.support.model.PageBean;
import jee.support.model.Subjectinfo;
import jee.support.model.TResource;
import jee.support.model.TbUser;

public interface ITResourceService {

    List<TResource> findTResource(Map<String, Object> map);
    Long getTotalfindTResource(Map<String, Object> map);

    boolean save(TResource tResource);

    boolean update(TResource tResource);

    boolean delete(Integer id);

    boolean batchDelete(Integer[] primaryKeys);

    TResource findModel(Integer id);

    TResource findModel(Integer id, String[] parameters);

    Map<String, Object> findMap(Integer id);

    Map<String, Object> findMap(Integer id, String[][] parameters);

    List<TResource> loadModels();


    PageBean<TResource> findByPage(int currentPage);

    PageBean<TResource> findByPage(String id,int currentPage);

    List<TResource> loadModels(int curPage, int limit);

    List<TResource> loadModels(String condition);

    List<TResource> loadModels(String condition,int curPage, int limit);

//    List<TResource> loadModels(String condition, Object[] values);

    List<TResource> loadModels(String condition, Object[] values, String order, String sort, int curPage, int limit);

    List<TResource> loadModels(String[] parameters, String condition, Object[] values, String order, String sort, int curPage, int limit);

    List<Map<String, Object>> loadMaps();

    List<Map<String, Object>> loadMaps(String condition, Object[] values, String order, String sort, int curPage, int limit);

    List<Map<String, Object>> loadMaps(String[][] parameters, String condition, Object[] values, String order, String sort, int curPage, int limit);

    long count();

    long count(String condition, Object[] values);

    long count(String[] parameters, boolean isDistinct);

    long count(String[] parameters, String condition, Object[] values, boolean isDistinct);
}
