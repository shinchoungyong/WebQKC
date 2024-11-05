<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ScrollToTopBtn</title>

<style>
/* 맨위로 올리는 버튼 11/03  */
#scrollToTopBtn {
	position: fixed;
	bottom: 20px;
	right: 20px;
	padding: 10px;
	width: 50px; /* 버튼 크기 고정 */
	height: 50px; /* 버튼 크기 고정 */
	font-size: 20px;
	border-radius: 50%;
	border: none;
	background-color: #333;
	color: white;
	cursor: pointer;
	box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
	opacity: 0;
	visibility: hidden;
	transition: opacity 0.3s, visibility 0.3s;
	/* 중앙 정렬 */
	display: flex;
	align-items: center;
	justify-content: center;
}

/* 버튼이 보일 때 */
#scrollToTopBtn.show {
	opacity: 1;
	visibility: visible;
}
</style>
</head>
<body>

	<button id="scrollToTopBtn" onclick="scrollToTop()">↑</button>

	<script>
//"맨 위로 이동" 버튼 요소 가져오기
const scrollToTopBtn = document.getElementById("scrollToTopBtn");

// 스크롤 이벤트 리스너 추가
window.addEventListener("scroll", () => {
  if (window.scrollY > 300) {
    // 버튼 보이기
    scrollToTopBtn.classList.add("show");
  } else {
    // 버튼 숨기기
    scrollToTopBtn.classList.remove("show");
  }
});

// 맨 위로 스크롤하는 함수
function scrollToTop() {
  window.scrollTo({
    top: 0,
    behavior: "smooth"
  });
  
}</script>
</body>
</html>