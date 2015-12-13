package com.getanydata.search;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Created by pans on 15/6/23.
 */
@Controller
@RequestMapping("/search")
public class SearchController {
    private static final Logger log = LoggerFactory.getLogger(SearchController.class);

    @RequestMapping(method = RequestMethod.GET)
    public String search(@RequestParam("q") String q){
        return "search/list";
    }
}
