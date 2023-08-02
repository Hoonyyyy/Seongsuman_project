package com.mycompany.biz.board;

import java.util.List;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import com.mycompany.biz.board.BoardService;

public class BoardServiceClient  {

	public static void main(String args[]) {
		

		AbstractApplicationContext container = new GenericXmlApplicationContext("applicationContext.xml");
		

		BoardService boardService =  (BoardService)container.getBean("boardService"); 
		
		BoardVO vo = new BoardVO();
		vo.setBbstitle("타이틀");
		vo.setBbsid(1);
		vo.setBbscontent("내용");
	
		

		boardService.insertBoard(vo);
		
		

		List<BoardVO>  boardList = boardService.getBoardList(vo);   
		for(BoardVO board : boardList) {
			System.out.println("===> "+board.toString());
		}
		

		container.close();
		
	}
	
}
