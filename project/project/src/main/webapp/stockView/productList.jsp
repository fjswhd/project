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
	<h2>재고현황</h2>

	<table>
		<tr>
			<th>상품코드</th>
			<th>상품명</th>
			<th>입고단가</th>
			<th>출고단가</th>
			<th>수량</th>
		</tr>
		
		<c:if test="${empty productList }">
			<tr>
				<th colspan="5">재고가 없습니다</th>
			</tr>
		</c:if>

		<c:if test="${not empty productList }">
			<c:forEach var="product" items="${productList}">
				<tr>
					<td>
					<a href = "/project/st/modifyStockForm.do?pageNum=${currentPage}&product_no=${product.product_no}">
						${product.product_no }</a></td>
					<td> 
					<a href = "/project/st/modifyStockForm.do?pageNum=${currentPage}&product_no=${product.product_no}">
						${product.product_name }</a></td>
					<td>${product.cost }</td>
					<td>${product.price }</td>
					<td>${product.stock }</td>
				</tr>
			</c:forEach>
		</c:if>
	</table>
	
	<div align="center">
		<c:if test="${startPage > PAGE_PER_BLOCK }">
			<button
				onclick="location.href='/project/st/productList.do?pageNum=${startPage - 1}'">이전</button>
		</c:if>
		<c:forEach var="i" begin="${startPage}" end="${endPage}">
			<button
				onclick="location.href='/project/st/productList.do?pageNum=${i}'">${i }</button>
		</c:forEach>
		<!-- 	보여줄 것이 아직 남아있다 -->
		<c:if test="${endPage < totalPage}">
			<button
				onclick="location.href='/project/st/productList.do?pageNum=${endPage + 1}'">다음</button>
		</c:if>
	</div>

</body>
</html>
