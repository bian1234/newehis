package com.sicmed.ehis.mapper.master;

import com.sicmed.ehis.entity.SicmedMedicalClass;
import org.springframework.stereotype.Repository;

@Repository
public interface SicmedMedicalClassWriteMapper {
    int deleteByPrimaryKey(String id);

    int insert(SicmedMedicalClass record);

    int insertSelective(SicmedMedicalClass record);

    SicmedMedicalClass selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(SicmedMedicalClass record);

    int updateByPrimaryKey(SicmedMedicalClass record);
}