package cn.deslak.service.impl;

import cn.deslak.dao.TruckDao;
import cn.deslak.service.TruckService;
import cn.deslak.vo.JsonResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


/**
 * @author zhang_xin on 2019/05/23.
 */
@Service("truckService")
public class TruckServiceImpl implements TruckService {

    @Autowired
    private TruckDao truckDao;

    @Override
    public JsonResult fetchAllTrucks() {
        JsonResult jsonResult = JsonResult.createSuccess();
        jsonResult.putData("list", truckDao.fetchAllTrucks());
        return jsonResult;
    }

}
