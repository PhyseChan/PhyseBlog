package core.controller;

import core.bean.Blog;
import core.bean.BlogVo;
import core.bean.Category;
import core.service.serviceImpl.BlogServiceImpl;
import core.service.serviceImpl.CategoryServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
    @Autowired
    CategoryServiceImpl categoryService;

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
        List<Category> categories=categoryService.getCategorylist();
        mav.addObject("categorylist",categories);
        mav.addObject("blog",blog);
        mav.setViewName("/blog/blog-details.jsp");
        return mav;
    }




    /**
     * 博客模糊查询
     * 由于前段为瀑布流，所以返回两个博客列表
     * 此方法仍需重构，未来将改为只返回一个列表，让前端负责拆分为两个，视图和控制层解耦。
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
        mav.setViewName("/blog/index.jsp");
        return mav;
    }

    /**
     * 通过类别获取博客列表，其中返回博客列表与分类列表
     * 此方法仍需重构，未来将把分类列表的返回去除，异步获取分类列表
     * @param request
     * @return
     */
    @RequestMapping(value = "/blog/category" , produces = "application/json;charset=UTF-8")
    public @ResponseBody
    ModelAndView getBlogByCategory (HttpServletRequest request){
        ModelAndView mav=new ModelAndView();
        String typename=request.getParameter("typename");
        List<BlogVo> bloglist=blogService.getBlogInfoByCategory(typename);
        List<BlogVo> bloglist1=new ArrayList<BlogVo>();
        List<BlogVo> bloglist2=new ArrayList<BlogVo>();

        for(int i=0;i<bloglist.size();i++){
            if(i%2==0){
                bloglist1.add(bloglist.get(i));
            }else{
                bloglist2.add(bloglist.get(i));
            }
        }
        List<Category> categories=categoryService.getCategorylist();
        mav.addObject("categorylist",categories);
        mav.addObject("bloglist1",bloglist1);
        mav.addObject("bloglist2",bloglist2);
        mav.setViewName("/blog/index.jsp");
        return mav;
    }
    @RequestMapping(value = "/blog/getcategory" , produces = "application/json;charset=UTF-8")
    public @ResponseBody
    List<Category> getCategory (HttpServletRequest request){
       List<Category> categoryList=categoryService.getCategorylist();
        return categoryList;
    }
}
