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
import java.util.ArrayList;
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
        mav.setViewName("/blog/blog-details.jsp");
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
        List<Blog> bloglist1=new ArrayList<Blog>();
        List<Blog> bloglist2=new ArrayList<Blog>();
        for(int i=0;i<bloglist.size();i++){
            if(i%2==0){
                bloglist1.add(bloglist.get(i));
            }else{
                bloglist2.add(bloglist.get(i));
            }
        }
        mav.addObject("bloglist1",bloglist1);
        mav.addObject("bloglist2",bloglist2);
        mav.setViewName("/blog/blog.jsp");
        return mav;
    }

    @RequestMapping(value = "/admin/getBlogInfoList" ,produces = "application/json;charset=UTF-8")
    public ModelAndView BlogInfoList(HttpServletRequest request){
        ModelAndView mav=new ModelAndView();
        int page;
        String pageString=request.getParameter("page");
        if(pageString==null){
            page=1;
        }else {
         page=Integer.parseInt(pageString);
        }
        List<Blog> bloglist=blogService.getBlogByPage(page,10);
        mav.addObject("bloglist",bloglist);
        mav.setViewName("admin/blog-list.jsp");
        return mav;
    }
}
