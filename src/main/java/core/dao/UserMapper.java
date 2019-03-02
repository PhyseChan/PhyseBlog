package core.dao;

import core.bean.User;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("UserMapper")
public interface UserMapper {

    int deleteByPrimaryKey(Integer uid);

    int insert(User record);

    User selectByPrimaryKey(Integer uid);

    List<User> selectAll();

    int updateByPrimaryKey(User record);

    User getUserByName(String name);
}