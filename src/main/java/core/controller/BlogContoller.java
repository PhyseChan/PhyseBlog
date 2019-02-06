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
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

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

    @RequestMapping(value = "/blog/getBlogByid")
    public @ResponseBody
    ModelAndView getBlogByid(HttpServletRequest request){
        ModelAndView mav=new ModelAndView();
        String idstring=request.getParameter("bid");
        Integer bid=Integer.parseInt(idstring);
        Blog blog=blogService.selectBlogById(bid);
        mav.addObject("blog",blog);
        mav.setViewName("/blog/blogcontext.jsp");
        return mav;
    }

    @RequestMapping(value = "/blog/getBlogByid2",produces = "application/json;charset=UTF-8")
    public @ResponseBody
    String getBlogByid2(@RequestBody Blog blog, Model model){
        blog=blogService.selectBlogById(blog.getBid());
        model.addAttribute("blog",blog);
        return "";
    }

    @RequestMapping(value = "/blog/category" , produces = "application/json;charset=UTF-8")
    public @ResponseBody
    ModelAndView getBlogByCategory (HttpServletRequest request){
        ModelAndView mav=new ModelAndView();
        String cidStirng=request.getParameter("cid");
        Integer cid=Integer.parseInt(cidStirng);
        List<Blog> bloglist=blogService.getBlogByCategory(cid);
        mav.addObject("bloglist",bloglist);
        mav.setViewName("/blog/search.jsp");
        return mav;
    }
}
