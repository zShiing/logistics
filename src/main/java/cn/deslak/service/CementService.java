package cn.deslak.service;

import cn.deslak.entity.Cement;

import java.util.List;

/**
 * @author zhang_xin on 2019/05/27.
 */
public interface CementService extends BaseService{

    /**
     * 获取所有水泥厂信息
     * @return
     */
    List<Cement> fetchAllCement();

}
