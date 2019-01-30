package core.controller;

import core.service.serviceImpl.BlogServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

@Controller
public class BlogContoller {
    @Autowired
    BlogServiceImpl blogService;
    @RequestMapping(value = "getBlogBypage",produces = "application/json;charset=UTF-8")
    public @ResponseBody
    String getBlogByPage(@RequestBody HttpServletRequest request , int page){
        blogService.getBlogByPage(page,5);
        return "success";
    }
}
