package cn.deslak.service;

import cn.deslak.vo.JsonResult;


/**
 * @author zhang_xin on 2019/05/30.
 */
public interface MaterialService extends BaseService{

    /**
     * 获取所有物资公司信息
     * @return
     */
    JsonResult fetchAllMaterial();

}
