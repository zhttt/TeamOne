package com.jk.service;

import com.jk.bean.wb.Label;
import java.util.List;

public interface LabelService {
    List getLabelByWhere();

    List getLabelByPage(Integer page, Integer rows);

    Label getLabel(Integer id);

    void addbiaoqian(Label labe);

    void updatebiaoqian(Label labe);

    void deletebiaoqian(String ids);
}
