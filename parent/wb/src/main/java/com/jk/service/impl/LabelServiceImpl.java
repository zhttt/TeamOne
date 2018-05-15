package com.jk.service.impl;

import com.jk.bean.wb.Label;
import com.jk.dao.LabelMapper;
import com.jk.service.LabelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LabelServiceImpl implements LabelService{

    @Autowired
    private LabelMapper labelMapper;


    public List getLabelByWhere() {
        return labelMapper.getLabelByWhere();
    }

    public List getLabelByPage(Integer page, Integer rows) {
        Integer begin = (page-1) * rows;
        Integer end = rows;
        return labelMapper.getLabelByPage(begin,end);
    }

    public Label getLabel(Integer id) {
        return labelMapper.getLabel(id);
    }

    public void addbiaoqian(Label labe) {
        labelMapper.addbiaoqian(labe);
    }

    public void updatebiaoqian(Label labe) {
        labelMapper.updatebiaoqian(labe);
    }

    public void deletebiaoqian(String ids) {
        labelMapper.deletebiaoqian(ids);
    }
}
