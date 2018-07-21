package com.alf.highest.personal.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.alf.highest.personal.pojo.BwtConnectorAddress;
import com.alf.highest.personal.pojo.BwtConnectorTemplatePrice;

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
    /**
     * 根据地点id 查询该地点的所有模板
     * @param addressid
     * @return
     */
    public List<BwtConnectorTemplatePrice> selectTemplateAllData(@Param("addressid")Integer addressid);
    /**
     * 添加中间表 价格模板 与 地点
     * @param addressid
     * @param templateprice
     */
    public void addTemplateChoiceData(@Param("addressid")Integer addressid,@Param("templateprice")Integer templateprice);
    /**
     * 取消价格模板
     * @param addressid
     * @param templateprice
     */
    public void delTemplateData(@Param("addressid")Integer addressid,@Param("templateprice")Integer templateprice);
}