package com.alf.highest.personal.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.alf.highest.personal.mapper.BwtConnectorAddressMapper;
import com.alf.highest.personal.mapper.BwtConnectorTemplatePriceMapper;
import com.alf.highest.personal.pojo.BwtConnectorAddress;
import com.alf.highest.personal.pojo.BwtConnectorTemplatePrice;
import com.alf.highest.personal.service.PersonalPlaceService;
import com.alf.util.EasyUIDataPage;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
/**
 * 个人站点操作  接口的实现类
 * @author Administrator
 *
 */
@Service
public class PersonalPlaceServiceImpl implements PersonalPlaceService{
	@Autowired
	private BwtConnectorAddressMapper bwtConnectorAddressMapper;
	@Autowired
	private BwtConnectorTemplatePriceMapper bwtConnectorTemplatePriceMapper;
	/**
	 * 添加个人站点
	 * @param ba
	 * @return
	 */
	public String addPersonalAddress(BwtConnectorAddress ba) throws Exception{
		
		if(ba.getAddressid() != null && ba.getAddressid() > 0) {
			
			bwtConnectorAddressMapper.updateByPrimaryKeySelective(ba);
		}else {
			if(bwtConnectorAddressMapper.selectAllAddressSum(ba.getPersonalid()) >= 15) {
				return "2";
			}
			ba.setIstemplate(2);
			bwtConnectorAddressMapper.insertSelective(ba);
		}
		return "1";
	}
	/**
	 * 查询所有人的地址 管理区域
	 * @param page
	 * @param rows
	 * @return
	 */
	public EasyUIDataPage selectAllPersonalRegion(Integer page,Integer rows,Integer personalid) {
		PageHelper.startPage(page, rows);
		List<BwtConnectorAddress>  list = bwtConnectorAddressMapper.selectAllPersonalRegion(personalid);
		PageInfo info = new PageInfo(list);
		EasyUIDataPage easy = new EasyUIDataPage();
		easy.setRows(list);
		easy.setTotal(info.getTotal());
		return easy;
		
	}
	/**
	 * 查询一条 接件人地址
	 * @param addressid
	 * @return
	 */
	public BwtConnectorAddress selectByAddressid(Integer addressid) {
		BwtConnectorAddress bca = bwtConnectorAddressMapper.selectByPrimaryKey(addressid);
		if(bca.getLng() != null && bca.getLng().length() > 0 && bca.getLat() != null && bca.getLat().length() > 0) {
			bca.setLocation(bca.getLng()+","+bca.getLat());
		}
		return bca;
	}
	/**
	 * 删除个人地址
	 * @param addressid
	 * @return
	 */
	public void deleteByAddressid(Integer[] addressid) {
		for (Integer integer : addressid) {
			bwtConnectorAddressMapper.deleteByPrimaryKey(integer);
		}
	}
	/**
	 * 个人接件地址 下的所有模板
	 * @param page
	 * @param rows
	 * @param addressid 地址id
	 * @return
	 */
	public EasyUIDataPage selectTemplateAllData(Integer page,Integer rows,Integer addressid){
		PageHelper.startPage(page, rows);
		List<BwtConnectorTemplatePrice>  list = bwtConnectorAddressMapper.selectTemplateAllData(addressid);
		for (BwtConnectorTemplatePrice bwtConnectorTemplatePrice : list) {
			List<String> listName = bwtConnectorTemplatePriceMapper.selectAllByTemplatepriceAreaname(bwtConnectorTemplatePrice.getTemplateprice());
			bwtConnectorTemplatePrice.setProvince(listName);
		}
		PageInfo info = new PageInfo(list);
		EasyUIDataPage easy = new EasyUIDataPage();
		easy.setRows(list);
		easy.setTotal(info.getTotal());
		return easy;
		
	}
	/**
	 * 地点添加模板
	 * @param addressid 地点id
	 * @param templateprice 模板id
	 * @return
	 */
	public void addTemplateChoiceData(Integer addressid,Integer[] templateprice){
		for (Integer integer : templateprice) {
			bwtConnectorAddressMapper.addTemplateChoiceData(addressid, integer);
		}
	}
	/**
	 * 取消模板
	 * @param addressid 地点id
	 * @param templateprice 模板id
	 * @return
	 */
	public void delTemplateData(Integer addressid,Integer templateprice){
		bwtConnectorAddressMapper.delTemplateData(addressid, templateprice);
	}
}
