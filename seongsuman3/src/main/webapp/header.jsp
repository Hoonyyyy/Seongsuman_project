<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Full Screen Div</title>
    <link rel="stylesheet" href="normalize.css">
    <link href="${path}/resources/css/headerCSS.css" rel="stylesheet"/>
</head>
<body>
<div id="container">
        <div id="header">

            <div id="headerLeft">
                <div class="banner"><a class="mainReturn" href="${path}/main.do">
                    <span>S</span>
                    <span>ᴇ</span>
                    <span>ᴏ</span>
                    <span>ɴ</span>
                    <span>ɢ</span>
                    <span>s</span>
                    <span>ᴜ</span>
                    <span>ᴍ</span>
                    <span>ᴀ</span>
                    <span class="scale-down">ɴ</span>
                    </a>
                </div>
                <div class="searchBox">

                    <input class="searchInput"type="text" name="" placeholder="Search"
                    style="font-weight: bold; font-family: 'poppins',sans-serif;"
                    >

                    <button class="searchButton" href="#">
                        <ion-icon name="search-outline"></ion-icon>
                    </button>

                </div>
        
            </div>
            <div id="headerRight">
                <div>
                    <div id="고객마당">고객마당
                        <div class="dropdown">
                            <a href="board.do">⦁ 자유게시판</a>
                            <a href="./report.jsp">⦁  폐업신고</a>
                        </div>
                    </div>
                    <div id="점포등록"><a href="./storeRegistration.jsp">점포등록</a></div>
                    
                    <!-- <div id="로그인"><a href="./login.do">로그인</a></div> -->
                    
                    <div id="로그인">
	                    <c:if test="${empty sessionScope.username}">
							<a href="<%=request.getContextPath()%>/login.do">LogIn</a>
						</c:if>
			
						<c:if test="${!empty sessionScope.username}">
							<span>
								 ${sessionScope.username }
								<a href="<%=request.getContextPath()%>/logout.do">LogOut</a>				
							</span>
	                    </c:if>
                    </div>
                </div>
            </div>
            
        </div>
    </div>
    
    
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
    
        <script>
        // 화면이동
/*         function goDeatil(){
            window.location.href = "detailCafe.jsp";
        }

        document.getElementById("grade1fi").addEventListener("click", goDeatil);
        document.getElementById("grade2se").addEventListener("click", goDeatil);
        document.getElementById("grade3th").addEventListener("click", goDeatil); */

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