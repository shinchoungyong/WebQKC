<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>importBusiness</title>
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

/* 사이드 메뉴 */

.productsMenus {
	display: flex;
	flex-direction: column;
	background-color: #F5F5DC;
	margin-right: 20px;
	margin-left : 5px;	
	padding: 3px;
	position: relative; /* 하위 메뉴의 위치를 올바르게 참조 */
	z-index: 0; /* 전체 레이아웃에서 기본 z-index */
	height: 100px;
	
}

.productsMenu {
	width: 150px; /* 상위 메뉴의 너비 */
	height: 50px;
	background-color: #8B0000;
	margin-bottom: 3px;
	display: flex;
	justify-content: center;
	align-items: center;
	transition: background-color 0.3s;
	border: 1px solid #D3D3D3;
	position: relative; /* 하위 메뉴가 이 요소를 기준으로 배치됨 */
	z-index: 1; /* 상위 메뉴와 하위 메뉴 간의 겹침 방지 */
}

.productsMenu a {
	text-decoration: none;
	font-weight: bold;
	color: white;
}

.productsMenu:hover {
	background-color: #d80000;
}

/* 하위 메뉴 */
.subcategory {
	display: none; /* 기본적으로 숨김 */
	position: absolute; /* 상위 메뉴를 기준으로 절대 위치 */
	top: 0; /* 상위 메뉴 바로 아래에 위치 */
	left: 100%; /* 상위 메뉴의 오른쪽으로 이동 */
	width: 150px; /* 하위 메뉴 너비를 상위 메뉴와 동일하게 설정 */
	background-color: #fff;
	list-style: none;
	padding-left: 0;
	margin: 0;
	border: 1px solid #D3D3D3;
	z-index: 10; /* 하위 메뉴가 상위 메뉴 위로 오도록 설정 */
	box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1); /* 그림자 추가 */
}

.productsMenu:hover .subcategory {
	display: block; /* 상위 항목에 마우스를 올렸을 때 하위 메뉴 표시 */
}

.subcategory li {
	margin: 0;
	padding: 5px 15px;
}

.subcategory li a {
	text-decoration: none;
	color: #555;
	display: block;
	padding: 10px;
}

.subcategory li a:hover {
	background-color: #f0f0f0; /* 하위 메뉴 항목에 마우스를 올렸을 때 배경색 변경 */
	color: #000; /* 하위 메뉴 항목에 마우스를 올렸을 때 색상 변경 */
}

/* 제품 리스트 */
.products {
	display: grid;
	grid-template-columns: repeat(4, 1fr);
	gap: 20px;
	margin-left: 10%;
}

.product {
	text-align: center;
	border: 1px solid #ddd;
	padding: 25px;
	transition: transform 0.3s;
}

.product:hover {
	transform: scale(1.05);
}

.product img {
	width: 150px;
	height: 150px;
	object-fit: cover;
}

.product-name {
	margin-top: 10px;
	font-weight: bold;
}

.pagination {
	display: flex;
	margin-top: 20px;
	justify-content: center;
}

.pagination a {
	color: black;
	float: left;
	padding: 8px 16px;
	text-decoration: none;
	transition: background-color .3s;
}

.pagination a.active {
	background-color: #4CAF50;
	color: white;
	border-radius: 5px;
}

.pagination a:hover:not(.active) {
	background-color: #ddd;
	border-radius: 5px;
}
</style>
</head>
<body>
	
	<jsp:include page="../Common/Header2.jsp" />
	

	<!-- 홍보용 이미지 -->
	<div class="aboutPromotion" align="center">
		<img width="100%" height="200px" alt="홍보용 이미지"
			src="../resources/imgs/importbusiness.jpg">
	</div>

	<br>
	<div class="productBody">

	<!-- 사이드 메뉴와 제품 리스트 -->
	<div  style="display: flex;">
		<div class="productsMenus">
	
			<div class="productsMenu">
				<a href="../ImportBusiness/Product">수입제품</a>
			</div>
			<div class="productsMenu">
				<a href="">예비</a>
			</div>
			
		</div>

			<div class="products">
				<c:forEach var="product" items="${List}">
					<div class="product">
						<img src="${product.pd_img}" alt="제품이미지">
						<div class="product-name">${product.pd_name}</div>
					</div>
				</c:forEach>

			</div>
		</div>
	</div>
	<!-- Pagination -->
	<div class="pagination">
		<c:if test="${currentPage > 1}">
			<a href="?page=${currentPage - 1}">&laquo; Prev</a>
		</c:if>
		<c:forEach begin="1" end="${totalPages}" var="pageNum">
			<a href="?page=${pageNum}"
				class="${pageNum == currentPage ? 'active' : ''}">${pageNum}</a>
		</c:forEach>
		<c:if test="${currentPage < totalPages}">
			<a href="?page=${currentPage + 1}">Next &raquo;</a>
		</c:if>
	</div>


	<br>
	
	<jsp:include page="../Common/Footer.jsp" />
	
</body>
</html>
