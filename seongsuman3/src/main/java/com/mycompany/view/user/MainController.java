package com.mycompany.view.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mycompany.biz.user.UserVO;

@Controller
public class MainController {
	
	@RequestMapping(value = "/main.do", method = RequestMethod.GET)
	public String main(UserVO vo) {
		
		return "main.jsp";
	}
	

}
