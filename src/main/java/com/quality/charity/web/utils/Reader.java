package com.quality.charity.web.utils;

import java.io.File;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

public class Reader {

    public static List<File> getAllFeatureFiles() {
        List<File> files = null;
        File folder = new File("./features");
        File[] listOfFiles = folder.listFiles();
        if (listOfFiles != null) ;
        files = Arrays.stream(listOfFiles).filter(File::isFile).collect(Collectors.toList());
        return files;
    }
}

