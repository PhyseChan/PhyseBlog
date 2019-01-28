package core.controller;

import core.bean.Blog;
import core.service.serviceImpl.AdminServiceImpl;
import core.service.serviceImpl.BlogServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

@Controller
public class EditorController {
    @Autowired
    BlogServiceImpl blogService;
    @Autowired
    Blog blog;
    @RequestMapping(value = "hello.action",produces = "application/json;charset=UTF-8")
    public @ResponseBody String getEditorInfo(HttpServletRequest request, @RequestBody Blog blog){
        blogService.inserBlog(blog);
        return "success";
    }
    public @ResponseBody String getBlogByPage(HttpServletRequest request ,int page){
        blogService.getBlogByPage(page,5);
        return "success";
    }

    

}
