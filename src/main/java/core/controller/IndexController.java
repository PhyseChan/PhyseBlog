package core.controller;


import com.github.pagehelper.PageInfo;
import core.bean.Blog;
import core.service.serviceImpl.BlogServiceImpl;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class IndexController {
    @Autowired
    BlogServiceImpl blogService;

    @RequestMapping("/blog/blogPage")
    public ModelAndView initIndex(HttpServletRequest httpServletRequest){
        String pageString=httpServletRequest.getParameter("page");
        System.out.println(pageString);
        ModelAndView mav=new ModelAndView();
        Integer page;
        if(StringUtils.isEmpty(pageString)){
            page=1;
        }else{
            page=Integer.parseInt(pageString);
        }
        List<Blog> bloglist=blogService.getBlogByPage(page,10);
        PageInfo<Blog> pageinfo=new PageInfo<Blog>(bloglist);
        mav.addObject("bloglist",bloglist);
        mav.addObject("page",page);
        mav.setViewName("blog/blogPage.jsp");
        return mav;
    }
    @RequestMapping("/blog/index")
    public ModelAndView goindex(HttpServletRequest request){
        ModelAndView model=new ModelAndView();
        model.setViewName("blog/index.jsp");
        return model;
    }
}
