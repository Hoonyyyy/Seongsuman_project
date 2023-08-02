package com.mycompany.biz.board;

import java.util.List;

public interface BoardService {
	
	// CRUD 
	// 추가
	void insertBoard(BoardVO vo);

	// 수정
	void updateBoard(BoardVO vo);

	// 삭제
	void deleteBoard(BoardVO vo);

	// 상세보기
	BoardVO getBoard(BoardVO vo);

	// 전체보기
	List<BoardVO> getBoardList(BoardVO vo);
}
