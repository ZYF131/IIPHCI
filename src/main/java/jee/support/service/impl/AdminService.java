package jee.support.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import jee.support.dao.AdminMapper;
import jee.support.util.SqlUtil;
import jee.support.service.IAdminService;
import jee.support.model.Admin;

@Service
public class AdminService implements IAdminService {
    @Resource(name="adminMapper")
    private AdminMapper adminMapper;

    @Override
    public boolean save(Admin admin) {
        return adminMapper.insert(admin) > 0;
    }

    @Override
    public boolean update(Admin admin) {
        return adminMapper.updateByPrimaryKeySelective(admin) >= 0;
    }

    @Override
    public boolean delete(Long adminid) {
        return adminMapper.deleteByPrimaryKey(adminid) > 0;
    }

    @Override
    public boolean batchDelete(Long[] primaryKeys) {
        return adminMapper.deleteByPrimaryKeys(primaryKeys) > 0;
    }

    @Override
    public Admin findModel(Long adminid) {
        return adminMapper.selectByPrimaryKey(adminid);
    }

    @Override
    public Admin findModel(Long adminid, String[] parameters) {
        return adminMapper.findModel(adminid, SqlUtil.formatParameters(parameters));
    }

    public Map<String, Object> findMap(Long adminid) {
        String[][] parameters = {{"adminId", "adminid"}, {"adminname", "adminname"}, {"password", "password"}, {"accountNonExpired", "accountnonexpired"}, {" accountNonLocked", " accountnonlocked"}, {"enabled", "enabled"}, {"email", "email"}};
        return this.findMap(adminid, parameters);
    }

    public Map<String, Object> findMap(Long adminid, String[][] parameters) {
        return adminMapper.findMap(adminid, SqlUtil.formatParametersForAlias(parameters));
    }

    @Override
    public List<Admin> loadModels() {
        return this.loadModels(null, null, null, null, -1, -1);
    }

    @Override
    public List<Admin> loadModels(String condition, Object[] values, String order, String sort, int curPage, int limit) {
        return this.loadModels(null, condition, values, order, sort, curPage, limit);
    }

    @Override
    public List<Admin> loadModels(String[] parameters, String condition, Object[] values, String order, String sort, int curPage, int limit) {
        return adminMapper.loadModels(SqlUtil.formatParameters(parameters), SqlUtil.fillCondition(condition, values), order, sort, SqlUtil.getOffset(curPage, limit), limit);
    }

    @Override
    public List<Map<String, Object>> loadMaps() {
        String[][] parameters = {{"adminId", "adminid"}, {"adminname", "adminname"}, {"password", "password"}, {"accountNonExpired", "accountnonexpired"}, {" accountNonLocked", " accountnonlocked"}, {"enabled", "enabled"}, {"email", "email"}};
        return this.loadMaps(parameters, null, null, null, null, -1, -1);
    }

    @Override
    public List<Map<String, Object>> loadMaps(String condition, Object[] values, String order, String sort, int curPage, int limit) {
        String[][] parameters = {{"adminId", "adminid"}, {"adminname", "adminname"}, {"password", "password"}, {"accountNonExpired", "accountnonexpired"}, {" accountNonLocked", " accountnonlocked"}, {"enabled", "enabled"}, {"email", "email"}};
        return this.loadMaps(parameters, condition, values, order, sort, curPage, limit);
    }

    @Override
    public List<Map<String, Object>> loadMaps(String[][] parameters, String condition, Object[] values, String order, String sort, int curPage, int limit) {
        return adminMapper.loadMaps(SqlUtil.formatParametersForAlias(parameters), SqlUtil.fillCondition(condition, values), order, sort, SqlUtil.getOffset(curPage, limit), limit);
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
        return adminMapper.count(SqlUtil.formatParameters(parameters), SqlUtil.fillCondition(condition, values), isDistinct);
    }

}
