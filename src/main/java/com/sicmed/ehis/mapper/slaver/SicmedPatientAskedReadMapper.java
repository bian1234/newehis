package com.sicmed.ehis.mapper.slaver;

import com.sicmed.ehis.entity.SicmedPatientAsked;

public interface SicmedPatientAskedReadMapper {
    int deleteByPrimaryKey(String id);

    int insert(SicmedPatientAsked record);

    int insertSelective(SicmedPatientAsked record);

    SicmedPatientAsked selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(SicmedPatientAsked record);

    int updateByPrimaryKey(SicmedPatientAsked record);
}