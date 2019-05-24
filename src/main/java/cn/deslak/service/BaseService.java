package cn.deslak.service;

import org.springframework.transaction.annotation.Transactional;

/**
 * @author zhang_xin on 2019/05/23.
 */
@Transactional(rollbackFor = Exception.class)
public interface BaseService {
}
