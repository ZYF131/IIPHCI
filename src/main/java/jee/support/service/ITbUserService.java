package jee.support.service;

import java.util.List;
import java.util.Map;

import jee.support.model.Subjectinfo;
import jee.support.model.TbUser;

public interface ITbUserService {

     List<TbUser> findTbUser(Map<String, Object> map);
     Long getTotalTbUser(Map<String, Object> map);

     TbUser login(TbUser user);
    boolean save(TbUser tbUser);

    boolean update(TbUser tbUser);

    boolean delete(Integer id);

    boolean batchDelete(Integer[] primaryKeys);

    TbUser findModel(Integer id);

    TbUser findModel(Integer id, String[] parameters);

    Map<String, Object> findMap(Integer id);

    Map<String, Object> findMap(Integer id, String[][] parameters);

    List<TbUser> loadModels();

    List<TbUser> loadModels(String condition, Object[] values, String order, String sort, int curPage, int limit);

    List<TbUser> loadModels(String[] parameters, String condition, Object[] values, String order, String sort, int curPage, int limit);

    List<Map<String, Object>> loadMaps();

    List<Map<String, Object>> loadMaps(String condition, Object[] values, String order, String sort, int curPage, int limit);

    List<Map<String, Object>> loadMaps(String[][] parameters, String condition, Object[] values, String order, String sort, int curPage, int limit);

    long count();

    long count(String condition, Object[] values);

    long count(String[] parameters, boolean isDistinct);

    long count(String[] parameters, String condition, Object[] values, boolean isDistinct);
}
