package core.service.serviceImpl;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:applicationContext.xml"})
public class AdminServiceImplTest {
/*
    @Resource (name="BlogServiceImpl")
    BlogServiceImpl blogService;

    @Resource (name = "Blog")
    Blog blog;


    @Test
    public void insertBlog() {
        blog.setTitle("水杯");
        blog.setContext("123123213213213213213213213213213213123123213");
        blogService.inserBlog(blog);
        List<Blog> blogs=blogService.getBlogByPage(1,10);
        for(Blog item:blogs){
            System.out.println(item.getTitle()+"\t\t"+"\t\t"+item.getSummary());
        }
    }

    @Test
    public void getBlogByPage() {
        List<Blog> blogs=blogService.getBlogByPage(1,3);
        for(Blog item:blogs){
            System.out.println(item.getTitle()+"\t\t"+"\t\t"+item.getSummary());
        }
    }

    @Test
    public void updateBlog() {

    }

    @Test
    public void deleteBlog() {
    }

    @Test
    public void selectBlogtest(){
        System.out.println(blogService.selectBlogById(8).getTitle());
    }*/
}