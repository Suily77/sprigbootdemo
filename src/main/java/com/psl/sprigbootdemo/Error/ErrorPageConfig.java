package com.psl.sprigbootdemo.Error;

import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.boot.web.server.ConfigurableWebServerFactory;
import org.springframework.boot.web.server.ErrorPage;
import org.springframework.boot.web.server.WebServerFactoryCustomizer;
import org.springframework.context.annotation.Bean;
import org.springframework.http.HttpStatus;

/**
 * 错误页设计
 */
@Configurable
public class ErrorPageConfig {
    @Bean
    public WebServerFactoryCustomizer<ConfigurableWebServerFactory> webServerFactoryWebServerFactoryCustomizer(){
        return new WebServerFactoryCustomizer<ConfigurableWebServerFactory>() {
            @Override
            public void customize(ConfigurableWebServerFactory factory) {
                ErrorPage errorPage404=new ErrorPage(HttpStatus.NOT_FOUND,"/error404.html");//定义404页面
                ErrorPage errorPage500 = new ErrorPage(HttpStatus.INTERNAL_SERVER_ERROR,"/error500.html");//定义500页面
                factory.addErrorPages(errorPage404,errorPage500);
            }
        };
    }
}
