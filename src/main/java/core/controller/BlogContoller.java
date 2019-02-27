package core.controller;

import core.bean.Blog;
import core.bean.BlogVo;
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
        blogService.getBlogBypage(page,5);
        return "success";
    }

    /**
     * 通过id获取博客信息
     * @param request
     * @return
     */
    @RequestMapping(value = "/blog/getBlogByid")
    public @ResponseBody
    ModelAndView getBlogByid(HttpServletRequest request){
        ModelAndView mav=new ModelAndView();
        String idstring=request.getParameter("bid");
        Integer bid=Integer.parseInt(idstring);
        BlogVo blog=blogService.getBlogByPK(bid);
        mav.addObject("blog",blog);
        mav.setViewName("/blog/blog-details.jsp");
        return mav;
    }




    /**
     * 博客模糊查询
     * @param request
     * @return
     */
    @RequestMapping(value = "/blog/getBlogByKeyword" , produces = "application/json;charset=UTF-8")
    public @ResponseBody
    ModelAndView getBlogByKeyword (HttpServletRequest request){
        ModelAndView mav=new ModelAndView();
        String keyword=request.getParameter("keyword");
        List<BlogVo> bloglist=blogService.getBlogInfoByKeyword(keyword);
        List<BlogVo> bloglist1=new ArrayList<BlogVo>();
        List<BlogVo> bloglist2=new ArrayList<BlogVo>();
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



}
