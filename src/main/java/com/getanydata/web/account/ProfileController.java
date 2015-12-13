/*******************************************************************************
 * Copyright (c) 2005, 2014 springside.github.io
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 *******************************************************************************/
package com.getanydata.web.account;

import javax.validation.Valid;

import com.getanydata.entity.Project;
import com.getanydata.service.account.ShiroDbRealm;
import com.getanydata.service.project.ProjectService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import com.getanydata.entity.User;
import com.getanydata.service.account.AccountService;
import com.getanydata.service.account.ShiroDbRealm.ShiroUser;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/**
 * 用户修改自己资料的Controller.
 * 
 * @author harden
 */
@Controller
public class ProfileController {

	@Autowired
	private AccountService accountService;
	@Autowired
	private ProjectService projectService;

	//实现类似github的url风格
	@RequestMapping(value = "/{selfPathName}",method = RequestMethod.GET)
	public String profileOrLogin(@PathVariable("selfPathName") String selfPathName,Model model) {
		if("login".equals(selfPathName)){
			Subject subject = SecurityUtils.getSubject();
			if(subject.isAuthenticated()){
				String name = ((ShiroDbRealm.ShiroUser)subject.getPrincipal()).getSelfPathName();
				return "redirect:/"+name;
			}
			return "account/login";
		}
		model.addAttribute("selfPathName",selfPathName);
		User user = accountService.getUserBySelfPathName(selfPathName);
		if (user==null){
			return "account/userNotFound";
		}
		Set<Project> projects =  user.getProjects();
		model.addAttribute("user", user);
		model.addAttribute("projects",projects);//贡献的项目
		Map<String,Object> searchParams = new HashMap<String, Object>();
		searchParams.put("EQ_createUser",user.getId());
		searchParams.put("EQ_isDelete",0);
		Page<Project> createUserProjectPage =  projectService.getProject(searchParams, 1, 5, "id");
		model.addAttribute("createUserProjectPage",createUserProjectPage.getContent());//自己创建的项目
		return "account/profile";
	}

	@RequestMapping(value = "/update/{username}",method = RequestMethod.POST)
	public String update(@Valid @ModelAttribute("user") User user,@PathVariable("username")String username) {
		ShiroUser shirouser = (ShiroUser) SecurityUtils.getSubject().getPrincipal();
		if(!shirouser.getName().equals(username)){
			return "error/403";
		}
		accountService.updateUser(user);
		updateCurrentUserName(user.getName());
		return "redirect:/"+username;
	}

//	/**
//	 * 所有RequestMapping方法调用前的Model准备方法, 实现Struts2 Preparable二次部分绑定的效果,先根据form的id从数据库查出User对象,再把Form提交的内容绑定到该对象上。
//	 * 因为仅update()方法的form中有id属性，因此仅在update时实际执行.
//	 */
//	@ModelAttribute
//	public void getUser(@RequestParam(value = "id", defaultValue = "-1") Long id, Model model) {
//		if (id != -1) {
//			model.addAttribute("user", accountService.getUser(id));
//		}
//	}

	/**
	 * 取出Shiro中的当前用户Id.
	 */
	private Long getCurrentUserId() {
		ShiroUser user = (ShiroUser) SecurityUtils.getSubject().getPrincipal();
		return user.id;
	}

	/**
	 * 更新Shiro中当前用户的用户名.
	 */
	private void updateCurrentUserName(String userName) {
		ShiroUser user = (ShiroUser) SecurityUtils.getSubject().getPrincipal();
		user.name = userName;
	}
}
