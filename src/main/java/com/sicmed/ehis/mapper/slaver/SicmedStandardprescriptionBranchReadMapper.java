package com.sicmed.ehis.mapper.slaver;

import com.sicmed.ehis.entity.SicmedStandardprescriptionBranch;

public interface SicmedStandardprescriptionBranchReadMapper {
    int deleteByPrimaryKey(String id);

    int insert(SicmedStandardprescriptionBranch record);

    int insertSelective(SicmedStandardprescriptionBranch record);

    SicmedStandardprescriptionBranch selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(SicmedStandardprescriptionBranch record);

    int updateByPrimaryKey(SicmedStandardprescriptionBranch record);
}