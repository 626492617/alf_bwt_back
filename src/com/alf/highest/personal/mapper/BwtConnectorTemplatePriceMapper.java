package com.alf.highest.personal.mapper;

import com.alf.highest.personal.pojo.BwtConnectorTemplatePrice;

public interface BwtConnectorTemplatePriceMapper {
    int deleteByPrimaryKey(Integer templateprice);

    int insert(BwtConnectorTemplatePrice record);

    int insertSelective(BwtConnectorTemplatePrice record);

    BwtConnectorTemplatePrice selectByPrimaryKey(Integer templateprice);

    int updateByPrimaryKeySelective(BwtConnectorTemplatePrice record);

    int updateByPrimaryKey(BwtConnectorTemplatePrice record);
}