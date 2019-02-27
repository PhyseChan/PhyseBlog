package core.service.serviceImpl;

import core.bean.Category;
import core.dao.CategoryMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CategoryServiceImpl {
    @Autowired
    CategoryMapper categoryMapper;
    public List<Category> getCategorylist(){
        return categoryMapper.selectAll();
    }
}
