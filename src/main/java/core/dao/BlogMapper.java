package core.dao;

import core.bean.Blog;
import core.bean.BlogVo;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("BlogMapper")
public interface BlogMapper {
    int deleteByPrimaryKey(Integer bid);

    int insert(Blog record);

    BlogVo selectByPrimaryKey(Integer bid);

    List<Blog> selectAll();

    int updateByPrimaryKey(Blog record);

    BlogVo selectBloginfoByPK(Integer bid);

    List<BlogVo> selectBlogByKeyWord(@Param("keyword")String keyword);

    List<BlogVo> selectBloginfoByCategory(@Param("typename") String typename);

    List<BlogVo> selectBlogBypage();

    List<BlogVo> selectBlogByCategory();

}