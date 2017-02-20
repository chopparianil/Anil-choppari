<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>contactus page</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="Stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<scrpit src="http://ajax.googleapis.com/ajax/libs/jquery/3.11/jquery/3.1.1/jquery/min.js"></script>
<scrpit src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
body{
background: url("http://jodahome.com/wp-content/uploads/2015/07/The-Crew-2014-Game-HD-Wallpaper-Backgrounds.jpg") no-repeat center center fixed;
-webkit-background-size: cover;
-moz-background-size: cover;
-o-background-size: cover;
background-size: cover;
}
.login{
padding: 40px;
margin-top: 50px;
border: 5px solid rgba(0, 0, 0, 0.44);
border-radius: 5px;
background: rgba(0, 0, 0, 0.4);
}
.loginstyle{
height: 54px;
padding: 11px 12px;
font-size: 16px;
-webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
-webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
-o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
width: 100%;
}
#register{
position: relative;
width: 420px;
right: 30px;}
.registerstyle{
border-radius: 10px;
height: 40px;
padding: 11px 12px;
font-size: 16px;
-webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
-webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
-o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
width: 100%;
}
.inputRegister{
width: 180px;
}
::-webkit-input-placeholder {
color: black;
}
:-moz-placeholder { /* Firefox 18- */
color: black;
}
::-moz-placeholder {  /* Firefox 19+ */
color: black;
}
:-ms-input-placeholder {
color: black;
}

</style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<div class="container" style="color: #FFF; text-shadow: 2px 2px #626262; text-align: center;">
              <h1>Welcome! Do you have any questions?</h1>
              <h4>Please fill out the form below</h4>
            </div>
          
          <div class="container">
          <div class="jumbotron" style="margin-top:20px; border-radius: 0px; background-color: #FCFCFC;">
          <div class="row">
        <div class="col-md-4">
              <form>
        <div class="form-group">
            <span class="glyphicon glyphicon-user" aria-hidden="true" ></span>
            <span class="sr-only"></span>
            <label for="inputName">Name</label>
            <input type="Name" class="form-control" id="inputNAME" placeholder="Please enter your full name">
        </div>
        <div class="form-group ">
            <span class="glyphicon glyphicon-earphone" aria-hidden="true" ></span>
            <span class="sr-only"></span>
            <label for="inputNumber">Phone</label>
            <input type="number" class="form-control" id="inputNumber" placeholder="Phone Number">
        </div>
            </form>
              </div>
        
              <div class="col-md-4">
            <form>
        <div class="form-group">
            <span class="glyphicon glyphicon-envelope" aria-hidden="true" ></span>
            <span class="sr-only"></span>
            <label for="inputEmail">Email</label>
            <input type="email" class="form-control" id="inputEmail" placeholder="Email">
        </div>
        <div class="form-group">
            <span class="glyphicon glyphicon-home" aria-hidden="true" ></span>
            <span class="sr-only"></span>
            <label for="inputAddress">Address</label>
            <input type="Address" class="form-control" id="inputAddress" placeholder="Full Address">
        </div>
            </form>
              </div>
        
              <div class="col-md-4" style="border-left: 2px solid #ccc">
                  
              </div>
              
      </div>
              <div class="row">
                  <div class="col-md-8">
                  <form>
        <div class="form-group">
            <span class="glyphicon glyphicon-pencil" aria-hidden="true" ></span>
            <span class="sr-only"></span>
            <label for="inputMessage">Enter Your message</label>
                <textarea class="form-control" rows="5" id="message" placeholder="Enter your message"></textarea>
                <div class="col-md-12">
                        <button type="submit" class="btn btn-primary pull-right" id="btnContactUs">
                            Send Messege</button>
                    </div>
                     <div class="col-md-4">
            <form>
            <legend><span class="glyphicon glyphicon-globe"></span> Our office</legend>
            <address>
                <strong>Corporate Address:</strong><br>
                <br>
                Sri Sai murali Appartment<br>
                flat:405,Nagole road,Kothapet<br>
                Hyderabad,500035<br>
                
                <abbr title="contact number">
                    Phone:</abbr>
                +919494357525
            </address>
            <address>
                <strong>EMail us:</strong><br>
                <a href="mailto:#">Anilchoppari49@gmail.com</a>
            </address>
            </form>
        </div>
        
               
                  </div>
              </div>
             </div> 
          </div>
          
<jsp:include page="footer.jsp"></jsp:include>


</body>
</html>