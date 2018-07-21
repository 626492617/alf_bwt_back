package com.alf.highest.personal.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.alf.highest.personal.mapper.BwtConnectorTemplatePriceMapper;
import com.alf.highest.personal.pojo.BwtConnectorAlonePrice;
import com.alf.highest.personal.pojo.BwtConnectorTemplatePrice;
import com.alf.highest.personal.service.PersonalTemplateService;
import com.alf.util.EasyUIDataPage;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
/**
 * 价格模板操作
 * @author Administrator
 *
 */
@Service
public class PersonalTemplateServiceImpl implements PersonalTemplateService {
	@Autowired
	private BwtConnectorTemplatePriceMapper bwtConnectorTemplatePriceMapper;
	/**
	 * 添加模板价格
	 * @param bctp
	 * @return
	 */
	public void  addIsUpTemplateAddress(BwtConnectorTemplatePrice bctp) {
		
		if(bctp.getTemplateprice() != null && bctp.getTemplateprice() > 0) {
			bwtConnectorTemplatePriceMapper.deleteMiddleByTemplate(bctp.getTemplateprice());
			bwtConnectorTemplatePriceMapper.updateByPrimaryKeySelective(bctp);
		}else {
			bwtConnectorTemplatePriceMapper.insertSelective(bctp);
		}
		//添加中间表
		String[] Provincial = bctp.getProvincial().split(",");
		for (String string : Provincial) {
			bwtConnectorTemplatePriceMapper.addTemplateMiddle(Integer.parseInt(string), bctp.getTemplateprice());
		}
	}
	/**
	 * 查看所有模板
	 * @param templatetitle
	 * @return
	 */
	public EasyUIDataPage selectAllTemplatePrice(String templatetitle,Integer personalid,Integer addressid,Integer page,Integer rows) {
		PageHelper.startPage(page, rows);
		/*List<BwtConnectorAlonePrice>  list = BwtConnectorAlonePriceMapper.selectAllAlonePrice(addressid);
		for (BwtConnectorAlonePrice bwtConnectorAlonePrice : list) {
			List<String> areanameList = BwtConnectorAlonePriceMapper.selectByAlonepriceAreaname(bwtConnectorAlonePrice.getAloneprice());
			bwtConnectorAlonePrice.setProvince(areanameList);
		}*/
		if(templatetitle != null && templatetitle.length() > 0) {
			templatetitle = "%"+templatetitle+"%";
		}else {
			templatetitle = null;
		}
		List<BwtConnectorTemplatePrice> list = bwtConnectorTemplatePriceMapper.selectAllTemplatePrice(templatetitle,personalid,addressid);
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
	 * 修改前先查看 价格模板
	 * @param templateprice
	 * @return
	 */
	public BwtConnectorTemplatePrice selectByTemplateprice(Integer templateprice){
		BwtConnectorTemplatePrice  bwtConnectorTemplatePrice = bwtConnectorTemplatePriceMapper.selectByPrimaryKey(templateprice);
		bwtConnectorTemplatePrice.setListId(bwtConnectorTemplatePriceMapper.selectAllByTemplatepriceId(templateprice));
		return bwtConnectorTemplatePrice;
		
	}
	/**
	 * 删除模板
	 * @param templateprice
	 * @return
	 */
	public void deleteByTemplateprice(Integer[] templateprice){
		for (Integer integer : templateprice) {
			bwtConnectorTemplatePriceMapper.deleteByPrimaryKey(integer);
			bwtConnectorTemplatePriceMapper.deleteMiddleByTemplate(integer);
			bwtConnectorTemplatePriceMapper.delTemplateDataTemplate(integer);
		}
	}
}
