package com.mycompany.view.board;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.mycompany.biz.board.BoardService;
import com.mycompany.biz.board.BoardVO;
import com.mycompany.biz.board.impl.BoardServiceImpl;
import com.mycompany.biz.user.UserVO;

@Controller
@SessionAttributes("board")
public class BoardController {
	

	@Autowired
	private BoardServiceImpl boardService;
	
	@RequestMapping(value = "/insertBoard.do")  //value �깮�왂媛��뒫
	public String insertBoard(BoardVO vo, HttpSession session) throws IOException {
		
		MultipartFile uploadFile = vo.getUploadFile();
		
		if(!uploadFile.isEmpty()) {
			String fileName = uploadFile.getOriginalFilename();
			uploadFile.transferTo(new File("C:\\Users\\user\\Desktop\\해보기\\"+fileName));
		}
		
		String userID = (String) session.getAttribute("userID");
		vo.setUserID(userID);
		
		boardService.insertBoard(vo);
		
		return "board.do";
	}
	
	@RequestMapping("/updateBoard.do")
	public String updateBoard(@ModelAttribute("board")BoardVO vo) {
		
		boardService.updateBoard(vo);
		
		return "board.do";
	}
	
	@RequestMapping("/deleteBoard.do")
	public String deleteBoard(BoardVO vo) {
		boardService.deleteBoard(vo);
		
		return "board.do";
	}
	
	@RequestMapping("/getBoard.do")
	public String getBoard(BoardVO vo, Model model) {
		
		model.addAttribute("board",boardService.getBoard(vo));
		return "boardDetail.jsp";
	}
	
	@RequestMapping("/getBoardUpdatePage.do")
	public String getBoard2(BoardVO vo, Model model) {
		
		model.addAttribute("board", boardService.getBoard(vo));
		return "boardUpdate.jsp";
	}


	@RequestMapping("/board.do")
	public String boardList(BoardVO vo, Model model) {	
		
		model.addAttribute("boardList", boardService.getBoardList(vo));
		
		return "board.jsp";
		
	}
	
	
	

}
