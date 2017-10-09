package com.alf.highest.site.service.impl;

import java.util.List;
import java.util.Random;
import java.util.concurrent.locks.ReentrantLock;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.alf.highest.operation.mapper.SequenceMapper;
import com.alf.highest.operation.pojo.Sequence;
import com.alf.highest.site.mapper.BwtPersonalMapper;
import com.alf.highest.site.pojo.BwtPersonal;
import com.alf.highest.site.service.SitePersonalService;
import com.alf.util.EasyUIDataPage;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
@Service
public class SitePersonalServiceImpl implements SitePersonalService {
	@Autowired
	private SequenceMapper sequenceMapper;
	@Autowired
	private BwtPersonalMapper bwtPersonalMapper;
	
	/**
	 * 批量添加员工
	 * @param siteid
	 * @param amount
	 * @return
	 */
	@Transactional
	public  void addProportionPersonal(Integer siteid,Integer amount){
		ReentrantLock rl = new ReentrantLock();
		rl.lock();
		//自己的序列
		Sequence sequence = sequenceMapper.selectByPrimaryKey(2);
		Random ran = new Random();
		Integer seq = sequence.getIdvalue();
		for (int i = 0; i < amount; i++) {
			
			Integer str = ran.nextInt(90000) + 10000;
			String siteaccount = str.toString()+seq;
			BwtPersonal bp = new BwtPersonal();
			bp.setPersonalaccount(siteaccount);
			bp.setPersonalrole(3);
			bp.setPersonalpwd("123456");
			bp.setSiteid(siteid);
			seq++;
			bwtPersonalMapper.insertSelective(bp);
		}
		sequence.setIdvalue(seq);
		sequenceMapper.updateByPrimaryKeySelective(sequence);
		rl.unlock();
	}
	/**
	 * 查询所有员工
	 * @param bp
	 * @param page
	 * @param rows
	 * @return
	 */
	public EasyUIDataPage selectAllPersonalBySiteid(BwtPersonal bp,Integer page, Integer rows){
		if(bp.getPersonalname() != null && bp.getPersonalname().length() > 0)
			bp.setPersonalname(bp.getPersonalname());
		PageHelper.startPage(page, rows);
		List<BwtPersonal> list = bwtPersonalMapper.selectAllPersonalBySiteid(bp);
		PageInfo info = new PageInfo(list);
		EasyUIDataPage easy = new EasyUIDataPage();
		easy.setRows(list);
		easy.setTotal(info.getTotal());
		return easy;
	}
	/**
	 * 查看个人
	 * @param personalid
	 * @return
	 */
	public BwtPersonal selectByPersonalid(Integer personalid){
		return bwtPersonalMapper.selectByPrimaryKey(personalid);
		
	}
	/**
	 * 删除个人
	 * @return
	 */
	public void deleteByPersonalid(Integer[] personalid){
		for (Integer integer : personalid) {
			bwtPersonalMapper.deleteByPrimaryKey(integer);
		}
	}
}
