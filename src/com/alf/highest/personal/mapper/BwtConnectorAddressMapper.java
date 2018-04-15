package com.alf.highest.personal.mapper;

import com.alf.highest.personal.pojo.BwtConnectorAddress;

public interface BwtConnectorAddressMapper {
    int deleteByPrimaryKey(Integer addressid);

    int insert(BwtConnectorAddress record);

    int insertSelective(BwtConnectorAddress record);

    BwtConnectorAddress selectByPrimaryKey(Integer addressid);

    int updateByPrimaryKeySelective(BwtConnectorAddress record);

    int updateByPrimaryKey(BwtConnectorAddress record);
}