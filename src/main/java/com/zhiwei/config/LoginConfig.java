package com.zhiwei.config;

import com.zhiwei.interceptors.LoginInterceptor;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.config.annotation.InterceptorRegistration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
@Configuration
public class LoginConfig implements WebMvcConfigurer {


    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        //注册TestInterceptor拦截器
        InterceptorRegistration registration = registry.addInterceptor(loginInterceptor());
        registration.addPathPatterns("/**");//所有路径都被拦截
        registration.excludePathPatterns(                         //添加不拦截路径
                "/static/**","/admin/index","/admin/login"           //登录
        );

    }


    @Bean
    public  LoginInterceptor loginInterceptor(){
         return   new LoginInterceptor();
    }




}
