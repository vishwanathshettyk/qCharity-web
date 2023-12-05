package com.quality.charity.web.utils;

public class BaseClass {

    String x = "username";
    public BaseClass(String x)
    {
        this.x = x;
    }
    public String getSomeString(){
        return "not-override";
    }
}
