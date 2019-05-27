package cn.deslak.service;

import cn.deslak.entity.Section;

import java.util.List;

/**
 * @author zhang_xin on 2019/05/27.
 */
public interface SectionService extends BaseService{

    /**
     * 获取所有标站信息
     * @return
     */
    List<Section> fetchAllSection();

}
