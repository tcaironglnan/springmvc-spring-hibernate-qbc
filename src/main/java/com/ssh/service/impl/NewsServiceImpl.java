package com.ssh.service.impl;

import com.ssh.dao.NewsDao;
import com.ssh.model.News;
import com.ssh.service.NewsService;
import com.ssh.tools.Page;
import com.ssh.tools.PageInfo;
import com.ssh.tools.Str;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author FaceFeel
 * @Created 2018-05-11 14:37
 **/
@Service("newsService")
public class NewsServiceImpl implements NewsService {

    private static final Logger logger = LoggerFactory.getLogger(NewsServiceImpl.class);
    @Autowired
    private NewsDao newsDao;

    /**
     * 上传新闻图片
     * @param id 新闻ID
     * @param images 图片
     * @return "
     */
    @Override
    public boolean updateNewsImages(Long id, String images) {

        if (id == null || Str.isBlank(images)){
            return false;
        }

        try {
            return newsDao.updateNewsImages(id,images);
        }catch (Exception e){
            logger.error("上传图片出错,错误信息是:",e);
            return false;
        }
    }

    /**
     * 恢复删除的信息
     * @param id 信息ID
     * @return ""
     */
    @Override
    public boolean revertNews(Long id) {

        if (id == null){
            return false;
        }

        try {
            return newsDao.revertNews(id);
        }catch (Exception e){
            logger.error("恢复删除出错,错误信息是:",e);
            return false;
        }
    }

    /**
     * 删除信息
     *
     * @param id 信息ID
     * @return ""
     */
    @Override
    public boolean deleteNews(Long id) {

        if (id == null) {
            return false;
        }

        try {
            return newsDao.deleteNews(id);
        } catch (Exception e) {
            logger.error("删除信息失败,失败的详情是:", e);
            return false;
        }
    }

    /**
     * 获取所有新闻列表
     *
     * @param news 新闻实体
     * @return ""
     */
    @Override
    public List<News> getNewsList(News news) {

        if (news == null) {
            return null;
        }

        try {
            return newsDao.getNewsList(news);
        } catch (Exception e) {
            logger.error("获取新闻信息出现问题,错误信息是:", e);
            return null;
        }
    }

    /**
     * 获取所有新闻列表
     *
     * @param news 新闻实体
     * @return ""
     */
    @Override
    public Page<News> getNewsList(News news, PageInfo pageInfo) {

        if (news == null || pageInfo == null) {
            return null;
        }

        try {
            return newsDao.getNewsList(news, pageInfo);
        } catch (Exception e) {
            logger.error("分页查询错误,错误信息是:", e);
            return null;
        }
    }

    /**
     * 持久化信息
     *
     * @param news 信息实体
     * @return ""
     */
    @Override
    public boolean addNews(News news) {

        if (news == null) {
            return false;
        }

        try {
            return newsDao.addNews(news);
        } catch (Exception e) {
            logger.error("添加信息失败,失败的信息是:", e);
            return false;
        }
    }
}
