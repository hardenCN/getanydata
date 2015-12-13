package com.getanydata.web.account;

import com.getanydata.service.account.ShiroDbRealm;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by pans on 15/6/22.
 */
@Controller
@RequestMapping("/")
public class IndexController {

    @RequestMapping(method = RequestMethod.GET)
    public String index(){
        Subject subject = SecurityUtils.getSubject();
        if(subject.isAuthenticated()){
            String name = ((ShiroDbRealm.ShiroUser)subject.getPrincipal()).getSelfPathName();
            return "redirect:/"+name;
        }
        return "index";
    }
}
