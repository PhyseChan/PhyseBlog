package core.bean;

import org.springframework.stereotype.Repository;

import java.sql.Date;
import java.util.List;

/**
 * BlogVo类是用于显示博客信息，因此其中的属性是不包含context。
 * 此外还再加上List<Category> 分类标签的list。
 * 注意：Blog类中是没有分类标签的属性，因为是多对多的关系，blog和category有一个中间表作为分类记录。
 */
@Repository("BlogVo")
public class BlogVo {

    private int bid;

    private String title;

    private String summary;

    private List<Category> categorylist;

    private Integer hits;

    private String context;

    public void setCategorylist(List<Category> categorylist) {
        this.categorylist = categorylist;
    }

    public Date getPublishtime() {
        return publishtime;
    }

    public void setPublishtime(Date publishtime) {
        this.publishtime = publishtime;
    }

    public String getImageurl() {
        return imageurl;
    }

    public void setImageurl(String imageurl) {
        this.imageurl = imageurl;
    }

    private Date publishtime;


    private String imageurl;

    public int getBid() {
        return bid;
    }

    public void setBid(int bid) {
        this.bid = bid;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getSummary() {
        return summary;
    }

    public void setSummary(String summary) {
        this.summary = summary;
    }

    public List<Category> getCategorylist() {
        return categorylist;
    }

    public Integer getHits() {
        return hits;
    }

    public void setHits(Integer hits) {
        this.hits = hits;
    }

    public String getContext() {
        return context;
    }

    public void setContext(String context) {
        this.context = context;
    }
}
