package cn.deslak.service.impl;

import cn.deslak.dao.CementDao;
import cn.deslak.entity.Cement;
import cn.deslak.service.CementService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author zhang_xin on 2019/05/27.
 */
@Service("cementService")
public class CementServiceImpl implements CementService {

    @Autowired
    private CementDao cementDao;

    @Override
    public List<Cement> fetchAllCement() {
        return cementDao.fetchAllCement();
    }

}
