package core.controller;

import core.bean.Blog;
import core.service.serviceImpl.BlogServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

@Controller
public class BlogContoller {
    @Autowired
    BlogServiceImpl blogService;
    @RequestMapping(value = "/blog/getBlogBypage",produces = "application/json;charset=UTF-8",method = RequestMethod.POST)
    public @ResponseBody
    String getBlogByPage( HttpServletRequest request , @RequestBody int page){
        blogService.getBlogByPage(page,5);
        return "success";
    }

    @RequestMapping(value = "/blog/getBlogByid",produces = "application/json;charset=UTF-8")
    public @ResponseBody
    Blog getBlogByid(@RequestBody Blog blog){
        blog=blogService.selectBlogById(blog.getBid());
        return blog;
    }

    @RequestMapping(value = "/blog/getBlogByid2",produces = "application/json;charset=UTF-8")
    public @ResponseBody
    String getBlogByid2(@RequestBody Blog blog, Model model){
        blog=blogService.selectBlogById(blog.getBid());
        model.addAttribute("blog",blog);
        return "";
    }
}
