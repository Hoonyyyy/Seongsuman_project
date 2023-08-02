<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${path}/resources/css/boardRegisterCSS.css" rel="stylesheet"/>
</head>
<body>
		<%@ include file="header.jsp" %>

 	<hr>
    <div id="back">
        
        <div id="main">
            <h2>${board.bbsid}번 게시물 수정하기</h2>
            
            <%--  } --%>
            <form id="form" action="updateBoard.do" method="post">
                <br>
           	    <input id="text" type="text" name="bbstitle" value='${board.bbstitle}'>
                <br>
                <br>
                <textarea name="bbscontent">${board.bbscontent}</textarea>
                <br>
                
                <input type="submit" value="수정">
                <input type="button" value="취소" onclick="cancle()">
 				<br>
            </form>
            
 
            
            
        </div>
    </div>


    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>

	
	<script>
	
/* 	function update(){
		alert('수정이 완료되었습니다.');
		window.location.href = "boardUpdate.jsp";
	} */
	
    function cancle(){
        var result = confirm("수정을 취소 하시겠습니까?");
        if (result == true){
            window.location.href = "board.do";
        }
    }
	</script>
</body>
</html>