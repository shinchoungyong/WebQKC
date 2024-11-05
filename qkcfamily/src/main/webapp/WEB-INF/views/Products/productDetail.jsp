<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>QKCfamily</title>
<style type="text/css">
@font-face {
   font-family: 'Pretendard-Regular';
   src:
      url('https://fastly.jsdelivr.net/gh/Project-Noonnu/noonfonts_2107@1.1/Pretendard-Regular.woff')
      format('woff');
   font-weight: 400;
   font-style: normal;
}

html, body {
   width: 100%;
   font-family: Pretendard-Regular, Arial, sans-serif;
   font-size: 16px;
   line-height: 1.5;
   color: #333;
   margin: 0;
   padding: 0;
   box-sizing: border-box;
}

body {
   height: 100px;
   padding-bottom: 10px; /* 푸터 높이만큼 아래쪽에 공간을 추가 */
   padding-top: 60px; /* 상단바 높이만큼 위쪽에 공간 추가 */
   display: flex;
   flex-direction: column; /* 수직 방향으로 정렬 */
}

.navbar {
   position: fixed;
   left: 0;
   top: 0;
   width: 100%;
   display: flex;
   justify-content: space-between;
   align-items: center;
   padding: 10px 20px;
   background-color: #8B0000;
   color: white;
   z-index: 1000;
   border-bottom: solid 3px #F5F5DC;
}

.navbar-logo img {
   width: 157px;
   height: 60px;
}

.navbar-menu {
   list-style: none;
   display: flex;
   gap: 20px;
}

.navbar-menu a {
   color: white;
   text-decoration: none;
   padding: 10px;
}

.navbar-search input {
   width: 250px;
   padding: 10px;
   border-radius: 15px;
   border: 1px solid #ccc;
}

.navbar-language select {
   padding: 5px;
   font-size: 14px;
   margin-left: 20px;
   border-radius: 5px;
}

@media ( max-width : 768px) {
   .navbar {
      flex-direction: column;
   }
   .navbar-menu {
      flex-direction: column;
   }
}
/* 검색 스타일 */
.navbar-search {
   position: relative;
}

.navbar-search input {
   width: 250px;
   padding: 10px;
   border-radius: 15px;
   border: 1px solid #ccc;
}

.navbar-search button {
   position: absolute;
   right: 5px;
   top: 5px;
   bottom: 5px;
   background-color: white;
   border: none;
   cursor: pointer;
}

#search-img {
   width: 30px;
   height: 30px;
   margin-right: 5px;
   margin-bottom: 10px;
}

/* 언어 선택 스타일 */
.navbar-language select {
   padding: 5px;
   font-size: 14px;
   margin-left: 20px;
   border-radius: 5px;
}

body {
   font-family: Pretendard-Regular, Arial, sans-serif;
   background-color: #f4f4f4;
   margin: 0;
   padding: 20px;
   min-height: 100vh; /* 최소 높이를 100vh로 설정 */
}
/* products body */
.productBody {
   display: flex;
   min-height: 130vh; 
}

.container {
   background: white;
   width: 800px;
   height: 700px;
   margin: 0 auto;
   padding: 20px;
   box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
}

.product-header {
   display: flex;
   gap: 20px;
   align-items: center;
   margin-bottom: 20px;
}

.product-header img {
   width: 300px;
   border: 1px solid #ddd;
}

.product-details {
   flex: 1;
}

.product-name {
   font-size: 24px;
   font-weight: bold;
}

.product-description {
   margin-top: 10px;
   font-size: 16px;
   color: #666;
}

.contact-email {
   margin-top: 10px;
   font-weight: bold;
}

.product-specs {
   width: 100%;
   margin-top: 20px;
   border-collapse: collapse;
}

.product-specs th, .product-specs td {
   border: 1px solid #ddd;
   padding: 10px;
   text-align: left;
}

.product-specs th {
   background: #f5f5f5;
}

.additional-info {
   margin-top: 20px;
   font-size: 14px;
   color: #555;
   border : 1px solid #ddd;
   height : 100px;
}
/* 상품 이미지 사이즈 */
#productEx {
   width: 150px;
   height: 150px;
}

#golist {
   background-color: #e74c3c; /* 빨간 계열 색상 */
   color: #ffffff; /* 흰색 텍스트 */
   border: none; /* 테두리 제거 */
   border-radius: 5px; /* 둥근 모서리 */
   padding: 10px 20px; /* 여백 */
   font-size: 16px; /* 폰트 크기 */
   font-weight: bold; /* 글씨 두껍게 */
   cursor: pointer; /* 마우스 커서 포인터 */
   transition: background-color 0.3s ease; /* 배경색 변화 애니메이션 */
   margin-top: 10px;
   float: right;
}

#golist:hover {
   background-color: #c0392b; /* 호버 시 어두운 빨간색 */
}
</style>
</head>
<body>

   <header>
      <nav class="navbar">
         <div class="navbar-logo">
            <a href="${pageContext.request.contextPath}"><img
               src="${pageContext.request.contextPath}/resources/imgs/logo.png" alt="회사 로고"></a>
         </div>
         <ul class="navbar-menu">
            <li><a href="${pageContext.request.contextPath}/AboutUs/CEO">About
                  Us</a></li>
            <li><a href="${pageContext.request.contextPath}/Products/Main">Products</a></li>
            <li><a href="${pageContext.request.contextPath}/News/News">News</a></li>
            <li><a
               href="${pageContext.request.contextPath}/ImportBusiness/Product">Import
                  Business</a></li>
            <li><a
               href="${pageContext.request.contextPath}/ContactUs/contactUs">Contact
                  Us</a></li>
         </ul>
         <div class="navbar-search">
            <form action="${pageContext.request.contextPath}/Common/HeadSearch"
               method="POST">
               <input type="text" placeholder="검색어를 입력하세요" name="search_str">
               <button type="submit">
                  <img src="${pageContext.request.contextPath}/resources/imgs/search-img.png" alt="돋보기"
                     style="width: 30px; height: 30px;">
               </button>
            </form>
         </div>
         <div class="navbar-language">
            <select name="language">
               <option value="korean">Korean</option>
               <option value="english">English</option>
               <option value="chinese">Chinese</option>
               <option value="japanese">Japanese</option>
            </select>
         </div>
      </nav>
   </header>


   <div>
      <br> <br> <br>
   </div>

   <br>
   <div class="productBody">
      <jsp:include page="../Products/SideMenu.jsp" />


      <div class="container">
         <div class="product-header">
            <img id="productEx" src="${product.pd_img}" alt="컵라면 예시">
            <div class="product-details">
               <div class="product-name">${product.pd_name}</div>
               <div class="product-description">${product.pd_content}</div>
               <div class="contact-email">제품문의: 010-1111-1111</div>
            </div>
         </div>

         <h2>제품상세</h2>
         <table class="product-specs">
            <tr>
               <th>제품명</th>
               <td>${product.pd_name}</td>
            </tr>
            <tr>
               <th>규격</th>
               <td>${product.spec_carton}</td>
            </tr>
            <tr>
               <th>크기 (가로X세로X높이)</th>
               <td>${product.carton_size}</td>
            </tr>
            <tr>
               <th>컨테이너당 적재 수량</th>
               <td>${product.load_qty}</td>
            </tr>
            <tr>
               <th>유통기한</th>
               <td>${product.shelf_life}</td>
            </tr>
         </table>

         <div class="additional-info"><p>제품 설명</p></div>

         <button id="golist" onclick="history.back()">목록으로</button>
      </div>
   </div>
   <br>
   <br>

   <jsp:include page="../Common/Footer.jsp" />
</body>
</html>