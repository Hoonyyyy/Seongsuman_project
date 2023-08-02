package com.mycompany.biz.user;

import java.util.List;

public interface UserService {

	public UserVO getUser(UserVO vo);
	public List<UserVO> getUserList(UserVO vo);
	public void insertUser(UserVO vo);
	
}
