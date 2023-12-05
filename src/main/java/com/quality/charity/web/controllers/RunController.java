package com.quality.charity.web.controllers;

import com.quality.charity.web.FileWriter.WriteFeature;
import com.quality.charity.web.utils.BaseClass;
import io.cucumber.core.cli.Main;
import org.automation.practices.runner.RunCucumber;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class RunController  {

    private final String GLUE = "--glue";
    private final String GLUE_PATH_INTERNAL = "com.quality.charity";
    private final String GLUE_PATH_EXTERNAL = "org.automation.practices";
    private final String PLUGIN = "-p";
    private final String TAGS = "--tags";
    private final String PLUGIN_HTML = "html:src/main/webapp/static/cucumberCli.html";
    private final String FEATURE_PATH = "/features";


    @RequestMapping(value = "/run-tests",method = RequestMethod.POST)
    public String runTests(@RequestParam String feature, @RequestParam String tags,
                           @RequestParam String scenario, Model model)
    {
        RunCucumber runCucumber = new RunCucumber();
        String tag = "@" + tags;
        System.out.println(tag);
        runCucumber.runCucumberTests(GLUE,GLUE_PATH_EXTERNAL,GLUE,GLUE_PATH_INTERNAL,PLUGIN,PLUGIN_HTML,TAGS,tag,FEATURE_PATH);
        model.addAttribute("runId", WriteFeature.getRandomRunID());
        return "runTestResult";
    }
}
