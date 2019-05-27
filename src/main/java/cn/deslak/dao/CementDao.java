package cn.deslak.dao;

import cn.deslak.entity.Cement;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author zhang_xin on 2019/05/27.
 */
@Mapper
@Repository
public interface CementDao {

    /**
     * 获取所有水泥厂
     * @return
     */
    List<Cement> fetchAllCement();

}
