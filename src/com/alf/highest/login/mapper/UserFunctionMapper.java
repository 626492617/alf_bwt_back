package com.alf.highest.login.mapper;

import com.alf.highest.login.pojo.UserFunction;
import com.alf.highest.login.pojo.UserFunctionExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface UserFunctionMapper {
    int countByExample(UserFunctionExample example);

    int deleteByExample(UserFunctionExample example);

    int deleteByPrimaryKey(Integer fid);

    int insert(UserFunction record);

    int insertSelective(UserFunction record);

    List<UserFunction> selectByExample(UserFunctionExample example);

    UserFunction selectByPrimaryKey(Integer fid);

    int updateByExampleSelective(@Param("record") UserFunction record, @Param("example") UserFunctionExample example);

    int updateByExample(@Param("record") UserFunction record, @Param("example") UserFunctionExample example);

    int updateByPrimaryKeySelective(UserFunction record);

    int updateByPrimaryKey(UserFunction record);
}