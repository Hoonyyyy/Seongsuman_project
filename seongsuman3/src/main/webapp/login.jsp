<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
<head>
  <link href="${path}/resources/css/loginCSS.css" rel="stylesheet"/>
  <title>Insert title here</title>
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

                    <form action="login.do" method="post">
                        <h2><spring:message code="message.user.login.loginTitle"/></h2>
                        <div class="inputbox">
                            <ion-icon name="mail-outline"></ion-icon>
                            <input type="email" name="userEmail">
                            <label for=""><spring:message code="message.user.login.email"/></label>
                        </div>
                        <div class="inputbox">
                            <ion-icon name="lock-closed-outline"></ion-icon>
                            <input type="password" name="userPassword">
                            <label for=""><spring:message code="message.user.login.password"/></label>
                        </div>
                        <div class="forget">
                            <label for=""><input type="checkbox"><spring:message code="message.user.login.savepassword"/>  <a href="#"> <spring:message code="message.user.login.forgetpassword"/></a></label>
                        
                        </div>

                        <input class="button" type="submit" value="<spring:message code="message.user.login.loginTitle"/>">

                        <!-- <button onclick="login()">로그인</button> -->

                        <div class="register">
                            <p><spring:message code="message.user.login.donthave"/>  <a href="register.do"><spring:message code="message.user.login.register"/></a></p>
                        </div>
                        
                        <div style="text-align: center; font-size: 20px; font-weight: bolder;">
                        	<a href="login.do?lang=ko">한국어</a>
                        	<a href="login.do?lang=en">영어</a>
                        </div>
                        
                    </form>
                    
                </div>

            </div>
        </section>

    </div>

    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
<!--     <script>
        function login(){
            window.location.href = 'main.jsp';
        }
    </script> -->


</body>
</html>