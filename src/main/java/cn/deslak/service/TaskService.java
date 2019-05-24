package cn.deslak.service;

import cn.deslak.entity.Task;
import cn.deslak.entity.Truck;
import com.github.pagehelper.PageInfo;

import java.util.List;

/**
 * @author zhang_xin on 2019/05/23.
 */
public interface TaskService extends BaseService{

    /**
     * 获取所有车辆信息
     * @return
     */
    PageInfo<Task> getTaskByPage();


    /**
     * 获取油耗信息
     * @param plateNum
     * @return
     */
    PageInfo<Task> fuel(String plateNum);
}
