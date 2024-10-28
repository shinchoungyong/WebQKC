<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>contactUs</title>
    <style>
        /* 전체 적용 CSS */
        html, body {
            width: 100%;
            font-family: Pretendard-Regular, Arial, sans-serif;
            font-size: 16px;
            line-height: 1.5;
            color: #333;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        body {
            display: flex;
            flex-direction: column;
            min-height: 100vh;
            align-items: center; /* 전체 가운데 정렬 */
        }

        /* 구글 맵 및 회사 소개 CSS */
        .map-container {
            display: flex;
            justify-content: center;
            gap: 20px;
            width: 90%;
            max-width: 1000px;
            margin-top: 20px;
            min-height: 100vh; /* 최소 높이를 100vh로 설정 */
        }

        /* 맵 크기 및 박스 스타일 */
        #map {
            height: 60vh;
            width: 50%;
            max-width: 480px;
            border: 2px solid #ccc;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        /* Contact-Us 섹션 크기와 스타일 */
        .Contact-Us {
            height: 60vh; /* 지도와 동일한 높이 */
            width: 50%;    /* 지도와 동일한 너비 */
            max-width: 480px;
            padding: 20px;
            background-color: #fff;
            border: 2px solid #ccc;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            font-size: 16px;
            color: #555;
            line-height: 1.6;
            text-align: center; /* 텍스트 가운데 정렬 */
        }

        .Contact-Us h2 {
            color: #333;
            font-size: 20px;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>

    <jsp:include page="../Common/Header2.jsp" />

    <!-- 컨택 info -->
    <div class="aboutPromotion" align="center">
        <img width="1392px" height="200px" alt="홍보용 이미지" src="../resources/imgs/contact.png">
    </div>
    <br><br>

    <!-- 지도 및 회사 소개 섹션 -->
    <h1>회사 찾아오시는 길</h1>
    <div class="address">
        서울특별시 성동구 아차산로15길 52
    </div>

    <div class="map-container">
        <!-- 구글 지도 -->
        <div id="map"></div>

        <!-- 회사 소개 섹션 -->
        <div class="Contact-Us">
            <h2>Contact Us</h2>
            <p>123 Anywhere St., Any City, ST 12345</p>
            <p>123-456-7890</p>
            <p>hello@reallygreatsite.com</p>
            <p>www.reallygreatsite.com</p>
        </div>
    </div>

    <script>
        // 지도 초기화 함수
        function initMap() {
            const location = { lat: 37.548339, lng: 127.064182 };
            const map = new google.maps.Map(document.getElementById("map"), {
                zoom: 16,
                center: location,
            });
            const image = ""; // 마커 이미지 URL 설정 가능
            const marker = new google.maps.Marker({
                position: location,
                map: map,
                icon: image,
            });
        }
    </script>

    <!-- Google Maps JavaScript API 로드 -->
    <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCkMKSuFICn4ZYgCu-u50vBYzXmLSj8Tuo&callback=initMap">
    </script>

    <br>

    <jsp:include page="../Common/Footer.jsp" />

</body>
</html>
