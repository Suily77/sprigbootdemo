package com.psl.sprigbootdemo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ImportResource;

@SpringBootApplication  //启动srpingboot和扫描包
//@ImportResource(locations = {"classpath:spring/springApplication.xml"})
public class SprigbootdemoApplication {

    public static void main(String[] args) {
        SpringApplication.run(SprigbootdemoApplication.class, args);
    }

}
