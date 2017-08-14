package com.alf.highest.site.mapper;

import com.alf.highest.site.pojo.BwtPersonal;
import com.alf.highest.site.pojo.BwtPersonalExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface BwtPersonalMapper {
    int countByExample(BwtPersonalExample example);

    int deleteByExample(BwtPersonalExample example);

    int deleteByPrimaryKey(Integer personalid);

    int insert(BwtPersonal record);

    int insertSelective(BwtPersonal record);

    List<BwtPersonal> selectByExample(BwtPersonalExample example);

    BwtPersonal selectByPrimaryKey(Integer personalid);

    int updateByExampleSelective(@Param("record") BwtPersonal record, @Param("example") BwtPersonalExample example);

    int updateByExample(@Param("record") BwtPersonal record, @Param("example") BwtPersonalExample example);

    int updateByPrimaryKeySelective(BwtPersonal record);

    int updateByPrimaryKey(BwtPersonal record);
    /**
	 * 查询所有员工
	 * @param bp
	 * @return
	 */
	public List<BwtPersonal> selectAllPersonalBySiteid(BwtPersonal bp);
}