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
    <link href="${path}/resources/css/detailCafeCss.css" rel="stylesheet"/>
    <title>Document</title>
</head>
<body>

	<%@ include file="header.jsp" %>


    <!-- 주요 내용들 -->

    <hr>
    <div id="back">
        <div id="main">
            <h1>대림창고</h1>
            <h3 style="color: burlywood;">성수에서 오래된 공장형 카페</h3>
            <div id="content">
                <div id="image">
                    <img src="${path }/resources/image/cafeback1.jpg">
                    <img src="${path }/resources/image/cafe2.jpg">
                    <img src="${path }/resources/image/cafe1.jpg">
                </div>

                <div id="con">
                    <h2><u>지역</u></h2>
                    <h4>성수2가1동</h4>

                    <h2><u>1인 1잔</u></h2>
                    <h4>예</h4>

                    <h2><u>1잔당 이용 가능시간</u></h2>
                    <h4>3시간</h4>

                    <h2><u>주요메뉴</u></h2>
                    <h4>아메리카노</h4>
                    <h4>베이글</h4>

                    <h2><u>영업시간</u></h2>
                    <h4>월요일 11:00 - 22:00</h4>
                    <h4>화요일 11:00 - 22:00</h4>
                    <h4>수요일 11:00 - 22:00</h4>
                    <h4>목요일 11:00 - 22:00</h4>
                    <h4>금요일 11:00 - 22:00</h4>
                    <h4>토요일 11:00 - 22:00</h4>
                    <h4>일요일 11:00 - 22:00</h4>

                    <h2><u>매장소개</u></h2>
                    <h4>공장을 개조해 만든 성수동 창고형 갤러리 카페</h4>

                    <h2><u>전화번호</u></h2>
                    <h4>0507-1390-9669</h4>

                    <h2><u>가까운 역</u></h2>
                    <h4>성수역 3번출구 3분</h4>

                    <h2><u>지도</u></h2>
                    <div id="map" style="width:500px;height:400px;"></div>
                    <br>
                </div>
            </div>
        </div>
    </div>
    <br>
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>




















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



    <!-- 카카오 api 이용 -->
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=5160e4edb14525c0eb0813668ebe28d8&libraries=services"></script>
	<script>
        var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
        mapOption = {
            center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
            level: 3 // 지도의 확대 레벨
        };  

        // 지도를 생성합니다    
        var map = new kakao.maps.Map(mapContainer, mapOption); 

        // 주소-좌표 변환 객체를 생성합니다
        var geocoder = new kakao.maps.services.Geocoder();

        // 주소로 좌표를 검색합니다
        geocoder.addressSearch('서울 성동구 성수이로 78', function(result, status) {

            // 정상적으로 검색이 완료됐으면 
            if (status === kakao.maps.services.Status.OK) {

                var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

                // 결과값으로 받은 위치를 마커로 표시합니다
                var marker = new kakao.maps.Marker({
                    map: map,
                    position: coords
                });

                // 인포윈도우로 장소에 대한 설명을 표시합니다
                var infowindow = new kakao.maps.InfoWindow({
                    content: '<div style="width:150px;text-align:center;padding:6px 0;">위치</div>'
                });
                infowindow.open(map, marker);

                // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
                map.setCenter(coords);
            } 
        });
	</script>


</body>
</html>