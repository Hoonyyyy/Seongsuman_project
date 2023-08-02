package com.mycompany.biz.common;

import org.aspectj.lang.JoinPoint;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class BeforeAdvicePrac {
	
	private static final Logger logger = LoggerFactory.getLogger(BeforeAdvicePrac.class);
	
	public void beforeMethod(JoinPoint joinPoint) {
		logger.debug("before에서 출력해봅니다 : 강현수");
	}

	
	
}
