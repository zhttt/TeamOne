package com.jk.controller.cjb;


import com.jk.bean.cjb.CjbDA;
import com.jk.service.CjbShouService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("cjbshouController")
public class CjbShouController {
    @Autowired
    private CjbShouService cjbShouService;

    @RequestMapping("queryshou")
    public String queryshou( Model mo) {
        List<CjbDA> da = cjbShouService.queryshou();
        mo.addAttribute("da",da);
        return "cjb/shouye";
    }


}
