package cn.deslak.service.impl;

import cn.deslak.dao.SectionDao;
import cn.deslak.service.SectionService;
import cn.deslak.vo.JsonResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


/**
 * @author zhang_xin on 2019/05/27.
 */
@Service("sectionService")
public class SectionServiceImpl implements SectionService {

    @Autowired
    private SectionDao sectionDao;

    @Override
    public JsonResult fetchAllSection() {
        JsonResult jsonResult = JsonResult.createSuccess();
        jsonResult.putData("list", sectionDao.fetchAllSection());
        return jsonResult;
    }

}
