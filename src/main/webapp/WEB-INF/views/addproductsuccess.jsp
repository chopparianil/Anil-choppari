<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add product Success</title>
</head>
<body>
<jsp:include page="adminindex.jsp"></jsp:include>
    <div align="center">
        <table border="0">
<tr>
<td colspan="2" align="center"><h2>Add Product Succeeded!</h2></td>
</tr>
<tr>
<td colspan="2" align="center">
                    <h3>Thank you for adding Product! Here's the review of your details:</h3>
                </td>
</tr>
<tr>
<td>PRODUCT ID:</td>
<td>${productForm.id}</td>
</tr>
<tr>
<td>PRODUCT NAME:</td>
<td>${productForm.name}</td>
</tr>
<tr>
<td>PRODUCT DESCRIPION:</td>
<td>${productForm.description}</td>
</tr>
<tr>
<td>PRODUCT QUANTITY:</td>
<td>${productForm.quantity}</td>
</tr>

<tr>
<td>PRODUCT MFG:</td>
<td>${productForm.mfg}</td>
</tr>

</table>
    </div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>