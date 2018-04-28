package com.alf.highest.personal.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.alf.highest.personal.pojo.BwtConnectorAddress;

public interface BwtConnectorAddressMapper {
    int deleteByPrimaryKey(Integer addressid);

    int insert(BwtConnectorAddress record);

    int insertSelective(BwtConnectorAddress record);

    BwtConnectorAddress selectByPrimaryKey(Integer addressid);

    int updateByPrimaryKeySelective(BwtConnectorAddress record);

    int updateByPrimaryKey(BwtConnectorAddress record);
	/**
	 * 查询所有人的地址 管理区域
	 * @return
	 */
    public List<BwtConnectorAddress> selectAllPersonalRegion(@Param("personalid")Integer personalid);
    /**
     * 个人下地址所有条数
     * @param personalid
     * @return
     */
    public Integer selectAllAddressSum(@Param("personalid")Integer personalid);
}