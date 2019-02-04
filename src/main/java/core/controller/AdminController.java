package core.controller;

import com.sun.jmx.snmp.Timestamp;
import core.bean.Blog;
import core.service.serviceImpl.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

@Controller
public class AdminController {
    @Autowired
    UserServiceImpl userService;
    @RequestMapping(value = "/admin/insertBlog",produces = "application/json;charset=UTF-8",method = RequestMethod.POST)
    public @ResponseBody
    Map insertBlog(@RequestBody Blog blog, HttpServletRequest request){
        System.out.println(blog.getTitle());
        System.out.println(blog.getSummary());
//        String title=request.getParameter("title");
//        String summary=request.getParameter("summary");
//        String context=request.getParameter("context");
//        blog.setTitle(title);
//        blog.setSummary(summary);
//        blog.setContext(context);
        java.sql.Date t=new java.sql.Date(new Date().getTime());
        blog.setPublishtime(t);
        Boolean flag=userService.insertBlog(blog);
        Map map=new HashMap();
        if(flag==true){
            map.put("flag","success");
            return map;
        }else {
            map.put("flag","failure");
            return map;
        }
    }

    @RequestMapping(value = "/admin/updateBlog",produces = "application/json;charset=UTF-8")
    public String updateBlog(HttpServletRequest request){
        return "";
    }

    @RequestMapping(value = "/admin/deleteBlog",produces = "application/json;charset=UTF-8")
    public String deleteBlog(HttpServletRequest request){
        return "";
    }


}
