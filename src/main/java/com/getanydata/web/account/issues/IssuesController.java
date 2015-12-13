package com.getanydata.web.account.issues;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by pans on 15/7/25.
 */
@Controller
public class IssuesController {

    @RequestMapping(value = "/{username}/{contributionName}/issues",method = RequestMethod.GET)
    public String listIssuesByContributionProject(@PathVariable("username")String username,
                                                  @PathVariable("contributionName")String contributionName,
                                                  Model model){
        return "account/issues/projectIssues";
    }
}
