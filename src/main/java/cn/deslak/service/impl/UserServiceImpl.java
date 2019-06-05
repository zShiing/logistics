package cn.deslak.service.impl;

import cn.deslak.dao.UserDao;
import cn.deslak.entity.User;
import cn.deslak.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;


/**
 * @author zhang_xin on 2019/06/05.
 */
@Service("userService")
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    @Override
    public User findById(String id) {
        User user = userDao.findById(id);
        return user;
    }

    @Override
    public User findByNameNPwd(String name, String password) {
        return userDao.findByNameNPwd(name, DigestUtils.md5DigestAsHex(password.getBytes()));
    }
}
