package com.sicmed.ehis.mapper.slaver;

import com.sicmed.ehis.base.BaseReadMapper;
import com.sicmed.ehis.base.Query;
import com.sicmed.ehis.entity.SicmedMedicalClass;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public interface SicmedMedicalClassReadMapper extends BaseReadMapper<SicmedMedicalClass>{


    @Override
    List<SicmedMedicalClass> findAllList(Query query);

    /**
     *   查找一级分类
     */
    List<SicmedMedicalClass> firstClassification(SicmedMedicalClass sicmedMedicalClass);

    /**
     *  根据父id查询
     */
    List<SicmedMedicalClass> findChild(Map map);

    @Override
    SicmedMedicalClass selectById(String id);
}