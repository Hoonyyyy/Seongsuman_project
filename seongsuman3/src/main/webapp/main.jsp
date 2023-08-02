<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Insert title here</title>
    <link rel="stylesheet" href="normalize.css">
    <link href="${path}/resources/css/mainCSS.css" rel="stylesheet"/>
</head>
<body>
	<%@ include file="header.jsp" %>

    <!-- 1위,2위 3위 들어감, 그리고 뒤에는 블라인드 준 카페들 배경사진들 랜덤으로 출력 -->
    <div id="container2">
        <h1>Cafe of the Month</h1><br>
        <div id="grade">
            <ul>
                <li id="grade2se" onclick="detailCafe()">
                    <div id="2se" class="grade" onclick="detailCafe()">대림창고</div>

                </li>
                <li id="grade1fi">
                    <div id="1fi" class="grade">마들렌</div>

                </li>
                <li id="grade3th">
                    <div id="3th" class="grade">어니언</div>

                </li>
            </ul>
        </div>





    </div>
    
    <!-- 카페 종류들 -->
    <div id="container3">
        <div id="container3Inner">
            <h1>Cafe List</h1>
            <div id="listUL">
                <div id="listLI" class="listLi1">
                    <div class="listClass"></div>
                    <div class="listClass"></div>
                </div>
                <div id="listLI" class="listLi2">
                    <div class="listClass"></div>
                    <div class="listClass"></div>
                </div>
                <div id="listLI" class="listLi2">
                    <div class="listClass"></div>
                    <div class="listClass"></div>
                </div>

                <div id="listLI" class="listLi1">
                    <div class="listClass"></div>
                    <div class="listClass"></div>
                </div>
                <div id="listLI" class="listLi2">
                    <div class="listClass"></div>
                    <div class="listClass"></div>
                </div>
                <div id="listLI" class="listLi2">
                    <div class="listClass"></div>
                    <div class="listClass"></div>
                </div>

                <div id="listLI" class="listLi1">
                    <div class="listClass"></div>
                    <div class="listClass"></div>
                </div>
                <div id="listLI" class="listLi2">
                    <div class="listClass"></div>
                    <div class="listClass"></div>
                </div>
                <div id="listLI" class="listLi2">
                    <div class="listClass"></div>
                    <div class="listClass"></div>
                </div>
            </div>

            
        </div>
    </div>

    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>

     <script>
        // 화면이동
        function goDeatil(){
            window.location.href = "detailCafe.jsp";
        }

        document.getElementById("grade1fi").addEventListener("click", goDeatil);
        document.getElementById("grade2se").addEventListener("click", goDeatil);
        document.getElementById("grade3th").addEventListener("click", goDeatil);

        const searchButton = document.querySelector('.searchButton');
        const searchInput = document.querySelector('.searchInput');
    </script>
    
    <script>
    	function detailCafe(){
    		
    		window.location.href = "detailCafe.jsp";
    		
    	}
    </script>
    

</body>
</html>