package jee.support.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import jee.support.model.Article;
import org.apache.ibatis.annotations.Param;

import jee.support.model.Subjectinfo;

public interface SubjectinfoMapper {


    /**
     * 返回相应的数据集合
     *
     * @param map
     * @return
     */
    public List<Subjectinfo> findSubjectinfo(Map<String, Object> map);
    public Long getTotalSubjectinfo(Map<String, Object> map);

    int deleteByPrimaryKey(@Param("id") Integer id);

    int deleteByPrimaryKeys(@Param("primaryKeys") Integer[] primaryKeys);

    int insert(Subjectinfo record);

    int insertSelective(Subjectinfo record);

    Subjectinfo selectByPrimaryKey(@Param("id") Integer id);

    int updateByPrimaryKeySelective(Subjectinfo record);

    int updateByPrimaryKey(Subjectinfo record);

    /**
     * 分页操作，调用findByPage limit分页方法
     * @param map
     * @return
     */
    List<Subjectinfo> findByPage(HashMap<String,Object> map);

    List<Subjectinfo> loadModels(@Param("parameters") String parameters, @Param("condition") String condition, @Param("order") String order, @Param("sort") String sort, @Param("offset") int offset, @Param("limit") int limit);

    List<Map<String, Object>> loadMaps(@Param("parameters") String parameters, @Param("condition") String condition, @Param("order") String order, @Param("sort") String sort, @Param("offset") int offset, @Param("limit") int limit);

    long count(@Param("parameters") String parameters, @Param("condition") String condition, @Param("isDistinct") boolean isDistinct);

    Subjectinfo findModel(@Param("id") Integer id, @Param("parameters") String parameters);

    Map<String, Object> findMap(@Param("id") Integer id, @Param("parameters") String parameters);
}
