package cn.deslak.service.impl;

import cn.deslak.dao.CementDao;
import cn.deslak.service.CementService;
import cn.deslak.vo.JsonResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


/**
 * @author zhang_xin on 2019/05/27.
 */
@Service("cementService")
public class CementServiceImpl implements CementService {

    @Autowired
    private CementDao cementDao;

    @Override
    public JsonResult fetchAllCement() {
        JsonResult jsonResult = JsonResult.createSuccess();
        jsonResult.putData("list", cementDao.fetchAllCement());
        return jsonResult;
    }

}
