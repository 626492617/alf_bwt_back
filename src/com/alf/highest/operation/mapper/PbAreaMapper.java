package com.alf.highest.operation.mapper;

import com.alf.highest.operation.pojo.PbArea;
import com.alf.highest.operation.pojo.PbAreaExample;
import com.alf.highest.operation.vo.LinkageDown;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface PbAreaMapper {
    int countByExample(PbAreaExample example);

    int deleteByExample(PbAreaExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(PbArea record);

    int insertSelective(PbArea record);

    List<PbArea> selectByExample(PbAreaExample example);

    PbArea selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") PbArea record, @Param("example") PbAreaExample example);

    int updateByExample(@Param("record") PbArea record, @Param("example") PbAreaExample example);

    int updateByPrimaryKeySelective(PbArea record);

    int updateByPrimaryKey(PbArea record);
    /**
	 * 查询城市 省份 地区  传过来的是 父级id
	 * @param parentid
	 * @return
	 */
	public List<LinkageDown> selectAllLinkage(@Param("parentid")Integer parentid);
}