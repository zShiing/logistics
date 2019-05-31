package cn.deslak.dao;

import cn.deslak.entity.Material;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author zhang_xin on 2019/05/30.
 */
@Mapper
@Repository
public interface MaterialDao {

    /**
     * 获取所有水泥厂
     * @return
     */
    List<Material> fetchAllMaterial();

    /**
     * 获取所有物流公司
     * @return
     */
    List<String> fetchAllLogistic();

}
