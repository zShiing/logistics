package cn.deslak.dao;

import cn.deslak.entity.Section;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author zhang_xin on 2019/05/27.
 */
@Mapper
@Repository
public interface SectionDao {

    /**
     * 获取所有标站
     * @return
     */
    List<Section> fetchAllSection();

}
