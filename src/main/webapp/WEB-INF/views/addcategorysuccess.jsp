<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add category Success</title>
</head>
<body>
<jsp:include page="adminindex.jsp"></jsp:include>
    <div align="center">
        <table border="0">
<tr>
<td colspan="2" align="center"><h2>Add category Succeeded!</h2></td>
</tr>
<tr>
<td colspan="2" align="center">
                    <h3>Thank you for adding category! Here's the review of your details:</h3>
                </td>
</tr>
<tr>
<td>CATEGORY ID:</td>
<td>${categoryForm.id}</td>
</tr>
<tr>
<td>CATEGORY NAME:</td>
<td>${categoryForm.name}</td>
</tr>
<tr>
<td>CATEGORY DESCRIPION:</td>
<td>${categoryForm.description}</td>
</tr>
</table>
    </div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>