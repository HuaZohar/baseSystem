package com.vrv.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.vrv.commons.shiro.captcha.DreamCaptcha;

/**
 * 通用的控制器
 *
 */
@Controller
public class CommonsController {
    @Autowired
    private DreamCaptcha dreamCaptcha;
    
    /**
     * 图标页
     */
    @GetMapping("icons.html")
    public String icons() {
        return "icons";
    }
    
    /**
     * 图形验证码
     */
    @GetMapping("captcha.jpg")
    public void captcha(HttpServletRequest request, HttpServletResponse response) {
        dreamCaptcha.generate(request, response);
    }
    

}
