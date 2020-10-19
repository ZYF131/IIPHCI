package jee.support.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import jee.support.service.ITbUserService;
import jee.support.util.SqlUtil;
import jee.support.model.TbUser;
import jee.support.dao.TbUserMapper;

@Service
public class TbUserService implements ITbUserService {
    @Resource(name="tbUserMapper")
    private TbUserMapper tbUserMapper;

    @Override
    public List<TbUser> findTbUser(Map<String, Object> map) {
        return tbUserMapper.findTbUser(map);
    }

    @Override
    public Long getTotalTbUser(Map<String, Object> map) {
        return tbUserMapper.getTotalTbUser(map);
    }

    @Override
    public TbUser login(TbUser user) {
        return tbUserMapper.login(user);
    }

    @Override
    public boolean save(TbUser tbUser) {
        return tbUserMapper.insert(tbUser) > 0;
    }

    @Override
    public boolean update(TbUser tbUser) {
        return tbUserMapper.updateByPrimaryKeySelective(tbUser) >= 0;
    }

    @Override
    public boolean delete(Integer id) {
        return tbUserMapper.deleteByPrimaryKey(id) > 0;
    }

    @Override
    public boolean batchDelete(Integer[] primaryKeys) {
        return tbUserMapper.deleteByPrimaryKeys(primaryKeys) > 0;
    }

    @Override
    public TbUser findModel(Integer id) {
        return tbUserMapper.selectByPrimaryKey(id);
    }

    @Override
    public TbUser findModel(Integer id, String[] parameters) {
        return tbUserMapper.findModel(id, SqlUtil.formatParameters(parameters));
    }

    public Map<String, Object> findMap(Integer id) {
        String[][] parameters = {{"id", "id"}, {"usernc", "usernc"}, {"truename", "truename"}, {"email", "email"}, {"tel", "tel"}, {"workplace", "workplace"}, {"regtime", "regtime"}, {"sex", "sex"}, {"userpwd", "userpwd"}};
        return this.findMap(id, parameters);
    }

    public Map<String, Object> findMap(Integer id, String[][] parameters) {
        return tbUserMapper.findMap(id, SqlUtil.formatParametersForAlias(parameters));
    }

    @Override
    public List<TbUser> loadModels() {
        return this.loadModels(null, null, null, null, -1, -1);
    }

    @Override
    public List<TbUser> loadModels(String condition, Object[] values, String order, String sort, int curPage, int limit) {
        return this.loadModels(null, condition, values, order, sort, curPage, limit);
    }

    @Override
    public List<TbUser> loadModels(String[] parameters, String condition, Object[] values, String order, String sort, int curPage, int limit) {
        return tbUserMapper.loadModels(SqlUtil.formatParameters(parameters), SqlUtil.fillCondition(condition, values), order, sort, SqlUtil.getOffset(curPage, limit), limit);
    }

    @Override
    public List<Map<String, Object>> loadMaps() {
        String[][] parameters = {{"id", "id"}, {"usernc", "usernc"}, {"truename", "truename"}, {"email", "email"}, {"tel", "tel"}, {"workplace", "workplace"}, {"regtime", "regtime"}, {"sex", "sex"}, {"userpwd", "userpwd"}};
        return this.loadMaps(parameters, null, null, null, null, -1, -1);
    }

    @Override
    public List<Map<String, Object>> loadMaps(String condition, Object[] values, String order, String sort, int curPage, int limit) {
        String[][] parameters = {{"id", "id"}, {"usernc", "usernc"}, {"truename", "truename"}, {"email", "email"}, {"tel", "tel"}, {"workplace", "workplace"}, {"regtime", "regtime"}, {"sex", "sex"}, {"userpwd", "userpwd"}};
        return this.loadMaps(parameters, condition, values, order, sort, curPage, limit);
    }

    @Override
    public List<Map<String, Object>> loadMaps(String[][] parameters, String condition, Object[] values, String order, String sort, int curPage, int limit) {
        return tbUserMapper.loadMaps(SqlUtil.formatParametersForAlias(parameters), SqlUtil.fillCondition(condition, values), order, sort, SqlUtil.getOffset(curPage, limit), limit);
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
        return tbUserMapper.count(SqlUtil.formatParameters(parameters), SqlUtil.fillCondition(condition, values), isDistinct);
    }

}
