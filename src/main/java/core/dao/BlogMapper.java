package core.dao;

import java.util.List;
import core.bean.Blog;
import org.springframework.stereotype.Repository;

@Repository("BlogMapper")
public interface BlogMapper {

    int deleteByPrimaryKey(int bid);

    int insert(Blog record);

    Blog selectByPrimaryKey(int bid);

    List<Blog> selectAll();

    int updateByPrimaryKey(Blog record);

    List<Blog> selectBlogBypage();

    List<Blog> selectBlogByCategory(int cid);


}