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
    <link href="${path}/resources/css/boardRegisterCSS.css" rel="stylesheet"/>
    <link href="${path}/resources/css/board.css" rel="stylesheet"/>
</head>
	<%@ include file="header.jsp" %>

 	<hr>
    <div id="back">
        
        <div id="main">
            <h2>${board.bbsid}번 게시물</h2>
            <form id="form" action="getBoardUpdatePage.do?bbsid=${board.bbsid}" method="post">
                <br>
                	 제목 : <input id="text" type="text" name="bbsTitle" value=' ${board.bbstitle}' readonly><br>
					 작성자 : <input id="text" type="text" name="bbsTitle" value=' ${board.userid}' readonly><br>
 					작성날짜 : <input id="text" type="text" name="bbsTitle" value=' ${board.bbsdate}' readonly>
                <br>
                <br>
                <textarea name="bbsContent" readonly>${board.bbscontent}</textarea>
                <br>
                
                 <c:if test="${sessionScope.userID == board.userid}">
                <input type="submit" value="수정">
                <input type="button" value="삭제" onclick="remove()">
                </c:if> 
            </form>
            
             <h2>댓글</h2>
            
            
            
            <div class="board_list_wrap" style="margin-top: -30px">
<%-- 	            <table class="board_list">
	                <caption>게시판 목록</caption>
	                <thead>
	                    <tr>
	                        <th>작성자</th><th>댓글</th><th>작성일</th>
	                    </tr>
	                </thead>
 	                <tbody>
	                		<c:forEach var="reply" items="${replys}">
							    <tr>
							        <td>${reply.userID}</td>
							        <td>${reply.replyContent}</td>
							        <td>
							        	<c:if test="${sessionScope.user.email eq reply.userID}">
							                ${reply.replyDate} &nbsp;&nbsp;&nbsp;<a href="replyRemove.do?replyID=${reply.replyID }&bbsID=${reply.bbsID}" style="color: red; font-weight: bold;">삭제</a>
							            </c:if>
							            <c:if test="${sessionScope.user.email ne reply.userID}">
							                ${reply.replyDate} &nbsp;&nbsp;&nbsp;<a style="color: blue; font-weight: bold;"></a>
							            </c:if>
							        </td>
							    </tr>
							</c:forEach>


	                </tbody>
	            </table>

	            <br>
	            
 	            <c:if test="${!empty sessionScope.userID or !empty sessionScope.user.email}">
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
				</c:if> --%>
	            
	            
        	</div>
            
            
        </div>
    </div>


    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>

	
	<script>

	
    function remove(){
        var result = confirm("삭제 하시겠습니까?");
        if (result == true){
            window.location.href = "deleteBoard.do?bbsid=${board.bbsid}";
        }
    }
    
    function loginPlz(){
    	alert('로그인을 해주시기 바랍니다.');
    	window.location.href = "boardDetail.do?bbsID=${bbs.bbsID}";
    }
    
	</script>
	
	
</body>
</html>