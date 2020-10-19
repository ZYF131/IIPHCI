package jee.support.service;

import java.util.List;
import java.util.Map;

import jee.support.model.Admin;

public interface IAdminService {
    boolean save(Admin admin);

    boolean update(Admin admin);

    boolean delete(Long adminid);

    boolean batchDelete(Long[] primaryKeys);

    Admin findModel(Long adminid);

    Admin findModel(Long adminid, String[] parameters);

    Map<String, Object> findMap(Long adminid);

    Map<String, Object> findMap(Long adminid, String[][] parameters);

    List<Admin> loadModels();

    List<Admin> loadModels(String condition, Object[] values, String order, String sort, int curPage, int limit);

    List<Admin> loadModels(String[] parameters, String condition, Object[] values, String order, String sort, int curPage, int limit);

    List<Map<String, Object>> loadMaps();

    List<Map<String, Object>> loadMaps(String condition, Object[] values, String order, String sort, int curPage, int limit);

    List<Map<String, Object>> loadMaps(String[][] parameters, String condition, Object[] values, String order, String sort, int curPage, int limit);

    long count();

    long count(String condition, Object[] values);

    long count(String[] parameters, boolean isDistinct);

    long count(String[] parameters, String condition, Object[] values, boolean isDistinct);
}
