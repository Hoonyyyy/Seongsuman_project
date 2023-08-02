<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="header.jsp" %>
	
	<c:forEach var="reply" items="${replys}">
			
			${reply.bbsID }
			${reply.replyID }
			${reply.userID }
			${reply.replyContent }
			${reply.replyDate}<br><br>

	</c:forEach>
	
	
</body>
</html>