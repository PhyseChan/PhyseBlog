package core.controller;

import core.bean.Blog;
import core.bean.BlogVo;
import core.service.serviceImpl.BlogServiceImpl;
import core.service.serviceImpl.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class AdminController {
    @Autowired
    UserServiceImpl userService;
    @Autowired
    BlogServiceImpl blogService;

/**
     * wangeditor插入文章信息返回wangeditor要求的map信息，{"flag":"success"/"failure"}
     * @param blog
     * @param request
     * @return*/

    @RequestMapping(value = "/admin/insertBlog",produces = "application/json;charset=UTF-8",method = RequestMethod.POST)
    public @ResponseBody
    Map insertBlog(@RequestBody Blog blog, HttpServletRequest request){
        java.sql.Date t=new java.sql.Date(new Date().getTime());
        blog.setPublishtime(t);
        Boolean flag=blogService.insertBlog(blog);
        Map map=new HashMap();
        if(flag==true){
            map.put("flag","success");
            return map;
        }else {
            map.put("flag","failure");
            return map;
        }
    }

/**
     * 删除博客信息，这里删除成功后返回blog-list.jsp页面，应该带上删除成功的信息，
     * 由于前端相应显示的模块还没有完成所以这里的成功以失败都是返回同一个页面且没有带上提示信息。
     * @param request
     * @return*/
    @RequestMapping(value = "/admin/deleteBlog",produces = "application/json;charset=UTF-8")
    public ModelAndView deleteBlog(HttpServletRequest request){
        String bidString = request.getParameter("bid");
        ModelAndView mav=new ModelAndView();
        if(bidString==null){
            mav.setViewName("blog-list.jsp");
            return mav;
        }else{
            int bid=Integer.parseInt(bidString);

            if(blogService.deleteBlog(bid)){
                mav.setViewName("blog-list.jsp");
                return mav;
            }else {
                return mav;
            }
        }
    }


    /**
     *获取需要修改博客的信息
     * @param request
     * @return
     */
    @RequestMapping("/admin/getupdateblog")
    public ModelAndView updateblog(HttpServletRequest request){
        String bidString=request.getParameter("bid");
        ModelAndView mav=new ModelAndView();
        if (bidString==null){
            mav.setViewName("/admin/index.jsp");
            return mav;
        }else {
            int bid = Integer.parseInt(bidString);
            BlogVo blog=blogService.getBlogByPK(bid);
            mav.addObject("blog",blog);
            mav.setViewName("/admin/updateblog.jsp");
            return mav;
        }
    }

/**
     * 更新博客信息，
     * @param blog json 传回博客信息
     * @param request
     * @return*/
    @RequestMapping(value = "/admin/updateblog",produces = "application/json;charset=UTF-8",method = RequestMethod.POST)
    public @ResponseBody
    Map updateBlog(@RequestBody Blog blog, HttpServletRequest request){
        Map map = new HashMap();
        if(blog!=null) {
            Boolean flag = blogService.updateBlog(blog);
            if (flag == true) {
                map.put("flag", "success");
                return map;
            } else {
                map.put("flag", "failure");
                return map;
            }
        }else{
            map.put("flag","failure");
            return map;
        }
    }

    /**
     * 获取所有博客的信息
     * 查询返回BlogVo信息视图
     * @param request
     * @return
     */
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
        List<BlogVo> bloglist=blogService.getBlogBypage(page,10);
        mav.addObject("bloglist",bloglist);
        mav.setViewName("admin/blog-list.jsp");
        return mav;
    }
}
