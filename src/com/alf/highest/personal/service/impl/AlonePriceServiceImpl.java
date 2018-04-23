package com.alf.highest.personal.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.alf.highest.operation.vo.LinkageDown;
import com.alf.highest.personal.mapper.BwtConnectorAlonePriceMapper;
import com.alf.highest.personal.pojo.BwtConnectorAlonePrice;
import com.alf.highest.personal.pojo.bwtAloneMiddleArea;
import com.alf.highest.personal.service.AlonePriceService;
import com.alf.util.EasyUIDataPage;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

/**
 * 价格添加
 * @author Administrator
 *
 */
@Service
public class AlonePriceServiceImpl implements AlonePriceService{
	@Autowired
	private BwtConnectorAlonePriceMapper BwtConnectorAlonePriceMapper;
	/**
	 * 添加与修改
	 * @param bcap
	 * @return
	 */
	public void addIsUpdataAlonelPrice(BwtConnectorAlonePrice bcap) {
		if(bcap.getAloneprice() != null && bcap.getAloneprice() > 0) {
			BwtConnectorAlonePriceMapper.updateByPrimaryKeySelective(bcap);
			BwtConnectorAlonePriceMapper.deleteMiddleByAloneprice(bcap.getAloneprice());
			String[] Provincial = bcap.getProvincial().split(",");
			List<bwtAloneMiddleArea> list = new ArrayList<bwtAloneMiddleArea>();
			
			for (String string : Provincial) {
				bwtAloneMiddleArea bama = new bwtAloneMiddleArea();
				bama.setAloneprice(bcap.getAloneprice());
				bama.setId(Integer.parseInt(string));
				list.add(bama);
			}
			BwtConnectorAlonePriceMapper.addUpMiddle(list);
		}else {
			BwtConnectorAlonePriceMapper.insertSelective(bcap);
			String[] Provincial = bcap.getProvincial().split(",");
			List<bwtAloneMiddleArea> list = new ArrayList<bwtAloneMiddleArea>();
			System.out.println(Provincial.length);
			for (int i = 0 ; i < Provincial.length ; i++) {
				bwtAloneMiddleArea bama = new bwtAloneMiddleArea();
				bama.setAloneprice(bcap.getAloneprice());
				bama.setId(Integer.parseInt(Provincial[i]));
				list.add(bama);
			}
			BwtConnectorAlonePriceMapper.addUpMiddle(list);
		}
	}
	/**
	 * 查询个人地址  价格管理
	 * @param page
	 * @param rows
	 * @param addressid
	 * @return
	 */
	public EasyUIDataPage selectAllAlonelPrice(Integer page,Integer rows,Integer addressid) {
		PageHelper.startPage(page, rows);
		List<BwtConnectorAlonePrice>  list = BwtConnectorAlonePriceMapper.selectAllAlonelPrice(addressid);
		for (BwtConnectorAlonePrice bwtConnectorAlonePrice : list) {
			List<String> areanameList = BwtConnectorAlonePriceMapper.selectByAlonepriceAreaname(bwtConnectorAlonePrice.getAloneprice());
			bwtConnectorAlonePrice.setProvince(areanameList);
		}
		PageInfo info = new PageInfo(list);
		EasyUIDataPage easy = new EasyUIDataPage();
		easy.setRows(list);
		easy.setTotal(info.getTotal());
		return easy;
		
	}
	/**
	 * 修改个人地址价格
	 * @param aloneprice
	 * @return
	 */
	public BwtConnectorAlonePrice upDateAlonelPricePage(Integer aloneprice) {
		BwtConnectorAlonePrice bap = BwtConnectorAlonePriceMapper.selectByPrimaryKey(aloneprice);
		bap.setListDown(BwtConnectorAlonePriceMapper.selectAlonepriceByIdAreaName(aloneprice));
		return bap;
		
	}
}
