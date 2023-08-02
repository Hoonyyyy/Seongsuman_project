//package com.mycompany.biz.common;
//
//import org.aspectj.lang.JoinPoint;
//import org.aspectj.lang.annotation.AfterThrowing;
//import org.aspectj.lang.annotation.Aspect;
//import org.springframework.stereotype.Service;
//
//@Service
//@Aspect
//public class AfterThrowingAdvice {
//	
//	@AfterThrowing(pointcut="PointcutCommon.allPointcut()", throwing="exceptObj")
//	public void exceptionLog(JoinPoint jp, Exception exceptObj) {
//		
//		String method = jp.getSignature().getName();
//
//		System.out.println(method + "() 硫붿냼�뱶 �닔�뻾 以� �삁�쇅 諛쒖깮!");
//		if (exceptObj instanceof IllegalArgumentException) {
//			System.out.println("遺��쟻�빀�븳 媛믪씠 �엯�젰�릺�뿀�뒿�땲�떎.");
//		} else if (exceptObj instanceof NumberFormatException) {
//			System.out.println("�닽�옄 �삎�떇�쓽 媛믪씠 �븘�떃�땲�떎.");
//		} else if (exceptObj instanceof Exception) {
//			System.out.println("臾몄젣媛� 諛쒖깮�뻽�뒿�땲�떎.");
//		}
//	}
//}
