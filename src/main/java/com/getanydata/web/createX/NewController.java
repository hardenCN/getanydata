package com.getanydata.web.createX;

import com.getanydata.annotations.GetAnyDataSecurity;
import com.getanydata.entity.Project;
import com.getanydata.entity.User;
import com.getanydata.repository.ProjectDao;
import com.getanydata.service.account.AccountService;
import com.getanydata.service.account.ShiroDbRealm;
import com.getanydata.service.project.ProjectService;
import com.getanydata.util.Constans;
import org.apache.shiro.SecurityUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.validation.Valid;
import java.util.HashSet;
import java.util.Set;

/**
 * Created by pans on 15/7/27.
 */
@Controller
@GetAnyDataSecurity
public class NewController {
    private static final Logger logger = LoggerFactory.getLogger(NewController.class);
    @Autowired
    private ProjectService projectService;
    @Autowired
    private ProjectDao projectDao;
    @Autowired
    private AccountService accountService;

    @RequestMapping(value = "/new",method = RequestMethod.GET)
    public String createApi(Model model){
        model.addAttribute("project",new Project());
        model.addAttribute("user", accountService.getUser(getCurrentUserId()));
        return "createX/createApi";
    }

    @RequestMapping(value = "/new",method = RequestMethod.POST)
    public String createApi(@Valid Project project,RedirectAttributes redirectAttributes){
        Long userId = getCurrentUserId();
        projectService.createProject(project,userId);
        redirectAttributes.addFlashAttribute("message","创建项目成功!<br/>警告:项目中没有有效数据记录，3天后将会被注销!");
        return "redirect:createData?project="+project.getId();
    }

    @RequestMapping(value = "/createData",method = RequestMethod.GET)
    public String createData(@RequestParam("project")Long project,Model model){
        Project pro = projectDao.findOne(project);
        Long userId = pro.getCreateUser();
        if (!userId.equals(getCurrentUserId())){
            return "error/403";
        }
        User user = accountService.getUser(userId);
        String[] flags = pro.getFlags().split("#");
        model.addAttribute("flags",flags);
        model.addAttribute("project",pro);
        model.addAttribute("user",user);
        return "createX/createData";
    }

    /**
     * 取出Shiro中的当前用户Id.
     */
    private Long getCurrentUserId() {
        ShiroDbRealm.ShiroUser user = (ShiroDbRealm.ShiroUser) SecurityUtils.getSubject().getPrincipal();
        return user.id;
    }
}

