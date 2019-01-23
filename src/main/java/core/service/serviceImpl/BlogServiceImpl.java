package core.service.serviceImpl;

import com.github.pagehelper.PageHelper;
import core.bean.Blog;
import core.dao.BlogMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("BlogServiceImpl")
public class BlogServiceImpl {
    @Autowired
    BlogMapper blogMapper;

    /*创建博文*/
    public  int inserBlog(Blog blog){
        return blogMapper.insert(blog);
    }

    public int updateBlog(Blog blog){
        return blogMapper.updateByPrimaryKey(blog);
    }

    public int deleteBlog(int bid){
        return blogMapper.deleteByPrimaryKey(bid);
    }

    public List<Blog> getBlogByPage(int page,int size){
        PageHelper.startPage(page,size);
        List<Blog> blogs=blogMapper.selectBlogBypage();
        return blogs;
    }

    public Blog selectBlogById(int id){
        return blogMapper.selectByPrimaryKey(id);
    }


}
