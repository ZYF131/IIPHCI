package jee.support.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import jee.support.model.PageBean;
import jee.support.model.Subjectinfo;
import org.springframework.stereotype.Service;

import jee.support.util.SqlUtil;
import jee.support.model.TResource;
import jee.support.dao.TResourceMapper;
import jee.support.service.ITResourceService;

@Service
public class TResourceService implements ITResourceService {
    @Resource
    private TResourceMapper tResourceMapper;

    @Override
    public List<TResource> findTResource(Map<String, Object> map) {
        return tResourceMapper.findTResource(map);
    }

    @Override
    public Long getTotalfindTResource(Map<String, Object> map) {
        return tResourceMapper.getTotalfindTResource(map);
    }

    @Override
    public boolean save(TResource tResource) {
        return tResourceMapper.insert(tResource) > 0;
    }

    @Override
    public boolean update(TResource tResource) {
        return tResourceMapper.updateByPrimaryKeySelective(tResource) >= 0;
    }

    @Override
    public boolean delete(Integer id) {
        return tResourceMapper.deleteByPrimaryKey(id) > 0;
    }

    @Override
    public boolean batchDelete(Integer[] primaryKeys) {
        return tResourceMapper.deleteByPrimaryKeys(primaryKeys) > 0;
    }

    @Override
    public TResource findModel(Integer id) {
        return tResourceMapper.selectByPrimaryKey(id);
    }

    @Override
    public TResource findModel(Integer id, String[] parameters) {
        return tResourceMapper.findModel(id, SqlUtil.formatParameters(parameters));
    }

    public Map<String, Object> findMap(Integer id) {
        String[][] parameters = {{"id", "id"}, {"subjectid", "subjectid"}, {"title", "title"}, {"datetime", "datetime"}, {"url", "url"}, {"desc", "desc"}};
        return this.findMap(id, parameters);
    }

    public Map<String, Object> findMap(Integer id, String[][] parameters) {
        return tResourceMapper.findMap(id, SqlUtil.formatParametersForAlias(parameters));
    }

    @Override
    public List<TResource> loadModels() {
        return this.loadModels(null, null, null, null, -1, -1);
    }

    @Override
    public PageBean<TResource> findByPage(int currentPage) {
        HashMap<String,Object> map = new HashMap<String,Object>();
        PageBean<TResource> pageBean = new PageBean<TResource>();

        //封装当前页数
        pageBean.setCurrPage(currentPage);

        //每页显示的数据
        int pageSize=5;
        pageBean.setPageSize(pageSize);

        //封装总记录数
        int totalCount = this.loadModels().size();
        pageBean.setTotalCount(totalCount);

        //封装总页数
        double tc = totalCount;
        Double num =Math.ceil(tc/pageSize);//向上取整
        pageBean.setTotalPage(num.intValue());

        map.put("start",(currentPage-1)*pageSize);
        map.put("size", pageBean.getPageSize());
        //封装每页显示的数据
        List<TResource> lists = tResourceMapper.findByPage(null,SqlUtil.getOffset(currentPage, 5), 5);
        pageBean.setLists(lists);

        return pageBean;
    }

    @Override
    public PageBean<TResource> findByPage(String id,int currentPage) {
        HashMap<String,Object> map = new HashMap<String,Object>();
        PageBean<TResource> pageBean = new PageBean<TResource>();

        //封装当前页数
        pageBean.setCurrPage(currentPage);

        //每页显示的数据
        int pageSize=5;
        pageBean.setPageSize(pageSize);

        //封装总记录数
        int totalCount = this.loadModels(id).size();
        pageBean.setTotalCount(totalCount);

        //封装总页数
        double tc = totalCount;
        Double num =Math.ceil(tc/pageSize);//向上取整
        pageBean.setTotalPage(num.intValue());

        map.put("start",(currentPage-1)*pageSize);
        map.put("size", pageBean.getPageSize());
        //封装每页显示的数据
        List<TResource> lists = tResourceMapper.findByPage(id,SqlUtil.getOffset(currentPage, 5), 5);
        pageBean.setLists(lists);

        return pageBean;
    }

    @Override
    public List<TResource> loadModels(String condition) {
         return tResourceMapper.loadModels(null, condition,  null, null, -1, -1);
    }

    @Override
    public List<TResource> loadModels(String condition, int curPage, int limit) {
        return tResourceMapper.loadModels(null, condition,  null, null, curPage, limit);
    }

    @Override
    public List<TResource> loadModels(int curPage, int limit) {
        return this.loadModels(null, null, null, null, curPage, limit);
    }

    @Override
    public List<TResource> loadModels(String condition, Object[] values, String order, String sort, int curPage, int limit) {
        return this.loadModels(null, condition, values, order, sort, curPage, limit);
    }

    @Override
    public List<TResource> loadModels(String[] parameters, String condition, Object[] values, String order, String sort, int curPage, int limit) {
        return tResourceMapper.loadModels(SqlUtil.formatParameters(parameters), SqlUtil.fillCondition(condition, values), order, sort, SqlUtil.getOffset(curPage, limit), limit);
    }

    @Override
    public List<Map<String, Object>> loadMaps() {
        String[][] parameters = {{"id", "id"}, {"subjectid", "subjectid"}, {"title", "title"}, {"datetime", "datetime"}, {"url", "url"}, {"desc", "desc"}};
        return this.loadMaps(parameters, null, null, null, null, -1, -1);
    }

    @Override
    public List<Map<String, Object>> loadMaps(String condition, Object[] values, String order, String sort, int curPage, int limit) {
        String[][] parameters = {{"id", "id"}, {"subjectid", "subjectid"}, {"title", "title"}, {"datetime", "datetime"}, {"url", "url"}, {"desc", "desc"}};
        return this.loadMaps(parameters, condition, values, order, sort, curPage, limit);
    }

    @Override
    public List<Map<String, Object>> loadMaps(String[][] parameters, String condition, Object[] values, String order, String sort, int curPage, int limit) {
        return tResourceMapper.loadMaps(SqlUtil.formatParametersForAlias(parameters), SqlUtil.fillCondition(condition, values), order, sort, SqlUtil.getOffset(curPage, limit), limit);
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
        return tResourceMapper.count(SqlUtil.formatParameters(parameters), SqlUtil.fillCondition(condition, values), isDistinct);
    }

}
