package com.alf.highest.login.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.alf.highest.login.mapper.BwtCompanyMapper;
import com.alf.highest.login.mapper.RoleFunctionMapper;
import com.alf.highest.login.mapper.UserFunctionMapper;
import com.alf.highest.login.pojo.BwtCompany;
import com.alf.highest.login.pojo.RoleFunction;
import com.alf.highest.login.pojo.UserFunction;
import com.alf.highest.login.pojo.UserFunctionExample;
import com.alf.highest.login.service.LoginService;
import com.alf.highest.login.vo.BwtCompanyVo;
import com.alf.highest.login.vo.MenuInfo;
import com.alf.highest.operation.vo.BwtSiteVo;
import com.alf.highest.site.pojo.BwtPersonal;
@Service
public class LoginServiceImpl implements LoginService {
	@Autowired
	private BwtCompanyMapper bwtCompanyMapper;
	@Autowired
	private RoleFunctionMapper roleFunctionMapper;
	@Autowired
	private UserFunctionMapper userFunctionMapper;
	/**
	 * 查找用户  判断用户名密码是否正确
	 * @return
	 */
	public BwtCompanyVo findUser(BwtCompanyVo vo) {
		return bwtCompanyMapper.findUser(vo);
	}
	/**
	 *站点 判断用户名密码是否正确
	 * @return
	 */
	public BwtSiteVo siteUser(BwtSiteVo svo){
		return bwtCompanyMapper.siteUser(svo);
		
		
	}
	public BwtPersonal personalUser(BwtPersonal vo){
		return bwtCompanyMapper.personalUser(vo);
		
	}
	/**
	 * 查询一个集团
	 * @param companyid
	 */
	public BwtCompany findByUser(Integer companyid){
		return bwtCompanyMapper.selectByPrimaryKey(companyid);
		
	}
	/**
	 * 加载左面的数据 功能菜单
	 * @param user
	 * @return
	 */
	public List<MenuInfo> loadmainjsp(Integer urole){
		
		RoleFunction role = roleFunctionMapper.selectByPrimaryKey(urole);
		//父类id拆分
		String[] modular = role.getModular().split(",");
		//功能ID拆分
		String[] funs = role.getFuns().split(",");
		List<Integer> molist = new ArrayList<Integer>();
		List<Integer> funslist = new ArrayList<Integer>();
		for (String string : modular) {
			molist.add(Integer.parseInt(string));
		}
		for (String string : funs) {
			funslist.add(Integer.parseInt(string));
		}
		//要返回的集合
		List<MenuInfo> list = new ArrayList<MenuInfo>();
		//添加条件
		UserFunctionExample example = new UserFunctionExample();
		com.alf.highest.login.pojo.UserFunctionExample.Criteria c = example.createCriteria();
		c.andFidIn(molist);
		//查出父级
		List<UserFunction> userlist = userFunctionMapper.selectByExample(example);
		for (UserFunction userFunction : userlist) {
			//添加条件查询父级下的子级 功能
			UserFunctionExample example1 = new UserFunctionExample();
			com.alf.highest.login.pojo.UserFunctionExample.Criteria c1 = example1.createCriteria();
			c1.andParentidEqualTo(userFunction.getFid());
			c1.andFidIn(funslist);
			List<UserFunction>  parent = userFunctionMapper.selectByExample(example1);
			MenuInfo info = new MenuInfo();
			info.setFunc(parent);
			info.setID(userFunction.getFid());
			info.setName(userFunction.getFname());
			list.add(info);
		}
		return list;
	}
}
