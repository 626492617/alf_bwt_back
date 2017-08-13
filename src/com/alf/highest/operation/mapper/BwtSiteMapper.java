package com.alf.highest.operation.mapper;

import com.alf.highest.operation.pojo.BwtSite;
import com.alf.highest.operation.pojo.BwtSiteExample;
import com.alf.highest.operation.vo.BwtSiteVo;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface BwtSiteMapper {
    int countByExample(BwtSiteExample example);

    int deleteByExample(BwtSiteExample example);

    int deleteByPrimaryKey(Integer siteid);

    int insert(BwtSite record);

    int insertSelective(BwtSite record);

    List<BwtSite> selectByExample(BwtSiteExample example);

    BwtSite selectByPrimaryKey(Integer siteid);

    int updateByExampleSelective(@Param("record") BwtSite record, @Param("example") BwtSiteExample example);

    int updateByExample(@Param("record") BwtSite record, @Param("example") BwtSiteExample example);

    int updateByPrimaryKeySelective(BwtSite record);

    int updateByPrimaryKey(BwtSite record);
	/**
	 * 集团下的站点
	 * @param vo
	 * @param page
	 * @param rows
	 * @return
	 */
    public List<BwtSiteVo> selectAllSiteByCompanyid(BwtSiteVo vo);
}