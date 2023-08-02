package com.mycompany.biz.user;

import java.util.ArrayList;
import java.util.List;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import com.mycompany.biz.board.BoardService;
import com.mycompany.biz.board.BoardVO;


public class UserServiceClient {

	public static void main(String[] args) {
		
	    // 스프링 컨테이너 초기화
	    AbstractApplicationContext container = new GenericXmlApplicationContext("applicationContext.xml");

	    // UserService
	    UserService userService = (UserService) container.getBean("userService");

	    // 롤백을 테스트할 데이터
	    UserVO user1 = new UserVO();
	    user1.setUserEmail("user1@test.com");
	    user1.setUserEmail("user1@test.com");
	    user1.setUserPassword("1234");
	    user1.setUserName("User1");

	    try {
	        // 첫 번째 사용자 추가
	        userService.insertUser(user1);


	    } catch (Exception e) {
	        // 롤백 발생 시 예외 처리
	        System.out.println("롤백이 발생했습니다.");
	        e.printStackTrace();
	    }
	    

	    
	    // 추가된 사용자 목록 출력
//	    List<UserVO> userList = userService.getUserList(new UserVO());
//	    System.out.println("사용자 목록:");
//	    for (UserVO user : userList) {
//	        System.out.println(user.getUserName() + " (" + user.getUserEmail() + ")");
//	    }

	    // 컨테이너 종료
	    container.close();
	}
}
