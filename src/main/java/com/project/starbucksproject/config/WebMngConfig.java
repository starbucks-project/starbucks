package com.project.starbucksproject.config;

import com.project.starbucksproject.util.MyPath;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.resource.PathResourceResolver;

@Configuration
public class WebMngConfig implements WebMvcConfigurer{

  @Override
  public void addResourceHandlers(ResourceHandlerRegistry registry) {
    WebMvcConfigurer.super.addResourceHandlers(registry);

    registry.addResourceHandler("/upload/**").addResourceLocations("file:///"+ MyPath.IMAGEPATH)
    .setCachePeriod(60*10*6).resourceChain(true).addResolver(new PathResourceResolver());
  }
}
