package core.service.serviceImpl;


import com.github.pagehelper.PageHelper;
import core.bean.Blog;
import core.bean.BlogVo;
import core.dao.BlogMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("BlogServiceImpl")
public class BlogServiceImpl {
    @Autowired
    BlogMapper blogMapper;

    /**
     * 通过id获取博客内容
     * @param bid
     * @return
     */
    public BlogVo getBlogByid(int bid){
        return blogMapper.selectBloginfoByPK(bid);
    }

    /**
     * 插入博客内容
     * @param blog
     * @return
     */
    public boolean insertBlog(Blog blog){
        int flag=blogMapper.insert(blog);
        if(flag==1){
            return true;
        }else{
            return false;
        }
    }

    /**
     * 根据context模糊查询博客
     * @param keyword 关键字
     * @return
     */
    public List<BlogVo> getBlogInfoByKeyword(String keyword){
        return blogMapper.selectBlogByKeyWord(keyword);
    }

    /**
     * 根据标签分类查询博客
     * @param typename
     * @return
     */
    public List<BlogVo> getBlogInfoByCategory(String typename){
        return blogMapper.selectBloginfoByCategory(typename);
    }

    /**
     * 更新博客
     * @param b
     * @return
     */
    public boolean updateBlog(Blog b){
        int flag=blogMapper.updateByPrimaryKey(b);
        if(flag!=0){
            return true;
        }else{
            return false;
        }
    }

    /**
     * 删除博客
     * @param bid
     * @return
     */
    public boolean deleteBlog(int bid){
        int flag=blogMapper.deleteByPrimaryKey(bid);
        if(flag!=0){
            return true;
        }else{
            return false;
        }
    }

    /**
     * 博客分页
     */
    public List<BlogVo> getBlogBypage(int page, int pagesize){
        PageHelper.startPage(page,pagesize);
        List<BlogVo> blogs=blogMapper.selectBlogBypage();
        return blogs;
    }

    public BlogVo getBlogByPK(int bid){
        return blogMapper.selectByPrimaryKey(bid);
    }

}

