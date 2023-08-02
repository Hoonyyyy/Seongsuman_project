package com.mycompany.biz.common;

import org.aspectj.lang.JoinPoint;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class AfterAdvicePrac {
	
	private static final Logger logger = LoggerFactory.getLogger(AfterAdvicePrac.class);
	
	public void afterMethod(JoinPoint joinpoint) {
		logger.info("after로 출력해봅니다  : 강현수");
	}


}
