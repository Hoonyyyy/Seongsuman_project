<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="${path}/resources/css/boardCSS.css" rel="stylesheet"/>
    <link href="${path}/resources/css/boardRegisterCSS.css" rel="stylesheet"/>
</head>
<body>
	<div class="board_list_wrap" style="margin-top: -30px">
	            <table class="board_list">
	                <caption>게시판 목록</caption>
	                <thead>
	                    <tr>
	                        <th>작성자</th><th>댓글</th><th>작성일</th>
	                    </tr>
	                </thead>
	                <tbody>
 	                	<tr>
	                        <td>abc@naver.com</td><td>카페추천카페추천카페추천카페추천카페추천카페추천카페추천</td>
	                        <td>2023-06-12&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	                        	<a href="#" style="color: red; font-weight: bold;">삭제</a>
	                        </td>
	                    </tr>

	                
	                
  	                	<c:forEach var="reply" items="${replys}">
							<tr>
								
								<td>${reply.userID }</td>
								<td>${reply.replyContent}</td>
								<td>${reply.replyDate}</td>
							</tr>
						</c:forEach>
	                </tbody>
	            </table>
	            <br>
	            
	            <c:if test="${!empty sessionScope.user or !empty sessionScope.user.email}">
	            	<form id="form" action="replyAdd.do?bbsID=${bbs.bbsID }" method="post">
	            	댓글 : <input id="text" type="text" name="replyContent" value='' placeholder="댓글을 입력해주세요.">
	            	<input type="submit" value="입력">
					</form>
				</c:if>
				
				<c:if test="${empty sessionScope.user or empty sessionScope.user.email}">
	            	<form id="form" action="replyAdd.do?bbsID=${bbs.bbsID }" method="post">
	            	댓글 : <input id="text" type="text" name="replyContent" value='' placeholder="댓글을 입력해주세요." onclick="loginPlz()">
	            	<input type="submit" value="입력">
					</form>
				</c:if>
	            
	            
        	</div>
</body>
</html>