package core.service.serviceImpl;

import core.bean.User;
import core.dao.UserMapper;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("UserServiceImpl")
public class UserServiceImpl {

    @Autowired
    User user;

    public boolean login(String username,String password){
        user.setUsername(username);
        user.setUserpassword(password);
        Subject subject= SecurityUtils.getSubject();
        try {
            subject.login(new UsernamePasswordToken(user.getUsername(),user.getUserpassword()));
            return true;
        } catch (AuthenticationException e) {
            e.printStackTrace();
            System.out.println("登陆失败");
            return false;
        }
    }
}
