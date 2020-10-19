package jee.support.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestParam;

import jee.support.util.ResponseUtil;
import jee.support.service.IAdminService;
import jee.support.model.Admin;
import jee.support.dto.AdminDTO;
import jee.support.dto.LimitShowDTO;


@RestController
@RequestMapping("/api/admin")
public class AdminController {
    @Resource(name="adminService")
    private IAdminService adminService;

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public ResponseEntity<String> list(
        @Validated
        LimitShowDTO limitShowDTO, BindingResult errors) {
        if(errors.hasErrors())
            return ResponseUtil.getResponseEntityWhenInvalidReqParams();

        Map<String, Object> result = new HashMap<String, Object>();

        List<Map<String, Object>> adminList = adminService.loadMaps(null, null, null, null, limitShowDTO.getCurPage(), limitShowDTO.getLimit());
        long count = adminService.count();

        result.put("rows", adminList);
        result.put("total", count);

        return ResponseUtil.getResEntityForGetAndJson(result);
    }

    @RequestMapping(value = "/{adminid}", method = RequestMethod.GET)
    public ResponseEntity<String> show(@PathVariable("adminid") Long adminid) {
        Map<String, Object> adminModel = adminService.findMap(adminid);

        return ResponseUtil.getResEntityForGetAndJson(adminModel);
    }

    @RequestMapping(value = "", method = RequestMethod.POST)
    public ResponseEntity<String> create(
        @Validated
        AdminDTO adminDTO, BindingResult errors) {
        if(errors.hasErrors())
            return ResponseUtil.getResponseEntityWhenInvalidReqParams();

        Admin adminModel = adminDTO.toModel();

        return ResponseUtil.getResEntityForPPP(adminService.save(adminModel));
    }

    @RequestMapping(value = "/{adminid}", method = RequestMethod.PUT)
    public ResponseEntity<String> update(@PathVariable("adminid") Long adminid,
        @Validated
        AdminDTO adminDTO, BindingResult errors) {

        Admin adminModel = adminDTO.toModel();
        adminModel.setAdminid(adminid);
        return ResponseUtil.getResEntityForPPP(adminService.update(adminModel));
    }

    @RequestMapping(value = "/{adminid}", method = RequestMethod.DELETE)
    public ResponseEntity<String> destory(@PathVariable("adminid") Long adminid) {
        return ResponseUtil.getResEntityForDel(adminService.delete(adminid));
    }

    @RequestMapping(value = "/deletes", method = RequestMethod.DELETE)
    public ResponseEntity<String> deletes(@RequestParam("primaryKeys") Long[] primaryKeys) {
        return ResponseUtil.getResEntityForDel(adminService.batchDelete(primaryKeys));
    }
}
