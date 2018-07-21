package com.alf.highest.operation.mapper;

import java.util.List;

import com.alf.highest.operation.pojo.BwtSite;
import com.alf.highest.operation.vo.BwtSiteVo;

public interface BwtSiteMapper {
    int deleteByPrimaryKey(Integer siteid);

    int insert(BwtSite record);

    int insertSelective(BwtSite record);

    BwtSite selectByPrimaryKey(Integer siteid);

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