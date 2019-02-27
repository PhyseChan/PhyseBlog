package core.controller;

import core.service.serviceImpl.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

@Controller
public class UserController {
    @Autowired
    UserServiceImpl userService;

    @RequestMapping(value = "/blog/userlogin",method = RequestMethod.POST,produces = "application/json;charset=UTF-8")
    public String login (HttpServletRequest request){
        String name=request.getParameter("username");
        String pwd=request.getParameter("password");
        boolean flag=userService.login(name,pwd);
        if (flag==true){
            return "/admin/index.jsp";
        }else{
            return "/blog/login.html";
        }
    }


}
