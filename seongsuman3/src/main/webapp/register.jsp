<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="${path}/resources/css/registerCSS.css" rel="stylesheet"/>
</head>
<body>

    <div id="main">
        <div class="banner"><a class="mainReturn" href="/biz/main.do">
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



        
        <section>

            <div class="form-box">

                <div class="form-value">

                    <form action="register.do" method="post">
                        <h2><spring:message code="message.user.register.mainTitle"/></h2>
                        <div class="inputbox">
                            <ion-icon name="mail-outline"></ion-icon>
                            <input type="email" name="userEmail" >
                            <label for=""><spring:message code="message.user.register.email"/></label>
                        </div>
                        <div class="inputbox">
                            <ion-icon name="lock-closed-outline"></ion-icon>
                            <input type="password" name="userPassword">
                            <label for=""><spring:message code="message.user.register.password"/></label>
                        </div>
                        <div class="inputbox">
                            <ion-icon name="people-outline"></ion-icon>
                            <input type="text" name="userName">
                            <label for=""><spring:message code="message.user.register.name"/></label>
                        </div>
                        <div class="inputbox">
                            <ion-icon name="business-outline"></ion-icon>
                            <input type="text" name="userAddress">
                            <label for=""><spring:message code="message.user.register.address"/></label>
                        </div>


                        <div class="inputbox2">
                            <input  id="registerInput" class="regiB" type="submit" value="<spring:message code="message.user.register.mainTitle"/>" onclick="register()">
                            <input class="regiB" type="button" value="<spring:message code="message.user.register.cancel"/>" onclick="cancel()">
                        </div>
                        
                        <br>
                        
                        <div style="text-align: center; font-size: 20px; font-weight: bolder;">
                        	<a href="register.do?lang=ko">한국어</a>
                        	<a href="register.do?lang=en">영어</a>
                        </div>                        

                    </form>
                    
                </div>

            </div>
        </section>

    </div>

    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>

    <script>
         function register(){
            alert('회원가입이 완료되었습니다.');
            window.location.href = 'register.jsp'
        }

        function cancel(){
        	/* window.location.href = "main.do"; */
            var result = confirm("취소 하시겠습니까?");
            if (result == true){
                window.location.href = "main.do";
            }
        }


    </script>

    <script>
        // 화면이동
/*         const searchButton = document.querySelector('.searchButton');
        const searchInput = document.querySelector('.searchInput');

        searchButton.addEventListener('click', function() {
            alert(searchInput.value + "에 대한 정보를 찾습니다.");
            searchInput.value = '';
        }); */

/*         searchInput.addEventListener('keydown', (e) => {
            if (e.key === 'Enter') {
                alert(searchInput.value + "에 대한 정보를 찾습니다.");
                searchInput.value = '';
            }
        }); */

    </script>

    </div>

</body>
</html>