<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Refresh" content="1;url=login.do"><!-- 1초 동안 로그인 실패 -->
<title>Insert title here</title>
</head>
<body>
	<h2>로그인 실패</h2>
	<p>로그인 실패입니다. 이메일 또는 암호가 맞지 않습니다.<br>
	잠시후 다시 로그인 화면으로 넘어갑니다.</p>
	
</body>
</html>