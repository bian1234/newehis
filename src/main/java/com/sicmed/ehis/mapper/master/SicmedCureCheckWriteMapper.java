package com.sicmed.ehis.mapper.master;

import com.sicmed.ehis.entity.SicmedCureCheck;

public interface SicmedCureCheckWriteMapper {
    int insert(SicmedCureCheck record);

    int insertSelective(SicmedCureCheck record);
}