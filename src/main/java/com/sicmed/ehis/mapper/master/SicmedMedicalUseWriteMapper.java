package com.sicmed.ehis.mapper.master;

import com.sicmed.ehis.entity.SicmedMedicalUse;
import org.springframework.stereotype.Repository;

@Repository
public interface SicmedMedicalUseWriteMapper {
    int deleteByPrimaryKey(String id);

    int insert(SicmedMedicalUse record);

    int insertSelective(SicmedMedicalUse record);

    SicmedMedicalUse selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(SicmedMedicalUse record);

    int updateByPrimaryKey(SicmedMedicalUse record);
}