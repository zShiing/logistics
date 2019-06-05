package cn.deslak.service.impl;

import cn.deslak.dao.MotorcadeDao;
import cn.deslak.service.MotorcadeService;
import cn.deslak.vo.JsonResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author zhang_xin on 2019/05/27.
 */
@Service("motorcadeService")
public class MotorcadeServiceImpl implements MotorcadeService {

    @Autowired
    private MotorcadeDao motorcadeDao;

    @Override
    public JsonResult fetchAllMotorcade() {
        JsonResult jsonResult = JsonResult.createSuccess();
        jsonResult.putData("list", motorcadeDao.fetchAllMotorcade());
        return jsonResult;
    }
}
