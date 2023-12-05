package com.quality.charity.web.FileWriter;

import org.yaml.snakeyaml.DumperOptions;
import org.yaml.snakeyaml.Yaml;

import java.io.FileWriter;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

public class WriteElementRepo {

    public static void testDumpWriter(String element , String page) throws IOException {
        Map<String, Object> data = new HashMap<String, Object>();
        data.put(page,"");


        Yaml yaml = new Yaml();
        FileWriter writer = new FileWriter("src/test/resources/elements/controllers.yml");
        yaml.dump(data,writer);
        data.put("element",element);
        DumperOptions options = new DumperOptions();
        options.setIndent(2);
        options.setDefaultFlowStyle(DumperOptions.FlowStyle.BLOCK);
        yaml.dump(data,writer);
    }
}
