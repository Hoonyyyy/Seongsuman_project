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
    <link href="${path}/resources/css/reportCSS.css" rel="stylesheet"/>
</head>
<body>
    <%@ include file="header.jsp" %>

    <!-- 폐업신고 본문 -->
    <div id="main">
        <h1 id="h1" style="margin-top: 50px;">폐업신고 게시판</h1>
		<hr>
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

</body>
</html>