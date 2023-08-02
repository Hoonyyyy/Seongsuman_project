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
</head>
<body>
    

    
    
    
	<%@ include file="header.jsp" %>
	
	

    <!-- 게시판 본문 -->
    <div id="main">
        <h1 id="h1" style="margin-top: 50px;">자유게시판</h1>
		<hr>
        <div class="board_list_wrap">
            <table class="board_list">
                <caption>게시판 목록</caption>
                <thead>
                    <tr>
                        <th>번호</th><th>제목</th><th>글쓴이</th><th>작성일</th><th>조회</th>
                    </tr>
                </thead>
                <tbody>
                	<c:forEach items="${boardList}" var="bbs" >
						<tr>
							<td>${bbs.bbsid}</td>
							<td><a href="getBoard.do?bbsid=${bbs.bbsid }">${bbs.bbstitle}</a></td>
							<td>${bbs.userid}</td>
							<td>${bbs.bbsdate}</td>
							<td>100</td>
						</tr>
					</c:forEach>
                </tbody>
            </table>

            <div class="register">
                <a href="#" class="bt" onclick="checkUser()">게시물 등록</a>
            </div>

            <div class="paging">
                <a href="#" class="bt">첫 페이지</a>
                <a href="#" class="bt">이전 페이지</a>
                <a href="#" class="num on">1</a>
                <a href="#" class="num">2</a>
                <a href="#" class="num">3</a>
                <a href="#" class="bt">다음 페이지</a>
                <a href="#" class="bt">마지막 페이지</a>
            </div>
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
	    function checkUser() {
	        var userID = '${sessionScope.userID}';
	        
	        if (userID) {

	            window.location.href = './boardRegister.jsp';
	        } else {

	            alert('로그인해주세요.');
	        }
	    }
	</script>

</body>
</html>