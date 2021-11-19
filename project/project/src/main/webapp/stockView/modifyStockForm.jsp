<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
	<form action="/project/st/modifyStock.do" method="post" name="frm">
		<input type="hidden" name="pageNum" value="${pageNum}">
		<input type="hidden" name="seller_no" value="${product.seller_no}"> 
		<input type="hidden" name="seller_name" value="${product.seller_name}"> 
		<input type="hidden" name="product_no" value="${product.product_no}"> 
		<input type="hidden" name="product_name" value="${product.product_name}"> 
		<input type="hidden" name="modified_stock" value="${product.stock}"> 
		<input type="hidden" name="emp_no" value="${product.emp_no}"> 
		

		<table>
			<caption>상세정보</caption>
			<tr>
				<th>업체코드</th>
				<td>${product.seller_no}</td>
			</tr>
			<tr>
				<th>업체명</th>
				<td>${product.seller_name }</td>
			</tr>
			<tr>
				<th>상품코드</th>
				<td>${product.product_no }</td>
			</tr>
			<tr>
				<th>상품명</th>
				<td>${product.product_name }</td>
			</tr>
			<tr>
				<th>입고단가</th>
				<td>${product.cost}</td>
			</tr>
			<tr>
				<th>출고단가</th>
				<td>${product.price }</td>
			</tr>
			<tr>
				<th>수량</th>
				<td><input type ="number" name="stock" value="${product.stock}" required="required"></td>
			</tr>
			<tr>
				<th>담당자</th>
				<td>${product.emp_no }</td>
			</tr>
			<tr>
				<th>사유</th>
				<td><textarea rows="5" cols="22" name="modified_memo"  required="required"></textarea></td>
			</tr>
			<tr>
				<th colspan="2"><input type="submit" value="수정" onclick = "return confirm('수정하시겠습니까?')"></th>
			</tr>
		</table>

	</form>
</body>
</html>