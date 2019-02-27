package core.dao;

import java.util.List;

import core.bean.Category;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository("CategoryMapper")
public interface CategoryMapper {
    int deleteByPrimaryKey(Integer cid);

    int insert(Category record);

    Category selectByPrimaryKey(Integer cid);

    List<Category> selectAll();

    int updateByPrimaryKey(Category record);

    List<Category> selectByBlogId(@Param("bid") Integer bid);

}