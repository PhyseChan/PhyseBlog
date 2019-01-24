package demo;


import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.config.IniSecurityManagerFactory;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.mgt.SecurityManager;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.util.Factory;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;


public class shirodemo {
    public void certification(){
        Factory<SecurityManager> securityFactory=new IniSecurityManagerFactory("classpath:shiro.ini");
        SecurityManager securityManager=securityFactory.getInstance();
        SecurityUtils.setSecurityManager(securityManager);
        Subject subject=SecurityUtils.getSubject();

        UsernamePasswordToken token=new UsernamePasswordToken("loll","123");
        subject.login(token);
        System.out.println(subject.isAuthenticated());

        subject.logout();
        System.out.println(subject.isAuthenticated());
    }
    public void testhashrole(){
        Factory<SecurityManager> factory= new IniSecurityManagerFactory("classpath:permission.ini");
        SecurityManager securityManager=factory.getInstance();
        SecurityUtils.setSecurityManager(securityManager);
        Subject subject=SecurityUtils.getSubject();
        UsernamePasswordToken token =new UsernamePasswordToken("jane","111");
        subject.login(token);
        System.out.println(subject.hasAllRoles(Arrays.asList("role1","role2")));
        System.out.println(Arrays.toString(subject.hasRoles(Arrays.asList("role1","role2"))));
        System.out.println(subject.isPermitted("user:create"));
        subject.checkPermission("user:upload");
    }

    public void testhashlock(){
        Object o=new  SimpleHash("MD5","1234","1",4);
        System.out.println(o);
    }
    public static void main(String[] args) {
        new shirodemo().testhashrole();
    }
}
