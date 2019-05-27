package cn.deslak.service.impl;

import cn.deslak.dao.SectionDao;
import cn.deslak.entity.Section;
import cn.deslak.service.SectionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author zhang_xin on 2019/05/27.
 */
@Service("sectionService")
public class SectionServiceImpl implements SectionService {

    @Autowired
    private SectionDao sectionDao;

    @Override
    public List<Section> fetchAllSection() {
        return sectionDao.fetchAllSection();
    }

}
