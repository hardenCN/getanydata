package com.getanydata.web.q;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by pans on 15/7/12.
 */
@Controller
@RequestMapping("/q")
public class Q {
    @RequestMapping(value = "/{qTitle}",method = RequestMethod.GET)
    public String q(@PathVariable("qTitle") String qTitle,Model model){
        model.addAttribute("qTitle",qTitle);
        return "q/qDetail";
    }
}
