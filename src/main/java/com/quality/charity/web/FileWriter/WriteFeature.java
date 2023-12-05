package com.quality.charity.web.FileWriter;

import java.io.FileWriter;
import java.io.IOException;
import java.util.Random;

public class WriteFeature {

    public  static String step;
    public static void writeFeatureFile(String[] steps){
        try {
            String[] x = {"Scenario:Test something", "Given home_page page is opened","When clicks on getStarted button","Then get_started page is opened"};

            FileWriter myWriter = new FileWriter("./features/application.feature",true);
            myWriter.write("\n");
            for (String y: steps) {
                myWriter.write("\n");
                myWriter.write(y);
                step = y;
            }
            myWriter.close();
            System.out.println("Successfully wrote to the file.");
        } catch (IOException e) {
            System.out.println("An error occurred.");
            e.printStackTrace();
        }
    }

    public static String createStep(String action, String elementName)
    {
        String x = "Given " + action +" on " + elementName;
        return x;
    }

    public static String getRandomScenarioID()
    {
        Random random = new Random();
        String x = String.valueOf(random.nextInt(10));
        String y= "LTIMOTF";
        return y.concat(x);
    }

    public static String getRandomRunID()
    {
        int number = 01234567;
        Random random = new Random();
        String x = String.valueOf(random.nextInt(number));
        String y= "LTIMRUNID";
        return y.concat(x);
    }
}
