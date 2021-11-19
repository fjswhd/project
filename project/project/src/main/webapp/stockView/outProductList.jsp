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
	<h2>출고내역</h2>

	<table>
		<tr>
			<th>출고일</th>
			<th>업체코드</th>
			<th>업체명</th>
			<th>상품코드</th>
			<th>상품명</th>
			<th>출고단가</th>
			<th>수량</th>
		</tr>
		<c:if test="${empty outProductList }">
			<tr>
				<th colspan="7">출고내역이 없습니다</th>
			</tr>
		</c:if>

		<c:if test="${not empty outProductList }">
			<c:forEach var="product" items="${outProductList}">
				<tr>
					<td>${product.sales_order_date}</td>
					<td>${product.customer_no }</td>
					<td>${product.customer_name }</td>
					<td>${product.product_no }</td>
					<td>${product.product_name }</td>
					<td>${product.price }</td>
					<td>${product.sales_detail_pcount }</td>
				</tr>
			</c:forEach>
		</c:if>
	</table>

	<div align="center">
		<c:if test="${startPage > PAGE_PER_BLOCK }">
			<button
				onclick="location.href='/project/st/outProductList.do?pageNum=${startPage - 1}'">이전</button>
		</c:if>
		<c:forEach var="i" begin="${startPage}" end="${endPage}">
			<button
				onclick="location.href='/project/st/outProductList.do?pageNum=${i}'">${i }</button>
		</c:forEach>
		<!-- 	보여줄 것이 아직 남아있다 -->
		<c:if test="${endPage < totalPage}">
			<button
				onclick="location.href='/project/st/outProductList.do?pageNum=${endPage + 1}'">다음</button>
		</c:if>
	</div>

</body>
</html>