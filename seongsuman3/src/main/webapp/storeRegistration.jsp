<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Full Screen Div</title>
<link href="${path}/resources/css/storeregisterCSS.css" rel="stylesheet"/>
<script src="./js/jquery-3.6.4.js"></script>
<script src="http://code.jquery.com/jquery-latest.js"></script> 
</head>
<body>

	<%@ include file="header.jsp" %>

	<!-- 점포등록하기 -->
	
	<div id="main">
		<h1 id="h1" style="margin-top: 50px;">점포 등록 하기</h1>
		<hr>

		<div id="registerMain">
			<div id="registerInner">

				<div class="name">
					<h2>상호명</h2>
					<textarea class="textarea" 
								placeholder="상호명을 입력해주세요." width="300px"></textarea>
				</div>

				<div class="name">
					<h2>가게 간단한 설명</h2>
					<textarea class="textarea"
							placeholder="메인에 보여 가게의 간단한 설명을 해주세요 ex)성수에서 커피로 제일 맛있는집"></textarea>
				</div>

				<div class="open">
					<h2>대표 사진 (*3개 사진 필수 입력)</h2>
					<input type="file" id="inputImage">
					  <div class="image-container"></div>
					  
				</div>

				<div class="location">
					<h2>지역</h2>
					<form action="action.jsp" class="location2">
						<input type="radio" name="location" value="1ga1dong" checked >성수 1가 1동
						<input type="radio" name="location" value="1ga2dong">성수1가 2동
						<br>
						<input type="radio" name="location" value="2ga1dong">성수 2가 1동
						<input type="radio" name="location" value="2ga2dong">성수2가 2동
	
					</form>
				</div>

				<div class="injan">
					<h2>1인 1잔</h2>
					<form action="action.jsp" class="jan">
						<input type="radio" name="jan" value="janYes" checked >예
						<input type="radio" name="jan" value="janNo">아니요

	
					</form>
				</div>

				<div class="useTime">
					<h2>1잔당 이용 가능시간</h2>
					<form action="action.jsp" class="useTime">
						<input type="radio" name="useTime" value="time1" checked >1시간
						<input type="radio" name="useTime" value="time2">2시간
						<input type="radio" name="useTime" value="time3">3시간
						<br>
						<input type="radio" name="useTime" value="time4">4시간
						<input type="radio" name="useTime" value="time5">5시간
						<input type="radio" name="useTime" value="time0">무제한
	
					</form>
				</div>




                <!-- 주요 메뉴 -->
				<div class="mainMenu">
                    <h2>주요메뉴</h2>
                    <div class="menuInput">
                    <input type="text" id="menuInput" placeholder="메뉴를 입력하세요">
                    <input type="button" id="addMenu" value="메뉴 추가">
                    </div>
                    <ul class="menuList"></ul>
                </div>





                <!-- 영업시간 -->
                <div class="workTime">
                    <h2>영업시간</h2>
                    <small>요일별로 입력해주세요.</small><br>
                    <hr>
                    <form action="#">
                        <label for="lang" style="font-weight: bolder; margin-right: 5px;">월요일</label>
                        <select name="timeN" id="timeI" style="height: 30px; font-size: 15px;">
                            <option value="tzero">휴무</option>
                            <option value="t0">00:00</option>
                            <option value="t1">01:00</option>
                            <option value="t2">02:00</option>
                            <option value="t3">03:00</option>
                            <option value="t4">04:00</option>
                            <option value="t5">05:00</option>
                            <option value="t6">06:00</option>
                            <option value="t7">07:00</option>
                            <option value="t8">08:00</option>
                            <option value="t9">09:00</option>
                            <option value="t10">10:00</option>
                            <option value="t11">11:00</option>
                            <option value="t12">12:00</option>
                            <option value="t13">13:00</option>
                            <option value="t14">14:00</option>
                            <option value="t15">15:00</option>
                            <option value="t16">16:00</option>
                            <option value="t17">17:00</option>
                            <option value="t18">18:00</option>
                            <option value="t19">19:00</option>
                            <option value="t20">20:00</option>
                            <option value="t21">21:00</option>
                            <option value="t22">22:00</option>
                            <option value="t23">23:00</option>
                        </select>
                        <span>ㅡ</span>
                        <select name="timeN" id="timeI" style="height: 30px; font-size: 15px;">
                            <option value="tzero">휴무</option>
                            <option value="t0">00:00</option>
                            <option value="t1">01:00</option>
                            <option value="t2">02:00</option>
                            <option value="t3">03:00</option>
                            <option value="t4">04:00</option>
                            <option value="t5">05:00</option>
                            <option value="t6">06:00</option>
                            <option value="t7">07:00</option>
                            <option value="t8">08:00</option>
                            <option value="t9">09:00</option>
                            <option value="t10">10:00</option>
                            <option value="t11">11:00</option>
                            <option value="t12">12:00</option>
                            <option value="t13">13:00</option>
                            <option value="t14">14:00</option>
                            <option value="t15">15:00</option>
                            <option value="t16">16:00</option>
                            <option value="t17">17:00</option>
                            <option value="t18">18:00</option>
                            <option value="t19">19:00</option>
                            <option value="t20">20:00</option>
                            <option value="t21">21:00</option>
                            <option value="t22">22:00</option>
                            <option value="t23">23:00</option>
                        </select>
                    </form>
                    <br>
                    <form action="#">
                        <label for="lang" style="font-weight: bolder; margin-right: 5px;">화요일</label>
                        <select name="timeN" id="timeI" style="height: 30px; font-size: 15px;">
                            <option value="tzero">휴무</option>
                            <option value="t0">00:00</option>
                            <option value="t1">01:00</option>
                            <option value="t2">02:00</option>
                            <option value="t3">03:00</option>
                            <option value="t4">04:00</option>
                            <option value="t5">05:00</option>
                            <option value="t6">06:00</option>
                            <option value="t7">07:00</option>
                            <option value="t8">08:00</option>
                            <option value="t9">09:00</option>
                            <option value="t10">10:00</option>
                            <option value="t11">11:00</option>
                            <option value="t12">12:00</option>
                            <option value="t13">13:00</option>
                            <option value="t14">14:00</option>
                            <option value="t15">15:00</option>
                            <option value="t16">16:00</option>
                            <option value="t17">17:00</option>
                            <option value="t18">18:00</option>
                            <option value="t19">19:00</option>
                            <option value="t20">20:00</option>
                            <option value="t21">21:00</option>
                            <option value="t22">22:00</option>
                            <option value="t23">23:00</option>
                        </select>
                        <span>ㅡ</span>
                        <select name="timeN" id="timeI" style="height: 30px; font-size: 15px;">
                            <option value="tzero">휴무</option>
                            <option value="t0">00:00</option>
                            <option value="t1">01:00</option>
                            <option value="t2">02:00</option>
                            <option value="t3">03:00</option>
                            <option value="t4">04:00</option>
                            <option value="t5">05:00</option>
                            <option value="t6">06:00</option>
                            <option value="t7">07:00</option>
                            <option value="t8">08:00</option>
                            <option value="t9">09:00</option>
                            <option value="t10">10:00</option>
                            <option value="t11">11:00</option>
                            <option value="t12">12:00</option>
                            <option value="t13">13:00</option>
                            <option value="t14">14:00</option>
                            <option value="t15">15:00</option>
                            <option value="t16">16:00</option>
                            <option value="t17">17:00</option>
                            <option value="t18">18:00</option>
                            <option value="t19">19:00</option>
                            <option value="t20">20:00</option>
                            <option value="t21">21:00</option>
                            <option value="t22">22:00</option>
                            <option value="t23">23:00</option>
                        </select>
                    </form>
                    <br>
                    <form action="#">
                        <label for="lang" style="font-weight: bolder; margin-right: 5px;">수요일</label>
                        <select name="timeN" id="timeI" style="height: 30px; font-size: 15px;">
                            <option value="tzero">휴무</option>
                            <option value="t0">00:00</option>
                            <option value="t1">01:00</option>
                            <option value="t2">02:00</option>
                            <option value="t3">03:00</option>
                            <option value="t4">04:00</option>
                            <option value="t5">05:00</option>
                            <option value="t6">06:00</option>
                            <option value="t7">07:00</option>
                            <option value="t8">08:00</option>
                            <option value="t9">09:00</option>
                            <option value="t10">10:00</option>
                            <option value="t11">11:00</option>
                            <option value="t12">12:00</option>
                            <option value="t13">13:00</option>
                            <option value="t14">14:00</option>
                            <option value="t15">15:00</option>
                            <option value="t16">16:00</option>
                            <option value="t17">17:00</option>
                            <option value="t18">18:00</option>
                            <option value="t19">19:00</option>
                            <option value="t20">20:00</option>
                            <option value="t21">21:00</option>
                            <option value="t22">22:00</option>
                            <option value="t23">23:00</option>
                        </select>
                        <span>ㅡ</span>
                        <select name="timeN" id="timeI" style="height: 30px; font-size: 15px;">
                            <option value="tzero">휴무</option>
                            <option value="t0">00:00</option>
                            <option value="t1">01:00</option>
                            <option value="t2">02:00</option>
                            <option value="t3">03:00</option>
                            <option value="t4">04:00</option>
                            <option value="t5">05:00</option>
                            <option value="t6">06:00</option>
                            <option value="t7">07:00</option>
                            <option value="t8">08:00</option>
                            <option value="t9">09:00</option>
                            <option value="t10">10:00</option>
                            <option value="t11">11:00</option>
                            <option value="t12">12:00</option>
                            <option value="t13">13:00</option>
                            <option value="t14">14:00</option>
                            <option value="t15">15:00</option>
                            <option value="t16">16:00</option>
                            <option value="t17">17:00</option>
                            <option value="t18">18:00</option>
                            <option value="t19">19:00</option>
                            <option value="t20">20:00</option>
                            <option value="t21">21:00</option>
                            <option value="t22">22:00</option>
                            <option value="t23">23:00</option>
                        </select>
                    </form>
                    <br>
                    <form action="#">
                        <label for="lang" style="font-weight: bolder; margin-right: 5px;">목요일</label>
                        <select name="timeN" id="timeI" style="height: 30px; font-size: 15px;">
                            <option value="tzero">휴무</option>
                            <option value="t0">00:00</option>
                            <option value="t1">01:00</option>
                            <option value="t2">02:00</option>
                            <option value="t3">03:00</option>
                            <option value="t4">04:00</option>
                            <option value="t5">05:00</option>
                            <option value="t6">06:00</option>
                            <option value="t7">07:00</option>
                            <option value="t8">08:00</option>
                            <option value="t9">09:00</option>
                            <option value="t10">10:00</option>
                            <option value="t11">11:00</option>
                            <option value="t12">12:00</option>
                            <option value="t13">13:00</option>
                            <option value="t14">14:00</option>
                            <option value="t15">15:00</option>
                            <option value="t16">16:00</option>
                            <option value="t17">17:00</option>
                            <option value="t18">18:00</option>
                            <option value="t19">19:00</option>
                            <option value="t20">20:00</option>
                            <option value="t21">21:00</option>
                            <option value="t22">22:00</option>
                            <option value="t23">23:00</option>
                        </select>
                        <span>ㅡ</span>
                        <select name="timeN" id="timeI" style="height: 30px; font-size: 15px;">
                            <option value="tzero">휴무</option>
                            <option value="t0">00:00</option>
                            <option value="t1">01:00</option>
                            <option value="t2">02:00</option>
                            <option value="t3">03:00</option>
                            <option value="t4">04:00</option>
                            <option value="t5">05:00</option>
                            <option value="t6">06:00</option>
                            <option value="t7">07:00</option>
                            <option value="t8">08:00</option>
                            <option value="t9">09:00</option>
                            <option value="t10">10:00</option>
                            <option value="t11">11:00</option>
                            <option value="t12">12:00</option>
                            <option value="t13">13:00</option>
                            <option value="t14">14:00</option>
                            <option value="t15">15:00</option>
                            <option value="t16">16:00</option>
                            <option value="t17">17:00</option>
                            <option value="t18">18:00</option>
                            <option value="t19">19:00</option>
                            <option value="t20">20:00</option>
                            <option value="t21">21:00</option>
                            <option value="t22">22:00</option>
                            <option value="t23">23:00</option>
                        </select>
                    </form>
                    <br>
                    <form action="#">
                        <label for="lang" style="font-weight: bolder; margin-right: 5px;">금요일</label>
                        <select name="timeN" id="timeI" style="height: 30px; font-size: 15px;">
                            <option value="tzero">휴무</option>
                            <option value="t0">00:00</option>
                            <option value="t1">01:00</option>
                            <option value="t2">02:00</option>
                            <option value="t3">03:00</option>
                            <option value="t4">04:00</option>
                            <option value="t5">05:00</option>
                            <option value="t6">06:00</option>
                            <option value="t7">07:00</option>
                            <option value="t8">08:00</option>
                            <option value="t9">09:00</option>
                            <option value="t10">10:00</option>
                            <option value="t11">11:00</option>
                            <option value="t12">12:00</option>
                            <option value="t13">13:00</option>
                            <option value="t14">14:00</option>
                            <option value="t15">15:00</option>
                            <option value="t16">16:00</option>
                            <option value="t17">17:00</option>
                            <option value="t18">18:00</option>
                            <option value="t19">19:00</option>
                            <option value="t20">20:00</option>
                            <option value="t21">21:00</option>
                            <option value="t22">22:00</option>
                            <option value="t23">23:00</option>
                        </select>
                        <span>ㅡ</span>
                        <select name="timeN" id="timeI" style="height: 30px; font-size: 15px;">
                            <option value="tzero">휴무</option>
                            <option value="t0">00:00</option>
                            <option value="t1">01:00</option>
                            <option value="t2">02:00</option>
                            <option value="t3">03:00</option>
                            <option value="t4">04:00</option>
                            <option value="t5">05:00</option>
                            <option value="t6">06:00</option>
                            <option value="t7">07:00</option>
                            <option value="t8">08:00</option>
                            <option value="t9">09:00</option>
                            <option value="t10">10:00</option>
                            <option value="t11">11:00</option>
                            <option value="t12">12:00</option>
                            <option value="t13">13:00</option>
                            <option value="t14">14:00</option>
                            <option value="t15">15:00</option>
                            <option value="t16">16:00</option>
                            <option value="t17">17:00</option>
                            <option value="t18">18:00</option>
                            <option value="t19">19:00</option>
                            <option value="t20">20:00</option>
                            <option value="t21">21:00</option>
                            <option value="t22">22:00</option>
                            <option value="t23">23:00</option>
                        </select>
                    </form>
                    <br>
                    <form action="#">
                        <label for="lang" style="font-weight: bolder; margin-right: 5px;">토요일</label>
                        <select name="timeN" id="timeI" style="height: 30px; font-size: 15px;">
                            <option value="tzero">휴무</option>
                            <option value="t0">00:00</option>
                            <option value="t1">01:00</option>
                            <option value="t2">02:00</option>
                            <option value="t3">03:00</option>
                            <option value="t4">04:00</option>
                            <option value="t5">05:00</option>
                            <option value="t6">06:00</option>
                            <option value="t7">07:00</option>
                            <option value="t8">08:00</option>
                            <option value="t9">09:00</option>
                            <option value="t10">10:00</option>
                            <option value="t11">11:00</option>
                            <option value="t12">12:00</option>
                            <option value="t13">13:00</option>
                            <option value="t14">14:00</option>
                            <option value="t15">15:00</option>
                            <option value="t16">16:00</option>
                            <option value="t17">17:00</option>
                            <option value="t18">18:00</option>
                            <option value="t19">19:00</option>
                            <option value="t20">20:00</option>
                            <option value="t21">21:00</option>
                            <option value="t22">22:00</option>
                            <option value="t23">23:00</option>
                        </select>
                        <span>ㅡ</span>
                        <select name="timeN" id="timeI" style="height: 30px; font-size: 15px;">
                            <option value="tzero">휴무</option>
                            <option value="t0">00:00</option>
                            <option value="t1">01:00</option>
                            <option value="t2">02:00</option>
                            <option value="t3">03:00</option>
                            <option value="t4">04:00</option>
                            <option value="t5">05:00</option>
                            <option value="t6">06:00</option>
                            <option value="t7">07:00</option>
                            <option value="t8">08:00</option>
                            <option value="t9">09:00</option>
                            <option value="t10">10:00</option>
                            <option value="t11">11:00</option>
                            <option value="t12">12:00</option>
                            <option value="t13">13:00</option>
                            <option value="t14">14:00</option>
                            <option value="t15">15:00</option>
                            <option value="t16">16:00</option>
                            <option value="t17">17:00</option>
                            <option value="t18">18:00</option>
                            <option value="t19">19:00</option>
                            <option value="t20">20:00</option>
                            <option value="t21">21:00</option>
                            <option value="t22">22:00</option>
                            <option value="t23">23:00</option>
                        </select>
                    </form>
                    <br>
                    <form action="#">
                        <label for="lang" style="font-weight: bolder; margin-right: 5px;">일요일</label>
                        <select name="timeN" id="timeI" style="height: 30px; font-size: 15px;">
                            <option value="tzero">휴무</option>
                            <option value="t0">00:00</option>
                            <option value="t1">01:00</option>
                            <option value="t2">02:00</option>
                            <option value="t3">03:00</option>
                            <option value="t4">04:00</option>
                            <option value="t5">05:00</option>
                            <option value="t6">06:00</option>
                            <option value="t7">07:00</option>
                            <option value="t8">08:00</option>
                            <option value="t9">09:00</option>
                            <option value="t10">10:00</option>
                            <option value="t11">11:00</option>
                            <option value="t12">12:00</option>
                            <option value="t13">13:00</option>
                            <option value="t14">14:00</option>
                            <option value="t15">15:00</option>
                            <option value="t16">16:00</option>
                            <option value="t17">17:00</option>
                            <option value="t18">18:00</option>
                            <option value="t19">19:00</option>
                            <option value="t20">20:00</option>
                            <option value="t21">21:00</option>
                            <option value="t22">22:00</option>
                            <option value="t23">23:00</option>
                        </select>
                        <span>ㅡ</span>
                        <select name="timeN" id="timeI" style="height: 30px; font-size: 15px;">
                            <option value="tzero">휴무</option>
                            <option value="t0">00:00</option>
                            <option value="t1">01:00</option>
                            <option value="t2">02:00</option>
                            <option value="t3">03:00</option>
                            <option value="t4">04:00</option>
                            <option value="t5">05:00</option>
                            <option value="t6">06:00</option>
                            <option value="t7">07:00</option>
                            <option value="t8">08:00</option>
                            <option value="t9">09:00</option>
                            <option value="t10">10:00</option>
                            <option value="t11">11:00</option>
                            <option value="t12">12:00</option>
                            <option value="t13">13:00</option>
                            <option value="t14">14:00</option>
                            <option value="t15">15:00</option>
                            <option value="t16">16:00</option>
                            <option value="t17">17:00</option>
                            <option value="t18">18:00</option>
                            <option value="t19">19:00</option>
                            <option value="t20">20:00</option>
                            <option value="t21">21:00</option>
                            <option value="t22">22:00</option>
                            <option value="t23">23:00</option>
                        </select>
                    </form>
                    <br>

                </div>

                <div class="name">
					<h2>매장 소개</h2>
					<textarea class="textarea"
							placeholder="매장을 소개해주세요."></textarea>
				</div>

                <div class="name">
					<h2>전화번호</h2>
					<textarea class="textarea"
							placeholder="매장 전화번호를 적어주세요. ex)02-123-4567"></textarea>
                </div>
                
                <div class="name">
					<h2>주소</h2>
					<textarea class="textarea"
							placeholder="매장 주소를 적어주세요 ex)서울 성동구 성수이로 xx길 xx"></textarea>
                </div>
                
                <div class="name">
					<h2>가까운역</h2>
					<textarea class="textarea"
							placeholder="가까운 역을 적어주세요 ex)성수역 5"></textarea>
                </div>

                 <div class="map">
                    <h2>지도</h2>
                    <table>
                        <tr>
                            <td>주소</td>
                            <td><input type="text" name="detailAddress" id="address" style="width: 250px;"></td>
                            <td><button type="button" id="searchBtn">검색</button></td>
                        </tr>
                    </table>
                    <div id="map" style="width:500px;height:400px;"></div>
                </div>
			</div>
		</div>




		<div id="incan">
            <div id="incan2">
			<input class="incan1" type="button" value="등록" onclick="register()">
			<input class="incan2" type="button" value="취소" onclick="cancel()">
            </div>
        </div>
        
 

	</div>
    

  <script>

	  /* img upload */
    const inputImage = document.getElementById('inputImage');
    const imageContainer = document.querySelector('.image-container');
    let imageCount = 0;

    inputImage.addEventListener('change', () => {
      const files = inputImage.files;

      if (files.length > 3 - imageCount) {
        alert(`최대 3개의 이미지만 선택 가능합니다.`);
        inputImage.value = '';
        return;
      }

      for (const file of files) {
        if (!file.type.match('image.*')) continue;

        const reader = new FileReader();
        reader.onload = (e) => {
          const img = document.createElement('img');
          img.src = e.target.result;
		  img.classList.add('image-preview');
		  
          img.addEventListener('click', () => {

            const newInput = document.createElement('input');
            newInput.type = 'file';
			newInput.accept = 'image/*';
			
            newInput.addEventListener('change', () => {
              const newFile = newInput.files[0];
              if (!newFile.type.match('image.*')) return;
              const newReader = new FileReader();
              newReader.onload = (newE) => {
                img.src = newE.target.result;
			  };
			  
			  newReader.readAsDataURL(newFile);
			  
            });
            newInput.click();
		  });
		  
          imageContainer.appendChild(img);
          imageCount++;
        };
        reader.readAsDataURL(file);

        if (imageCount >= 3) break;
      }
    });







    /* 메뉴추가 주요메뉴 칸 */

    const menuInput = document.getElementById('menuInput');
    const addMenuBtn = document.getElementById('addMenu');
    const menuList = document.querySelector('.menuList');

    addMenuBtn.addEventListener('click', () => {
      addMenu();
    });

    menuInput.addEventListener('keydown', (e) => {
      if (e.key === 'Enter') {
        addMenu();
        e.preventDefault();
      }
    });

    function addMenu() {
      const menuText = menuInput.value;
      if (menuText === '') return;

      if (menuList.children.length >= 5) {
        alert('최대 5개까지만 입력할 수 있습니다.');
        menuInput.value = ''
        return;
      }

      const li = document.createElement('li');
      li.textContent = menuText;

      const deleteBtn = document.createElement('button');
      deleteBtn.textContent = 'X';
      deleteBtn.addEventListener('click', () => {
        li.remove();
      });

      li.appendChild(deleteBtn);
      menuList.appendChild(li);

      menuInput.value = '';
      menuInput.focus();
    } 
</script>






<!-- 카카오api 이용 주소값 입력하면 지도 추출 -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=841f49917d3e46fce9eab8d367a8297f&libraries=services"></script>
<script>
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	    mapOption = {
	        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
	        level: 3 // 지도의 확대 레벨
	    };      
	
    $('#searchBtn, #address').on('keyup', function(e) {
        if (e.keyCode === 13) { // 엔터키를 눌렀을 때
            e.preventDefault(); // 기본 이벤트인 폼 제출을 막음
            $('#searchBtn').trigger('click'); // 검색 버튼 클릭 이벤트를 발생
        }
    });

	
	$('#searchBtn').click(function(){
		// 버튼을 click했을때
		
		// 지도를 생성합니다    
		var map = new kakao.maps.Map(mapContainer, mapOption); 
		
		// 주소-좌표 변환 객체를 생성합니다
		var geocoder = new kakao.maps.services.Geocoder();
		
		// 주소로 좌표를 검색합니다
		geocoder.addressSearch($('#address').val(), function(result, status) {
	
		    // 정상적으로 검색이 완료됐으면 
		     if (status === kakao.maps.services.Status.OK) {
		        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
		        
		        // 추출한 좌표를 통해 도로명 주소 추출
		        let lat = result[0].y;
		        let lng = result[0].x;
		        getAddr(lat,lng);
		        function getAddr(lat,lng){
		            let geocoder = new kakao.maps.services.Geocoder();
	
		            let coord = new kakao.maps.LatLng(lat, lng);
		            let callback = function(result, status) {
		                if (status === kakao.maps.services.Status.OK) {
		                	// 추출한 도로명 주소를 해당 input의 value값으로 적용
		                    $('#address').val(result[0].road_address.address_name);
		                }
		            }
		            geocoder.coord2Address(coord.getLng(), coord.getLat(), callback);
		        }
		        
		        // 결과값으로 받은 위치를 마커로 표시합니다
		        var marker = new kakao.maps.Marker({
		            map: map,
		            position: coords
		        });
	
		        // 인포윈도우로 장소에 대한 설명을 표시합니다
		        var infowindow = new kakao.maps.InfoWindow({
		            content: '<div style="width:150px;text-align:center;padding:6px 0;">장소</div>'
		        });
		        infowindow.open(map, marker);
	
		        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
		        map.setCenter(coords);
		    } 
		});  
	});
	</script>

    <script>
        function register(){
            alert('등록이 완료되었습니다.');
            window.location.href = 'main.do'
        }

        function cancel(){
            var result = confirm("취소 하시겠습니까?");
            if (result == true){
                window.location.href = "main.do";
            }
        }


    </script>

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

    </script>

</body>
</html>