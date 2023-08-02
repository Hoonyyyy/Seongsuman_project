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
</head>
<body>
    
	<%@ include file="header.jsp" %>

    <!-- 게시판 등록 -->

    <hr>
    <div id="back">
        
        <div id="main">
            <h1>게시물 등록하기</h1>
            <form id="form" action="insertBoard.do" method="post" enctype="multipart/form-data">
                <br>
                <input id="text" type="text" name="bbstitle" placeholder="제목을 입력해주세요">
                <br>
                <br>
                <textarea name="bbscontent" placeholder="내용을 입력해주세요."></textarea>
                <br>
                <input type="file" name="uploadFile" style="margin-left: 100px">
                <br>
                <br>
                <input type="submit" value="등록"">
                <input type="button" value="취소" onclick="cancel()">
            </form>
            <br>
        </div>
    </div>









    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>


    <script>
        // 화면이동
        const searchButton = document.querySelector('.searchButton');
        const searchInput = document.querySelector('.searchInput');

        searchButton.addEventListener('click', function() {
            alert(searchInput.value + "에 대한 정보를 찾습니다.");
            searchInput.value = '';
        });

        searchInput.addEventListener('keydown', (e) => {
            if (e.key === 'Enter') {
                alert(searchInput.value + "에 대한 정보를 찾습니다.");
                searchInput.value = '';
            }
        });

    </script>

<script>

        function cancel(){
            var result = confirm("취소 하시겠습니까?");
            if (result == true){
                window.location.href = "board.do";
            }
        }


</script>

</body>
</html>l>