package com.mycompany.biz.common;

import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;

@Aspect
public class PointcutCommon {
	
	@Pointcut("execution(* com.mycompany.biz..*impl.*(..))")
	public void allPointcut() {
	}

	@Pointcut("execution(* com.company.biz..*impl.get*(..))")
	public void getPointcut() {
	}
}
