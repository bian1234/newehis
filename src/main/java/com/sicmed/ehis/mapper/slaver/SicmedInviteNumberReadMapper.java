package com.sicmed.ehis.mapper.slaver;

import com.sicmed.ehis.entity.SicmedInviteNumber;
import org.springframework.stereotype.Repository;

@Repository
public interface SicmedInviteNumberReadMapper {
    int deleteByPrimaryKey(String id);

    int insert(SicmedInviteNumber record);

    int insertSelective(SicmedInviteNumber record);

    SicmedInviteNumber selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(SicmedInviteNumber record);

    int updateByPrimaryKey(SicmedInviteNumber record);
}