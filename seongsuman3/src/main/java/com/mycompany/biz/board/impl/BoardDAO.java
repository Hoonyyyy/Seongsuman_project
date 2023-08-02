//package com.mycompany.biz.board.impl;
//
//import java.sql.Connection;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//import java.util.ArrayList;
//import java.util.List;
//import org.springframework.stereotype.Repository;
//
//import com.mycompany.biz.board.BoardVO;
//import com.mycompany.biz.common.JDBCUtil;
//
//
//@Repository("boardDAO")
//public class BoardDAO {
//	
//	// JDBC 愿��젴 蹂��닔
//	private Connection conn = null;
//	private PreparedStatement stmt = null;
//	private ResultSet rs = null;
//	
//	// SQL 紐낅졊�뼱�뱾
//	private final String BOARD_INSERT = "insert into board(seq, title, writer,content) "
//			+ "values((select seq from(select ifnull(max(seq),0)+1 as seq from board) tmp),?,?,?)";
//	private final String BOARD_UPDATE = "update board set title=?, content=? where seq=?";
//	private final String BOARD_DELETE = "delete from board where seq=?";
//	private final String BOARD_GET = "select * from board where seq=?";
//	private final String BOARD_LIST = "select * from board order by seq desc";
//	//寃��깋
//	private final String BOARD_LIST_T = "select * from board where title like ? order by seq desc";
//	private final String BOARD_LIST_C = "select * from board where content like ? order by seq desc";

	// CRUD 湲곕뒫�쓽 硫붿냼�뱶 援ы쁽
	// 湲� �벑濡�
//	public void insertBoard(BoardVO vo) {
//		System.out.println("===> JDBC濡� insertBoard() 湲곕뒫 泥섎━");
//		try {
//			conn = JDBCUtil.getConnection();
//			stmt = conn.prepareStatement(BOARD_INSERT);
//			stmt.setString(1, vo.getTitle());
//			stmt.setString(2, vo.getWriter());
//			stmt.setString(3, vo.getContent());
//			stmt.executeUpdate();
//		} catch (Exception e) {
//			e.printStackTrace();
//		} finally {
//			JDBCUtil.close(stmt, conn);
//		}
//	}
//
//	// 湲� �닔�젙
//	public void updateBoard(BoardVO vo) {
//		System.out.println("===> JDBC濡� updateBoard() 湲곕뒫 泥섎━");
//		try {
//			conn = JDBCUtil.getConnection();
//			stmt = conn.prepareStatement(BOARD_UPDATE);
//			stmt.setString(1, vo.getTitle());
//			stmt.setString(2, vo.getContent());
//			stmt.setInt(3, vo.getSeq());
//			stmt.executeUpdate();
//		} catch (Exception e) {
//			e.printStackTrace();
//		} finally {
//			JDBCUtil.close(stmt, conn);
//		}
//	}
//
//	// 湲� �궘�젣
//	public void deleteBoard(BoardVO vo) {
//		System.out.println("===> JDBC濡� deleteBoard() 湲곕뒫 泥섎━");
//		try {
//			conn = JDBCUtil.getConnection();
//			stmt = conn.prepareStatement(BOARD_DELETE);
//			stmt.setInt(1, vo.getSeq());
//			stmt.executeUpdate();
//		} catch (Exception e) {
//			e.printStackTrace();
//		} finally {
//			JDBCUtil.close(stmt, conn);
//		}
//	}
//
//	// 湲� �긽�꽭 議고쉶
//	public BoardVO getBoard(BoardVO vo) {
//		System.out.println("===> JDBC濡� getBoard() 湲곕뒫 泥섎━");
//		BoardVO board = null;
//		try {
//			conn = JDBCUtil.getConnection();
//			stmt = conn.prepareStatement(BOARD_GET);
//			stmt.setInt(1, vo.getSeq());
//			rs = stmt.executeQuery();
//			if (rs.next()) {
//				board = new BoardVO();
//				board.setSeq(rs.getInt("SEQ"));
//				board.setTitle(rs.getString("TITLE"));
//				board.setWriter(rs.getString("WRITER"));
//				board.setContent(rs.getString("CONTENT"));
//				board.setRegDate(rs.getDate("REGDATE"));
//				board.setCnt(rs.getInt("CNT"));
//			}
//		} catch (Exception e) {
//			e.printStackTrace();
//		} finally {
//			JDBCUtil.close(rs, stmt, conn);
//		}
//		return board;
//	}

	// 湲� 紐⑸줉 議고쉶
//	public List<BoardVO> getBoardList(BoardVO vo, String user) {
//		System.out.println("리스트 연결");
//		List<BoardVO> boardList = new ArrayList<BoardVO>();
//		try {
//			conn = JDBCUtil.getConnection();
//			
////			if(vo.getSearchCondition().equals("TITLE") && vo.getSearchKeyword().equals("") || 
////					vo.getSearchCondition().equals("CONTENT") && vo.getSearchKeyword().equals("")) {
////				stmt = conn.prepareStatement(BOARD_LIST);
////			} else {
////				if(vo.getSearchCondition().equals("TITLE")) {
////					stmt = conn.prepareStatement(BOARD_LIST_T);
////				} else if (vo.getSearchCondition().equals("CONTENT")) {
////					stmt = conn.prepareStatement(BOARD_LIST_C);
////				}
////				stmt.setString(1, "%"+vo.getSearchKeyword()+"%"); //遺�遺꾧��깋
////			}
//			
//			rs = stmt.executeQuery();
//			while (rs.next()) {
//				BoardVO board = new BoardVO();
//				board.setBbsID(rs.getInt("bbsID"));
//				board.setBbsTitle(rs.getString("bbsTitle"));
//				board.setUserID(user);
//				board.setBbsDate(rs.getDate("bbsDate"));
//				board.setBbsContent(rs.getString("bbsContent"));
//				board.setBbsAvailable(rs.getInt("bbsAvailable"));
//				boardList.add(board);
//			}
//		} catch (Exception e) {
//			e.printStackTrace();
//		} finally {
//			JDBCUtil.close(rs, stmt, conn);
//		}
//		return boardList;
//	}
//}