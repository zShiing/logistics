package cn.deslak.service.impl;

import cn.deslak.dao.DisctDao;
import cn.deslak.service.DictsService;
import cn.deslak.vo.JsonResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


/**
 * @author zhang_xin on 2019/05/28.
 */
@Service("dictsService")
public class DictsServiceImpl implements DictsService {

    @Autowired
    private DisctDao disctDao;

    @Override
    public JsonResult fetchDicts(String table, String field) {
        JsonResult jsonResult = JsonResult.createSuccess();
        jsonResult.putData("list", disctDao.fetchDicts(table, field));
        return jsonResult;
    }

}
