<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>productsM</title>
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
    min-height: 100vh; /* 최소 높이를 100vh로 설정 */
}


/* Header 부분 CSS */
.navbar {
   display: flex;
   left: 0;
   top: 0;
   width: 100%;
   display: flex;
   justify-content: space-between;
   align-items: center;
   padding: 10px 20px;
   background-color: #8B0000;
   color: white;
   transition: top 0.3s ease; /* 부드러운 애니메이션 */
   z-index: 1000; /* 다른 요소보다 위에 위치 */
   border-bottom: solid 3px #F5F5DC;
}

.navbar-logo img {
   height: 50px;
   width: 200px;
}

.navbar-actions {
   display: flex;
   align-items: center;
}

.navbar-menu {
   list-style: none;
   display: flex;
   gap: 20px;
   margin-right: 20px;
}

.navbar-menu li {
   margin-right: 20px;
}

.navbar-menu a {
   color: white;
   text-decoration: none;
   font-size: 16px;
   padding: 10px;
   transition: background-color 0.3s;
}

.navbar-menu a:hover {
   background-color: #CD5C5C; /* 밝은 붉은색 */
   border-radius: 5px;
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

/* 중간 메뉴 쿼리 */
@media only screen and (max-width: 1499px) {
    .location .wrap {
        width: auto;
        padding: 0;
    }

    .wrap, .orgaWrap .wrap {
        width: 100%;
        padding: 60px 80px 120px;
        box-sizing: border-box;
    }
}
/* 하위에 숨겨져 있다가 나오게*/
.location ul ul {
    display: none;
    position: absolute;
    top: 100%;
    left: 0;
    background: #fff;
    padding: 10px;
    border: 1px solid #e9e9e9;
    width :120px;
    list-style: none;
     z-index: 10; /* 다른 요소 위에 보이도록 설정 */
}

.location ul li:hover > ul {
    display: block;
}

/*메뉴 버튼 스타일*/
.location > ul > li {
   list-style: none;
    position: relative;
    display: inline-block;
    padding: 10px 15px;
    width : 120px;
    background-color: #f6f6f6;
    border-bottom: solid 3px #8B0000;
    border-right: solid 0.5px #8B0000;

}
.location> ul > li:hover {
    background: #eb1c24; /* 마우스 오버 시 배경색 변경 */
}


.location > ul > li a {
   display: flex;
   justify-content :center;
    color: #282828;
    font-size: 16px;
    text-decoration: none;
}

.location > ul > li:after {
   
    position: absolute;
    top: 0;
    right: 0;
    display: block;
    content: '';
    height: 50px;
    width: 1px;
    background: #e9e9e9;
}
/* 미디어 쿼리*/
@media only screen and (max-width: 768px) {
    .location ul {
        flex-direction: column;
        width: 100%;
    }

    .location > ul > li {
        display: block;
        width: 100%;
    }
}




.product-name {
   margin-top: 10px;
   font-weight: bold;
}
/* Footer 부분 CSS */
footer {
   background-color: #8B0000; /* 진한 붉은색 */
   padding: 20px;
   text-align: center;
   color: white;
   border-top: solid 3px #F5F5DC; /* 푸터 상단 테두리 */

}

.footer-content {
   padding: 20px; /* 내부 여백 */
   bottom: 0; /* 하단에 고정 */
   left: 0; /* 좌측 정렬 */
   width: 100%; /* 전체 너비 */
}

#footer-content p {
   margin: 10px 0;
   font-size: 14px;
}

.adminLogin {
    width: 100%;
    height: 50px;
}

#loginbox {
    display: flex;
    flex-direction: column;
    align-items: center; 
    justify-content: center;
    width: 100%;
    height: 490px;
}

#loginform {
    
    width: 330px;
}

.submit-btn {
            background-color: #920e0e; /* 부드러운 초록색 */
            border: none;
            color: white;
            padding: 12px 24px;
            text-align: center;
            font-size: 16px;
            cursor: pointer;
            border-radius: 25px; /* 둥근 모서리 */
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1); /* 그림자 */
            transition: background-color 0.3s ease, box-shadow 0.3s ease;
        }

input{
    margin-top: 50px;
    font-size: 20px;
}




</style>
</head>
<body>
   <header>
      <nav class="navbar">
         <div class="navbar-logo">
            <a href="homeMain"><img src="resources/imgs/logo.png" alt="회사 로고"></a>
         </div>
         <div class="navbar-actions">
            <ul class="navbar-menu">
               <li><a href="aboutM.do">About Us</a></li>
               <li><a href="productsM.do">Products</a></li>
               <li><a href="#.jsp">News</a></li>
               <li><a href="#.jsp">Business</a></li>
               <li><a href="contactUs.do">Contact Us</a></li>
            </ul>
            <div class="navbar-language">
               <select name="language">
                  <option value="korean">Korean</option>
                  <option value="english">English</option>
                  <option value="chinese">Chinese</option>
                  <option value="japanese">Japanese</option>
               </select>
            </div>
         </div>
      </nav>
   </header>


<div id="loginbox">
    <h1>관리자 로그인</h1>
    <div id="loginform">
        <form action="Adm/adminMain" method="post">
            <div><input type="text" name="admin_id" class="adminLogin" placeholder="아이디를 입력해주세요" autocomplete="off"></div>           
            <div><input type="password" name="admin_pw" class="adminLogin" placeholder="비밀번호를 입력해주세요" autocomplete="off"></div>
            <div align="center"><input type="submit" value="로그인" class="submit-btn"></div>
        </form>
    </div>
</div>




   <br>
   <footer>
      <div class="footer-content">
         <p>㈜큐케이씨 | 서울특별시 성동구 아차산로 15길 52 삼환디지털벤처타워 905호</p>
         <p>대표 : 김새한 | Tel: 070-4352-2800 | Fax: 070-8673-2808</p>
         <p>사업자등록번호: 214-87-64337 | COPYRIGHTⓒQuali Korea Corp. ALL RIGHTS
            RESERVED.</p>
      </div>
   </footer>
</body>
</html>