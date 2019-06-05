package cn.deslak.dao;

import cn.deslak.entity.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

/**
 * @author zhang_xin on 2019/06/05.
 */
@Mapper
@Repository
public interface UserDao {

    /**
     * 根据ID找用户
     * @param id
     * @return
     */
    User findById(@Param("id") String id);

    /**
     * 根据用户名和密码查询用户
     * @param name
     * @param password
     * @return
     */
    User findByNameNPwd(@Param("name") String name, @Param("password") String password);

}
