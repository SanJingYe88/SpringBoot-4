package it.com.dao;

import it.com.entity.LearnResouce;
import it.com.entity.LearnResouceExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface LearnResouceMapper {
    long countByExample(LearnResouceExample example);

    int deleteByExample(LearnResouceExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(LearnResouce record);

    int insertSelective(LearnResouce record);

    List<LearnResouce> selectByExample(LearnResouceExample example);

    LearnResouce selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") LearnResouce record, @Param("example") LearnResouceExample example);

    int updateByExample(@Param("record") LearnResouce record, @Param("example") LearnResouceExample example);

    int updateByPrimaryKeySelective(LearnResouce record);

    int updateByPrimaryKey(LearnResouce record);
}