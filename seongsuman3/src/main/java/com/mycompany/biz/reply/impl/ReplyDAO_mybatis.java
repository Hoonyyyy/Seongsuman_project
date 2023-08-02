//package com.mycompany.biz.reply.impl;
//
//import java.util.List;
//
//import org.mybatis.spring.SqlSessionTemplate;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Repository;
//
//import com.mycompany.biz.reply.ReplyVO;
//
//@Repository
//public class ReplyDAO_mybatis {
//	
//	@Autowired
//	private SqlSessionTemplate mybatis;
//	
//	//추가
////	public void insertReply(ReplyVO vo) {
////		mybatis.insert("ReplyDAO.insertReply",vo);
////	}
//	
//	//삭제
////	public void deleteReply(ReplyVO vo) {
////		mybatis.delete("ReplyDAO.deleteReply",vo);
////	}
//	
//	// 들어가 있는곳 리스트로 보기
//	public List<ReplyVO> getReplyList(ReplyVO vo){
//		return mybatis.selectList("ReplyDAO.getReplyList",vo);
//	}
//
//}
