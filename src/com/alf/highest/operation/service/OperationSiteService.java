package com.alf.highest.operation.service;

import java.util.List;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alf.highest.operation.vo.BwtSiteVo;
import com.alf.highest.operation.vo.LinkageDown;
import com.alf.util.EasyUIDataPage;

public interface OperationSiteService {
	/**
	 * 查询城市 省份 地区  传过来的是 父级id
	 * @param parentid
	 * @return
	 */
	public List<LinkageDown> selectAllLinkage(Integer parentid);
	/**
	 * 集团批量添加站点
	 * @param vo
	 * @return
	 */
	public void addProportionSite(BwtSiteVo vo);
	/**
	 * 集团下的站点
	 * @param vo
	 * @param page
	 * @param rows
	 * @return
	 */
	public EasyUIDataPage selectAllSiteByCompanyid(BwtSiteVo vo,Integer page, Integer rows);
	/**
	 * 修改站点前的数据回显
	 * @param vo
	 * @return
	 */
	public BwtSiteVo selectBySiteidUpdatap(BwtSiteVo vo);
	/**
	 * 修改站点
	 * @param vo
	 * @return
	 */
	public void updataBySiteId(BwtSiteVo vo);
	/**
	 * 删除站点
	 * @param siteid
	 * @return
	 */
	public void deleteBysSite(Integer[] siteid);
}
