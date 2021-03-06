package com.sicmed.ehis.mapper.slaver;

import com.sicmed.ehis.entity.SicmedRegisteredType;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface SicmedRegisteredTypeReadMapper {
    int deleteByPrimaryKey(String id);

    int insert(SicmedRegisteredType record);

    int insertSelective(SicmedRegisteredType record);

    SicmedRegisteredType selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(SicmedRegisteredType record);

    int updateByPrimaryKey(SicmedRegisteredType record);

    List<SicmedRegisteredType> selectByGrades(String codeGrades);

}