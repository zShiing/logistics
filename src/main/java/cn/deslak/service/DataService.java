package cn.deslak.service;


/**
 * @author zhang_xin on 2019/05/23.
 */
public interface DataService extends BaseService{

    /**
     * 查询油耗
     * @param plateNum
     * @param from
     * @param to
     * @return
     */
    String fuel(String plateNum, String from, String to);

    /**
     * 查询历史轨迹
     * @param plateNum
     * @param from
     * @param to
     * @param interval
     * @return
     */
    String orbitHistory(String plateNum, String from, String to, String interval);

}
