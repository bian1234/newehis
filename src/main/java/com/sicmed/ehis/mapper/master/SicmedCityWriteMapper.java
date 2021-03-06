package com.sicmed.ehis.mapper.master;

import com.sicmed.ehis.entity.SicmedCity;
import org.springframework.stereotype.Repository;

@Repository
public interface SicmedCityWriteMapper {
    int deleteByPrimaryKey(Short cityId);

    int insert(SicmedCity record);

    int insertSelective(SicmedCity record);

    SicmedCity selectByPrimaryKey(Short cityId);

    int updateByPrimaryKeySelective(SicmedCity record);

    int updateByPrimaryKey(SicmedCity record);
}