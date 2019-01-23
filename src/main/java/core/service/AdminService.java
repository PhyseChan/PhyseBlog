package core.service;

import core.bean.Blog;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service("AdminService")
public interface AdminService {

    int insertBlog(Blog record);

    List<Blog> getBlogByPage(int currentPage, int size);

    int updateBlog(Blog record);

    int deleteBlog(int Blogid);

    Blog selectBlogbyid(int bid);
}
