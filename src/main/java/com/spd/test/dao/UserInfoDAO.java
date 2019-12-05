package com.spd.test.dao;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.stereotype.Repository;

import com.spd.test.vo.UserVO;

@Repository
public class UserInfoDAO {

	@Resource
	SqlSessionFactory ssf;
	public List<String> selectUserList (UserVO user){
		SqlSession ss = ssf.openSession();
		try {
			return ss.selectList("com.spd.test.dao.UserInfoMapper.selectUserInfo",user);
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			ss.close();
		}
		return null;
	}
}
