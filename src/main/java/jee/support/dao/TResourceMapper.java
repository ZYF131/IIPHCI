package jee.support.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import jee.support.model.Subjectinfo;
import jee.support.model.TbUser;
import org.apache.ibatis.annotations.Param;

import jee.support.model.TResource;

import javax.persistence.criteria.CriteriaBuilder;

public interface TResourceMapper {


    public List<TResource> findTResource(Map<String, Object> map);
    public Long getTotalfindTResource(Map<String, Object> map);

    int deleteByPrimaryKey(@Param("id") Integer id);

    int deleteByPrimaryKeys(@Param("primaryKeys") Integer[] primaryKeys);

    int insert(TResource record);

    int insertSelective(TResource record);

    TResource selectByPrimaryKey(@Param("id") Integer id);

    int updateByPrimaryKeySelective(TResource record);

    int updateByPrimaryKey(TResource record);

    List<TResource> findByPage(@Param("condition") String condition, @Param("offset") Integer offset, @Param("limit") Integer limit);

    List<TResource> loadModels(@Param("parameters") String parameters, @Param("condition") String condition, @Param("order") String order, @Param("sort") String sort, @Param("offset") int offset, @Param("limit") int limit);

    List<Map<String, Object>> loadMaps(@Param("parameters") String parameters, @Param("condition") String condition, @Param("order") String order, @Param("sort") String sort, @Param("offset") int offset, @Param("limit") int limit);

    long count(@Param("parameters") String parameters, @Param("condition") String condition, @Param("isDistinct") boolean isDistinct);

    TResource findModel(@Param("id") Integer id, @Param("parameters") String parameters);

    Map<String, Object> findMap(@Param("id") Integer id, @Param("parameters") String parameters);
}
