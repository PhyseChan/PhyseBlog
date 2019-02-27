package core.service.serviceImpl;

import core.bean.BlogVo;
import core.bean.Category;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:applicationContext.xml"})
public class BlogServiceImplTest {

    @Autowired
    BlogServiceImpl blogService;

   @Test
    public void getBlogByidTest(){
       BlogVo b=blogService.getBlogByid(1);
       System.out.println(b.getTitle());
       for (Category c:b.getCategorylist()) {
           System.out.println(c.getTypename());
       }
   }

   @Test
    public void getBlogInfoByKeywordTest(){
       List<BlogVo> list=blogService.getBlogInfoByKeyword("java");
       System.out.println(list.size());
   }

   @Test
    public void getBlogInfoByCategoryTest(){
       List<BlogVo> list=blogService.getBlogInfoByCategory("web开发");
       System.out.println(list.size());
   }

}