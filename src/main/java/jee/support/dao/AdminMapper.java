package jee.support.dao;

import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Param;

import jee.support.model.Admin;

public interface AdminMapper {
    int deleteByPrimaryKey(@Param("adminid") Long adminid);

    int deleteByPrimaryKeys(@Param("primaryKeys") Long[] primaryKeys);

    int insert(Admin record);

    int insertSelective(Admin record);

    Admin selectByPrimaryKey(@Param("adminid") Long adminid);

    int updateByPrimaryKeySelective(Admin record);

    int updateByPrimaryKey(Admin record);

    List<Admin> loadModels(@Param("parameters") String parameters, @Param("condition") String condition, @Param("order") String order, @Param("sort") String sort, @Param("offset") int offset, @Param("limit") int limit);

    List<Map<String, Object>> loadMaps(@Param("parameters") String parameters, @Param("condition") String condition, @Param("order") String order, @Param("sort") String sort, @Param("offset") int offset, @Param("limit") int limit);

    long count(@Param("parameters") String parameters, @Param("condition") String condition, @Param("isDistinct") boolean isDistinct);

    Admin findModel(@Param("adminid") Long adminid, @Param("parameters") String parameters);

    Map<String, Object> findMap(@Param("adminid") Long adminid, @Param("parameters") String parameters);
}
