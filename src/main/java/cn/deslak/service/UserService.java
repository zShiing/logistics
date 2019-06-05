package cn.deslak.service;

import cn.deslak.entity.User;


/**
 * @author zhang_xin on 2019/06/05.
 */
public interface UserService extends BaseService{

    User findById(String id);

    User findByNameNPwd(String name, String password);
}
