package jee.support.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import jee.support.model.PageBean;
import org.springframework.stereotype.Service;

import jee.support.util.SqlUtil;
import jee.support.dao.SubjectinfoMapper;
import jee.support.model.Subjectinfo;
import jee.support.service.ISubjectinfoService;

@Service
public class SubjectinfoService implements ISubjectinfoService {
    @Resource(name="subjectinfoMapper")
    private SubjectinfoMapper subjectinfoMapper;

    @Override
    public List<Subjectinfo> findSubjectinfo(Map<String, Object> map) {
        return subjectinfoMapper.findSubjectinfo(map);
    }

    @Override
    public Long getTotalSubjectinfo(Map<String, Object> map) {
        return subjectinfoMapper.getTotalSubjectinfo(map);
    }

    @Override
    public boolean save(Subjectinfo subjectinfo) {
        return subjectinfoMapper.insert(subjectinfo) > 0;
    }

    @Override
    public boolean update(Subjectinfo subjectinfo) {
        return subjectinfoMapper.updateByPrimaryKeySelective(subjectinfo) >= 0;
    }

    @Override
    public boolean delete(Integer id) {
        return subjectinfoMapper.deleteByPrimaryKey(id) > 0;
    }

    @Override
    public boolean batchDelete(Integer[] primaryKeys) {
        return subjectinfoMapper.deleteByPrimaryKeys(primaryKeys) > 0;
    }

    @Override
    public Subjectinfo findModel(Integer id) {
        return subjectinfoMapper.selectByPrimaryKey(id);
    }

    @Override
    public Subjectinfo findModel(Integer id, String[] parameters) {
        return subjectinfoMapper.findModel(id, SqlUtil.formatParameters(parameters));
    }

    public Map<String, Object> findMap(Integer id) {
        String[][] parameters = {{"id", "id"}, {"subid", "subid"}, {"enabname", "enabname"}, {"subname", "subname"}, {"email", "email"}, {"tel", "tel"}, {"workplace", "workplace"}, {"birth", "birth"}, {"sex", "sex"}};
        return this.findMap(id, parameters);
    }

    public Map<String, Object> findMap(Integer id, String[][] parameters) {
        return subjectinfoMapper.findMap(id, SqlUtil.formatParametersForAlias(parameters));
    }

    @Override
    public List<Subjectinfo> loadModels() {
        return this.loadModels(null, null, null, null, -1, -1);
    }

    @Override
    public PageBean<Subjectinfo> findByPage(int currentPage) {


            HashMap<String,Object> map = new HashMap<String,Object>();
            PageBean<Subjectinfo> pageBean = new PageBean<Subjectinfo>();

            //封装当前页数
            pageBean.setCurrPage(currentPage);

            //每页显示的数据
            int pageSize=10;
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
            List<Subjectinfo> lists = subjectinfoMapper.findByPage(map);
            pageBean.setLists(lists);

            return pageBean;
    }


    @Override
    public List<Subjectinfo> loadModels(int curPage, int limit) {
        return this.loadModels(null, null, null, null, curPage, limit);
    }

    @Override
    public List<Subjectinfo> loadModels(String condition, Object[] values, String order, String sort, int curPage, int limit) {
        return this.loadModels(null, condition, values, order, sort, curPage, limit);
    }

    @Override
    public List<Subjectinfo> loadModels(String[] parameters, String condition, Object[] values, String order, String sort, int curPage, int limit) {
        return subjectinfoMapper.loadModels(SqlUtil.formatParameters(parameters), SqlUtil.fillCondition(condition, values), order, sort, SqlUtil.getOffset(curPage, limit), limit);
    }

    @Override
    public List<Map<String, Object>> loadMaps() {
        String[][] parameters = {{"id", "id"}, {"subid", "subid"}, {"enabname", "enabname"}, {"subname", "subname"}, {"email", "email"}, {"tel", "tel"}, {"workplace", "workplace"}, {"birth", "birth"}, {"sex", "sex"}};
        return this.loadMaps(parameters, null, null, null, null, -1, -1);
    }

    @Override
    public List<Map<String, Object>> loadMaps(String condition, Object[] values, String order, String sort, int curPage, int limit) {
        String[][] parameters = {{"id", "id"}, {"subid", "subid"}, {"enabname", "enabname"}, {"subname", "subname"}, {"email", "email"}, {"tel", "tel"}, {"workplace", "workplace"}, {"birth", "birth"}, {"sex", "sex"}};
        return this.loadMaps(parameters, condition, values, order, sort, curPage, limit);
    }

    @Override
    public List<Map<String, Object>> loadMaps(String[][] parameters, String condition, Object[] values, String order, String sort, int curPage, int limit) {
        return subjectinfoMapper.loadMaps(SqlUtil.formatParametersForAlias(parameters), SqlUtil.fillCondition(condition, values), order, sort, SqlUtil.getOffset(curPage, limit), limit);
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
        return subjectinfoMapper.count(SqlUtil.formatParameters(parameters), SqlUtil.fillCondition(condition, values), isDistinct);
    }

}
