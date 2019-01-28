package core.controller;

import core.service.serviceImpl.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class UserController {
    @Autowired
    UserServiceImpl userService;

    @RequestMapping(value = "/blog/login",produces = "application/json;charset=UTF-8")
    public String login (HttpServletRequest request){
        String name=request.getParameter("username");
        String pwd=request.getParameter("password");
        System.out.println("------------->"+name+pwd);
        boolean flag=userService.login(name,pwd);
        if (flag==true){
            return "userpage";
        }else{
            return "loginpage";
        }
    }
}
