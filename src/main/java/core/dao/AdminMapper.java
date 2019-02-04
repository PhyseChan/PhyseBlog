package core.dao;

import java.util.List;
import core.bean.Admin;
import core.bean.Blog;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository("AdminMapper")
public interface AdminMapper {

    int deleteByPrimaryKey(Integer id);

    int insert(Admin record);

    Admin selectByPrimaryKey(Integer id);

    List<Admin> selectAll();

    int updateByPrimaryKey(Admin record);

    Admin getUserByName(@Param("username") String username);

    int insertBlog(Blog blog);

}