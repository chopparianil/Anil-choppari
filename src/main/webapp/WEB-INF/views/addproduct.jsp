<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
         <%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
        
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<meta name="viewport" content="width=device-width, initial-scale=1">


		<!-- Website CSS style -->
		<link href="css/bootstrap.min.css" rel="stylesheet">

		<!-- Website Font style -->
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
		<link rel="stylesheet" href="style.css">
		<!-- Google Fonts -->
		<link href='https://fonts.googleapis.com/css?family=Passion+One' rel='stylesheet' type='text/css'>
		<link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>




<title>add products page</title>
<style>
/*
/* Created by Filipe Pina
 * Specific styles of signin, register, component
 */
/*
 * General styles
 */
#playground-container {
    height: 500px;
    overflow: hidden !important;
    -webkit-overflow-scrolling: touch;
}
body, html{
     height: 100%;
 	background-repeat: no-repeat;
 	background:url(https://i.ytimg.com/vi/4kfXjatgeEU/maxresdefault.jpg);
 	font-family: 'Oxygen', sans-serif;
	    background-size: cover;
}

.main{
 	margin:50px 15px;
}

h1.title { 
	font-size: 50px;
	font-family: 'Passion One', cursive; 
	font-weight: 400; 
}

hr{
	width: 10%;
	color: #fff;
}

.form-group{
	margin-bottom: 15px;
}

label{
	margin-bottom: 15px;
}

input,
input::-webkit-input-placeholder {
    font-size: 11px;
    padding-top: 3px;
}

.main-login{
 	background-color: #fff;
    /* shadows and rounded borders */
    -moz-border-radius: 2px;
    -webkit-border-radius: 2px;
    border-radius: 2px;
    -moz-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
    -webkit-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
    box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);

}
.form-control {
    height: auto!important;
padding: 8px 12px !important;
}
.input-group {
    -webkit-box-shadow: 0px 2px 5px 0px rgba(0,0,0,0.21)!important;
    -moz-box-shadow: 0px 2px 5px 0px rgba(0,0,0,0.21)!important;
    box-shadow: 0px 2px 5px 0px rgba(0,0,0,0.21)!important;
}
#button {
    border: 1px solid #ccc;
    margin-top: 28px;
    padding: 6px 12px;
    color: #666;
    text-shadow: 0 1px #fff;
    cursor: pointer;
    -moz-border-radius: 3px 3px;
    -webkit-border-radius: 3px 3px;
    border-radius: 3px 3px;
    -moz-box-shadow: 0 1px #fff inset, 0 1px #ddd;
    -webkit-box-shadow: 0 1px #fff inset, 0 1px #ddd;
    box-shadow: 0 1px #fff inset, 0 1px #ddd;
    background: #f5f5f5;
    background: -moz-linear-gradient(top, #f5f5f5 0%, #eeeeee 100%);
    background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #f5f5f5), color-stop(100%, #eeeeee));
    background: -webkit-linear-gradient(top, #f5f5f5 0%, #eeeeee 100%);
    background: -o-linear-gradient(top, #f5f5f5 0%, #eeeeee 100%);
    background: -ms-linear-gradient(top, #f5f5f5 0%, #eeeeee 100%);
    background: linear-gradient(top, #f5f5f5 0%, #eeeeee 100%);
    filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#f5f5f5', endColorstr='#eeeeee', GradientType=0);
}
.main-center{
 	margin-top: 30px;
 	margin: 0 auto;
 	max-width: 400px;
    padding: 10px 40px;
	background:#009edf;
	    color: #FFF;
    text-shadow: none;
	-webkit-box-shadow: 0px 3px 5px 0px rgba(0,0,0,0.31);
-moz-box-shadow: 0px 3px 5px 0px rgba(0,0,0,0.31);
box-shadow: 0px 3px 5px 0px rgba(0,0,0,0.31);

}
span.input-group-addon i {
    color: #009edf;
    font-size: 17px;
}

.login-button{
	margin-top: 5px;
}

.login-register{
	font-size: 11px;
	text-align: center;
}
</style>
</head>


<body>
 	<jsp:include page="adminindex.jsp"></jsp:include>
 	 
            

<div class="container">
			<div class="row main">
				<div class="main-login main-center">
						<form:form action="addproduct" method="post" commandName="productForm">
						
						<div class="form-group">
							<label for="product id" class="cols-sm-2 control-label">PRODUCT ID</label>
							<div class="cols-sm-10">
								<div class="input-group">
			                        <span class="input-group-addon"><i class="fa fa-key" aria-hidden="true"></i></span>					
									<input type="text" class="form-control" name="id"  placeholder="Enter product id"/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="product name" class="cols-sm-2 control-label">PRODUCT NAME</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="name" placeholder="Enter Product name"/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="product description" class="cols-sm-2 control-label">PRODUCT DESCRIPTION</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-bars" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="description"  placeholder="Enter Product description"/>
								</div>
							</div>
						</div>

                            <div class="form-group">
							<label for="product price" class="cols-sm-2 control-label">PRODUCT PRICE</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-plus-circle" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="price"   placeholder="Enter Product price"/>
								</div>
							</div>
						</div>








						<div class="form-group">
							<label for="product quantity" class="cols-sm-2 control-label">PRODUCT QUANTITY</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-plus-circle" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="quantity"   placeholder="Enter Product quantity"/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="product mfg" class="cols-sm-2 control-label">PRODUCT MFG</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-calendar" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="mfg"   placeholder="Enter product mfg"/>
								</div>
							</div>
						</div>
						<div class="input-group">
									<span class="input-group-addon"><i class="" aria-hidden="true"></i></span>
                    <td colspan="2" align="center"><input type="submit" class="form-control" value="addproduct" /></td>
                </div>
						
			</form:form>
				
				



<sql:setDataSource var="p" driver="org.h2.Driver" url="jdbc:h2:~/dt9"
user="har" password="har"/>
     
    
     
   		 <table class="table table-bordered" width="2200" border="5">

  <thead>
   <tr>
    <th>Product Id</th>
    <th>Product Name</th>
    <th>Product Description</th>
    <th>Product Price</th>
    <th>Product Quantity</th>
    <th>Product mfg</th>
    
    </tr>
  </thead>
  <c:forEach items="${prodd}" var="p">
  <tr>
    <td><c:out value="${p.id}"/></td>
    <td><c:out value="${p.name}"/></td>
    <td><c:out value="${p.description}"/></td>
        <td><c:out value="${p.price}"/></td>
     <td><c:out value="${p.quantity}"/></td>
            <td><c:out value="${p.mfg}"/></td>
        </tr>
  </c:forEach>
</table>
				

</body>
</html>