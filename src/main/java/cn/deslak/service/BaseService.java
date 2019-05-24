package cn.deslak.service;

import org.springframework.transaction.annotation.Transactional;

@Transactional(rollbackFor = Exception.class)
public interface BaseService {
}
