package com.alf.highest.personal.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.alf.highest.personal.pojo.BwtConnectorAlonePrice;
import com.alf.highest.personal.pojo.bwtAloneMiddleArea;

public interface BwtConnectorAlonePriceMapper {
    int deleteByPrimaryKey(Integer aloneprice);

    int insert(BwtConnectorAlonePrice record);

    int insertSelective(BwtConnectorAlonePrice record);

    BwtConnectorAlonePrice selectByPrimaryKey(Integer aloneprice);

    int updateByPrimaryKeySelective(BwtConnectorAlonePrice record);

    int updateByPrimaryKey(BwtConnectorAlonePrice record);
    
    /**
     * 根据价格id 删除中间表
     * @param aloneprice
     */
    public void deleteMiddleByAloneprice(@Param("aloneprice")Integer aloneprice);
    /**
     * 添加中间表
     */
    public void addUpMiddle(@Param("listBMA")List<bwtAloneMiddleArea> listBMA);
    /**
     * 查询所有邮货地址 价格集合
     * @param addressid
     * @return
     */
    public List<BwtConnectorAlonePrice> selectAllAlonelPrice(@Param("addressid")Integer addressid);
    /**
     * 查询所有地点价格的 省份
     * @param aloneprice
     * @return
     */
    public List<String> selectByAlonepriceAreaname(@Param("aloneprice")Integer aloneprice);
}