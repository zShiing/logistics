package cn.deslak.service;

import cn.deslak.dao.MaterialDao;
import cn.deslak.vo.JsonResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


/**
 * @author zhang_xin on 2019/05/30.
 */
@Service("materialService")
public class MaterialServiceImpl implements MaterialService {

    @Autowired
    private MaterialDao materialDao;

    @Override
    public JsonResult fetchAllMaterial() {
        JsonResult jsonResult = JsonResult.createSuccess();
        jsonResult.putData("list", materialDao.fetchAllMaterial());
        return jsonResult;
    }

}
