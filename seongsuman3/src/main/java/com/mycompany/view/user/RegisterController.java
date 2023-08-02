package com.mycompany.view.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mycompany.biz.user.UserVO;
import com.mycompany.biz.user.impl.UserDAO;

@Controller
public class RegisterController {

	@RequestMapping(value = "/register.do", method = RequestMethod.GET)
	public String register(UserVO vo) {
		
		return "register.jsp";
	}
	
	@RequestMapping(value = "/register.do", method = RequestMethod.POST)
	public String register(UserVO vo, UserDAO userDAO)  {
		
		userDAO.insertUser(vo);
		return "redirect:main.do";
	}
	
}
