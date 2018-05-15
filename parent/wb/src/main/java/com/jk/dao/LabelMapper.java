package com.jk.dao;

import com.jk.bean.wb.Label;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface LabelMapper {
    List getLabelByWhere();

    List getLabelByPage(@Param("begin") Integer begin, @Param("end")Integer end);

    Label getLabel(@Param("id")Integer id);

    void addbiaoqian(Label labe);

    void updatebiaoqian(Label labe);

    void deletebiaoqian(@Param("ids")String ids);
}
