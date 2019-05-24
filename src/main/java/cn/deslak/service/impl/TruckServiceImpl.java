package cn.deslak.service.impl;

import cn.deslak.dao.TruckDao;
import cn.deslak.entity.Truck;
import cn.deslak.service.TruckService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author zhang_xin on 2019/05/23.
 */
@Service("truckService")
public class TruckServiceImpl implements TruckService {

    @Autowired
    private TruckDao truckDao;

    @Override
    public List<Truck> getAll() {
        return truckDao.gatAll();
    }

}
