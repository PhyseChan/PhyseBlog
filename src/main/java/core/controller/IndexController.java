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

    @RequestMapping("/blog/index")
    public ModelAndView initIndex(HttpServletRequest httpServletRequest){
        String pageString=httpServletRequest.getParameter("page");
        ModelAndView mav=new ModelAndView();
        Integer page;
        if(StringUtils.isEmpty(pageString)){
            page=1;
        }else{
            page=Integer.parseInt(pageString);
        }
        List<Blog> bloglist1=blogService.getBlogByPage(page,5);
        List<Blog> bloglist2=blogService.getBlogByPage(2,5);
        mav.addObject("bloglist1",bloglist1);
        mav.addObject("bloglist2",bloglist2);
        mav.addObject("page",page);
        mav.setViewName("blog/index.jsp");
        return mav;
    }
/*    @RequestMapping("/blog/index")
    public ModelAndView goindex(HttpServletRequest request){
        ModelAndView model=new ModelAndView();
        model.setViewName("blog/index.jsp");
        return model;
    }*/
}
