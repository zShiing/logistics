package cn.deslak.service;

import cn.deslak.vo.JsonResult;


/**
 * @author zhang_xin on 2019/05/27.
 */
public interface SectionService extends BaseService{

    /**
     * 获取所有标站信息
     * @return
     */
    JsonResult fetchAllSection();

}
