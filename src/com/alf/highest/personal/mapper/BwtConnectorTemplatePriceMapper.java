package com.alf.highest.personal.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.alf.highest.personal.pojo.BwtConnectorTemplatePrice;

public interface BwtConnectorTemplatePriceMapper {
    int deleteByPrimaryKey(Integer templateprice);

    int insert(BwtConnectorTemplatePrice record);

    int insertSelective(BwtConnectorTemplatePrice record);

    BwtConnectorTemplatePrice selectByPrimaryKey(Integer templateprice);

    int updateByPrimaryKeySelective(BwtConnectorTemplatePrice record);

    int updateByPrimaryKey(BwtConnectorTemplatePrice record);
    /**
     * 删除中间表
     * @param templateprice
     */
    public void deleteMiddleByTemplate(@Param("templateprice")Integer templateprice);
    /**
     * 添加中间表
     * @param id
     * @param templateprice
     */
    public void addTemplateMiddle(@Param("id")Integer id,@Param("templateprice")Integer templateprice);
    /**
     * 查询所有模板
     * @param templatetitle
     * @return
     */
    public List<BwtConnectorTemplatePrice> selectAllTemplatePrice(@Param("templatetitle")String templatetitle);
    /**
     * 根据模板id 查询城市名称
     * @param templateprice
     * @return
     */
    public List<String> selectAllByTemplatepriceAreaname(@Param("templateprice")Integer templateprice);
}