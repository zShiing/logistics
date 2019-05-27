package cn.deslak.service;

import cn.deslak.vo.JsonResult;

/**
 * @author zhang_xin on 2019/05/23.
 */
public interface TaskService extends BaseService{

    /**
     * 分页获取所有车辆信息
     * @return
     */
    JsonResult fetchTaskByPage(Integer page, Integer limit);


    /**
     * 分页获取油耗信息
     * @param plateNum
     * @return
     */
    JsonResult fuel(Integer page, Integer limit, String plateNum);
}
