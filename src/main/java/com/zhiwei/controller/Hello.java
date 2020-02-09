package com.zhiwei.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
@Controller
public class Hello {


    @RequestMapping("/hello")
    @ResponseBody
    public String  hellos(){
        System.out.println("hello");
        return "hello";
    }

}
