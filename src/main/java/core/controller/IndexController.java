package core.controller;


import core.bean.BlogVo;
import core.bean.Category;
import core.service.serviceImpl.BlogServiceImpl;
import core.service.serviceImpl.CategoryServiceImpl;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Controller
public class IndexController {
    @Autowired
    BlogServiceImpl blogService;
    @Autowired
    CategoryServiceImpl categoryService;
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
        List<BlogVo> bloglist=blogService.getBlogBypage(page,10);
        List<BlogVo> bloglist1=new ArrayList<BlogVo>();
        List<BlogVo> bloglist2=new ArrayList<BlogVo>();
        for(int i=0;i<bloglist.size();i++){
            if(i%2==0){
                System.out.println("------------------------->"+i);
                bloglist1.add(bloglist.get(i));
            }else{
                bloglist2.add(bloglist.get(i));
            }
        }
        List<Category> categories=categoryService.getCategorylist();
        mav.addObject("categorylist",categories);
        mav.addObject("bloglist1",bloglist1);
        mav.addObject("bloglist2",bloglist2);
        mav.addObject("page",page);
        mav.setViewName("blog/index.jsp");
        return mav;
    }

}
