package com.example.mall.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {
    /**
     * 打开首页
     */
    @RequestMapping("/index.html")
    public String toIndex() {
        return "mall/index";
    }

    /**
     * 访问根目录转发到首页
     */
    @RequestMapping("/")
    public String index(){
        return "forward:/index.html";
    }

}
