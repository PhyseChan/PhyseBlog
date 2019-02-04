package core.service.serviceImpl;

import core.bean.Admin;
import core.bean.Blog;
import core.dao.AdminMapper;
import core.dao.BlogMapper;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("UserServiceImpl")
public class UserServiceImpl {
    @Autowired
    Admin user;
    @Autowired
    AdminMapper adminMapper;
    @Autowired
    BlogMapper blogMapper;

    public boolean login(String username,String password){
        user.setAdminname(username);
        user.setAdminpassword(password);
        Subject subject= SecurityUtils.getSubject();

        try {
            subject.login(new UsernamePasswordToken(user.getAdminname(),user.getAdminpassword()));
            System.out.println("登陆成功");
            return true;
        } catch (AuthenticationException e) {
            System.out.println("登陆失败");
            e.printStackTrace();
            return false;
        }
    }

    public boolean insertBlog(Blog blog){
        if(blogMapper.insert(blog)==1){
            return true;
        }else{
            return false;
        }
    }
}
