package com.alf.highest.login.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.alf.highest.login.pojo.BwtCompany;
import com.alf.highest.login.pojo.BwtCompanyExample;
import com.alf.highest.login.vo.BwtCompanyVo;
import com.alf.highest.operation.vo.BwtSiteVo;
import com.alf.highest.site.pojo.BwtPersonal;

public interface BwtCompanyMapper {
    int countByExample(BwtCompanyExample example);

    int deleteByExample(BwtCompanyExample example);

    int deleteByPrimaryKey(Integer companyid);

    int insert(BwtCompany record);

    int insertSelective(BwtCompany record);

    List<BwtCompany> selectByExample(BwtCompanyExample example);

    BwtCompany selectByPrimaryKey(Integer companyid);

    int updateByExampleSelective(@Param("record") BwtCompany record, @Param("example") BwtCompanyExample example);

    int updateByExample(@Param("record") BwtCompany record, @Param("example") BwtCompanyExample example);

    int updateByPrimaryKeySelective(BwtCompany record);

    int updateByPrimaryKey(BwtCompany record);
    /**
	 * 查找用户  判断用户名密码是否正确
	 * @return
	 */
	public BwtCompanyVo findUser(BwtCompanyVo vo);
	/**
	 * 站点 判断用户名密码是否正确
	 * @return
	 */
	public BwtSiteVo siteUser(BwtSiteVo vo);
	/**
	 * 判断是个人登录
	 * @param vo
	 * @return
	 */
	public BwtPersonal personalUser(BwtPersonal vo);
	
}