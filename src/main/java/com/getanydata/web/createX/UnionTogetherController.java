package com.getanydata.web.createX;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by pans on 15/7/27.
 */
@Controller
public class UnionTogetherController {
    @RequestMapping(value = "/union",method = RequestMethod.GET)
    public String createUnion(){
        return "createX/unionTogether";
    }
}
