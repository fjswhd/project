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
	<h2>재고 변동 내역</h2>

	<table>
		<tr>
			<th>변경일</th>
			<th>업체코드</th>
			<th>업체명</th>
			<th>상품코드</th>
			<th>상품명</th>
			<th>변동수량</th>
			<th>사유</th>
			<th>담당자</th>
		</tr>
		
		<c:if test="${empty modifyStockList }">
			<tr>
				<th colspan="7">입고내역이 없습니다</th>
			</tr>
		</c:if>

		<c:if test="${not empty modifyStockList }">
			<c:forEach var="product" items="${modifyStockList}">
				<tr>
					<td>${product.product_modified_date}</td>
					<td>${product.seller_no }</td>
					<td>${product.seller_name }</td>
					<td>${product.product_no }</td>
					<td>${product.product_name }</td>
					<td>${product.variance }</td>
					<td>${product.modified_memo}</td>
					<td>${product.emp_no}</td>
				</tr>
			</c:forEach>
		</c:if>
	</table>

	<div align="center">
		<c:if test="${startPage > PAGE_PER_BLOCK }">
			<button
				onclick="location.href='/project/st/modifyStockList.do?pageNum=${startPage - 1}'">이전</button>
		</c:if>
		<c:forEach var="i" begin="${startPage}" end="${endPage}">
			<button
				onclick="location.href='/project/st/modifyStockList.do?pageNum=${i}'">${i }</button>
		</c:forEach>
		<!-- 	보여줄 것이 아직 남아있다 -->
		<c:if test="${endPage < totalPage}">
			<button
				onclick="location.href='/project/st/modifyStockList.do?pageNum=${endPage + 1}'">다음</button>
		</c:if>
	</div>

</body>
</html>