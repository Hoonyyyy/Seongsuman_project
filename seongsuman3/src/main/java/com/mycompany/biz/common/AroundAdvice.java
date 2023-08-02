//package com.mycompany.biz.common;
//
//import org.aspectj.lang.ProceedingJoinPoint;
//import org.aspectj.lang.annotation.Around;
//import org.aspectj.lang.annotation.Aspect;
//import org.springframework.stereotype.Service;
//import org.springframework.util.StopWatch;
//
//@Service
//@Aspect
//public class AroundAdvice {
//	@Around("PointcutCommon.allPointcut()")
//	public Object aroundLog(ProceedingJoinPoint pjp) throws Throwable {
//		String method = pjp.getSignature().getName();
//		StopWatch stopWatch = new StopWatch();
//		stopWatch.start();
//		Object obj = pjp.proceed();
//		stopWatch.stop();
//		System.out.println(method + "() 硫붿냼�뱶 �닔�뻾�뿉 嫄몃┛ �떆媛� : " + stopWatch.getTotalTimeMillis() + "(ms)珥�");
//		return obj;
//	}
//}