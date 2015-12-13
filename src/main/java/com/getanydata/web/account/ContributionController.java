package com.getanydata.web.account;

import com.getanydata.entity.Project;
import com.getanydata.entity.User;
import com.getanydata.service.account.AccountService;
import com.getanydata.service.account.ShiroDbRealm;
import com.getanydata.service.project.ProjectService;
import org.apache.shiro.SecurityUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by pans on 15/7/12.
 */
@Controller
public class ContributionController {

    private static final Logger log = LoggerFactory.getLogger(ContributionController.class);

    @Autowired
    private ProjectService projectService;

    @Autowired
    private AccountService accountService;

    @RequestMapping(value = "/{selfPathName}/{projectName}",method = RequestMethod.GET)
    public String contribution(@PathVariable("selfPathName") String selfPathName,
                               @PathVariable("projectName") String projectName,
                               Model model){
        Project project = projectService.findByContrbution(selfPathName, projectName);
        User user = accountService.getUser(project.getCreateUser());
        model.addAttribute("project",project);
        model.addAttribute("user",user);
        String[] flags = project.getFlags().split("#");
        model.addAttribute("flags",flags);
        model.addAttribute("projectName",projectName);
        return "account/contribution";
    }


    /**
     * 取出Shiro中的当前用户Id.
     */
    private Long getCurrentUserId() {
        ShiroDbRealm.ShiroUser user = (ShiroDbRealm.ShiroUser) SecurityUtils.getSubject().getPrincipal();
        return user.id;
    }
}
