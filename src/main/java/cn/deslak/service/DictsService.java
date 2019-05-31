package cn.deslak.service;

import cn.deslak.vo.JsonResult;


/**
 * @author zhang_xin on 2019/05/28.
 */
public interface DictsService extends BaseService{

    /**
     * 根据表名和字段名获取字典信息
     * @param table
     * @param field
     * @return
     */
    JsonResult fetchDicts(String table, String field);

    /**
     * 特殊需求获取数据字典
     * @return
     */
    JsonResult fetchForSpecialRequired();

}
