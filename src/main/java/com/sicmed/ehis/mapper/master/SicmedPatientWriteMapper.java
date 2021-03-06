package com.sicmed.ehis.mapper.master;

import com.sicmed.ehis.entity.SicmedPatient;
import org.springframework.stereotype.Repository;

@Repository
public interface SicmedPatientWriteMapper {
    int deleteByPrimaryKey(String id);

    int insert(SicmedPatient record);

    int insertSelective(SicmedPatient record);

    SicmedPatient selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(SicmedPatient record);

    int updateByPrimaryKey(SicmedPatient record);
}