package com.zhiwei;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.zhiwei.dao")
public class ZhiweiApplication {

    public static void main(String[] args) {
        SpringApplication.run(ZhiweiApplication.class, args);
    }

}
