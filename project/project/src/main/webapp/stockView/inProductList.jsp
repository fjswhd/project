<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>입고내역</h2>

	<table>
		<tr>
			<th>입고일</th>
			<th>업체코드</th>
			<th>업체명</th>
			<th>상품코드</th>
			<th>상품명</th>
			<th>입고단가</th>
			<th>수량</th>
		</tr>
		<c:if test="${empty inProductList }">
			<tr>
				<th colspan="7">입고내역이 없습니다</th>
			</tr>
		</c:if>

		<c:if test="${not empty inProductList }">
			<c:forEach var="product" items="${inProductList}">
				<tr>
					<td>${product.purchase_order_date}</td>
					<td>${product.seller_no }</td>
					<td>${product.seller_name }</td>
					<td>${product.product_no }</td>
					<td>${product.product_name }</td>
					<td>${product.cost }</td>
					<td>${product.purchase_detail_pcount}</td>
				</tr>
			</c:forEach>
		</c:if>
	</table>

	<div align="center">
		<c:if test="${startPage > PAGE_PER_BLOCK }">
			<button
				onclick="location.href='/project/st/inProductList.do?pageNum=${startPage - 1}'">이전</button>
		</c:if>
		<c:forEach var="i" begin="${startPage}" end="${endPage}">
			<button
				onclick="location.href='/project/st/inProductList.do?pageNum=${i}'">${i }</button>
		</c:forEach>
		<!-- 	보여줄 것이 아직 남아있다 -->
		<c:if test="${endPage < totalPage}">
			<button
				onclick="location.href='/project/st/inProductList.do?pageNum=${endPage + 1}'">다음</button>
		</c:if>
	</div>

</body>
</html>