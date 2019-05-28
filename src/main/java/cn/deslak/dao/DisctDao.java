package cn.deslak.dao;

import cn.deslak.entity.Dicts;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author zhang_xin on 2019/05/28.
 */
@Mapper
@Repository
public interface DisctDao {

    /**
     * 根据表名和字段名获取字典信息
     * @param table
     * @param field
     * @return
     */
    List<Dicts> fetchDicts(@Param("table") String table, @Param("field") String field);

}
