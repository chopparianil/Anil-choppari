<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add Supplier Success</title>
</head>
<body>
<jsp:include page="adminindex.jsp"></jsp:include>
    <div align="center">
        <table border="0">
<tr>
<td colspan="2" align="center"><h2>Add Supplier Succeeded!</h2></td>
</tr>
<tr>
<td colspan="2" align="center">
                    <h3>Thank you for adding Supplier! Here's the review of your details:</h3>
                </td>
</tr>
<tr>
<td>SUPPLIER ID:</td>
<td>${supplierForm.id}</td>
</tr>
<tr>
<td>SUPPLIER NAME:</td>
<td>${supplierForm.name}</td>
</tr>
<tr>
<td>SUPPLIER DESCRIPION:</td>
<td>${supplierForm.description}</td>
</tr>
</table>
    </div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>