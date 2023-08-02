package com.mycompany.view.user;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;



import com.mycompany.biz.user.UserVO;
import com.mycompany.biz.user.impl.UserDAO;

@Controller
public class LoginController{
	
	
	@RequestMapping(value="/login.do", method=RequestMethod.GET)
	public String login(UserVO vo) {
		
		return "login.jsp";
	}
	
	@RequestMapping(value="/login.do", method=RequestMethod.POST)
	public String login(UserVO vo, UserDAO userDAO, HttpSession session) throws IllegalAccessException {

		
		if(vo.getUserEmail()==null || vo.getUserEmail()=="") {
			throw new IllegalAccessException("오류 발생");
		}
		if(userDAO.getUser(vo) != null) {
			session.setAttribute("username", userDAO.getUser(vo).getUserName());
			session.setAttribute("userID", userDAO.getUser(vo).getUserEmail());

			return "redirect:main.do";
		} else {
			

			
			return "login.jsp";
		}
	}
}