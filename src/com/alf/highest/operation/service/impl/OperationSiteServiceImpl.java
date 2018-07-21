package com.alf.highest.operation.service.impl;

import java.util.List;
import java.util.Random;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import com.alf.highest.operation.mapper.BwtSiteMapper;
import com.alf.highest.operation.mapper.PbAreaMapper;
import com.alf.highest.operation.mapper.SequenceMapper;
import com.alf.highest.operation.pojo.BwtSite;
import com.alf.highest.operation.pojo.Sequence;
import com.alf.highest.operation.service.OperationSiteService;
import com.alf.highest.operation.vo.BwtSiteVo;
import com.alf.highest.operation.vo.LinkageDown;
import com.alf.util.EasyUIDataPage;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
@Service
public class OperationSiteServiceImpl implements OperationSiteService{
	@Autowired
	private BwtSiteMapper bwtSiteMapper;
	@Autowired
	private PbAreaMapper pbAreaMapper;
	@Autowired
	private SequenceMapper sequenceMapper;
	/**
	 * 查询城市 省份 地区  传过来的是 父级id
	 * @param parentid
	 * @return
	 */
	public List<LinkageDown> selectAllLinkage(Integer parentid){
		return pbAreaMapper.selectAllLinkage(parentid);
		
	}
	/**
	 * 集团批量添加站点
	 * @param vo
	 * @return
	 */
	public synchronized void  addProportionSite(BwtSiteVo vo){
		//查询站点 序列
		Sequence sequence = sequenceMapper.selectByPrimaryKey(1);
		Random ran = new Random();
		Integer seq = sequence.getIdvalue();
		for (int i = 0; i < vo.getAmount(); i++) {
			
			Integer str = ran.nextInt(9000) + 1000;
			String siteaccount = str.toString()+seq;
			BwtSiteVo vos = new BwtSiteVo();
			BeanUtils.copyProperties(vo, vos);
			vos.setSiterole(2);
			vos.setSiteConfirm(1);
			vos.setSiteaccount(siteaccount);
			vos.setSitepwd("123456");
			seq++;
			bwtSiteMapper.insertSelective(vos);
		}
		sequence.setIdvalue(seq);
		sequenceMapper.updateByPrimaryKey(sequence);
	}
	/**
	 * 集团下的站点
	 * @param vo
	 * @param page
	 * @param rows
	 * @return
	 */
	public EasyUIDataPage selectAllSiteByCompanyid(BwtSiteVo vo,@RequestParam(defaultValue = "1") Integer page, Integer rows){
		PageHelper.startPage(page, rows);
		List<BwtSiteVo>  list = bwtSiteMapper.selectAllSiteByCompanyid(vo);
		PageInfo info = new PageInfo(list);
		EasyUIDataPage easy = new EasyUIDataPage();
		easy.setRows(list);
		easy.setTotal(info.getTotal());
		return easy;
		
	}
	/**
	 * 修改站点前的数据回显
	 * @param vo
	 * @return
	 */
	public BwtSiteVo selectBySiteidUpdatap(BwtSiteVo vo){
		BwtSite bs = bwtSiteMapper.selectByPrimaryKey(vo.getSiteid());
		BeanUtils.copyProperties(bs, vo);
		
		if(bs.getLng() != null && bs.getLng().length() > 0 && bs.getLat() != null && bs.getLat().length() > 0) {
			vo.setLocation(bs.getLng()+","+bs.getLat());
		}
		return vo;
		
	}
	/**
	 * 修改站点
	 * @param vo
	 * @return
	 */
	public void updataBySiteId(BwtSiteVo vo){
		bwtSiteMapper.updateByPrimaryKeySelective(vo);
	}
	/**
	 * 删除站点
	 * @param siteid
	 * @return
	 */
	public void deleteBysSite(Integer[] siteid){
		for (Integer integer : siteid) {
			bwtSiteMapper.deleteByPrimaryKey(integer);
		}
	}
}
