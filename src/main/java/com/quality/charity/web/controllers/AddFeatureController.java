package com.quality.charity.web.controllers;

import com.quality.charity.web.FileWriter.WriteElementRepo;
import com.quality.charity.web.FileWriter.WriteFeature;
import com.quality.charity.web.utils.Reader;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.io.File;

@Controller
public class AddFeatureController {

    @RequestMapping(value = "/addFeatures", method = RequestMethod.POST)
    public String write(@RequestParam String action, @RequestParam String elementName,
                        @RequestParam String element, Model model) throws Throwable {
        String step = WriteFeature.createStep(action,elementName);
        String scenarioID = WriteFeature.getRandomScenarioID();
        String scenario = "Scenario: " + scenarioID;
        String tag = "@" + scenarioID;
        String[] x = new String[]{tag,scenario,step};
        WriteFeature.writeFeatureFile(x);
        WriteElementRepo.testDumpWriter(element,"editCart");
        String str = "Steps Added as below: ";
        model.addAttribute("title", str);
        model.addAttribute("step", WriteFeature.step);
        return "addSteps";
    }


    @RequestMapping(value = "/getFeatures", method = RequestMethod.GET)
    public String getFeatures(Model model) throws Throwable {
        Object files = Reader.getAllFeatureFiles();
        model.addAttribute("files", files);
        return "existingFeature";
    }
}
