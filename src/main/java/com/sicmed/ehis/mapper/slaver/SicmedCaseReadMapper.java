package com.sicmed.ehis.mapper.slaver;

import com.sicmed.ehis.entity.SicmedCase;
import org.springframework.stereotype.Repository;

@Repository
public interface SicmedCaseReadMapper {
    int deleteByPrimaryKey(String id);

    int insert(SicmedCase record);

    int insertSelective(SicmedCase record);

    SicmedCase selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(SicmedCase record);

    int updateByPrimaryKey(SicmedCase record);
}