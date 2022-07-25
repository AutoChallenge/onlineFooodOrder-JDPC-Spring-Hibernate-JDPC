<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
      
    <%-- <%@include file="common.jsp" %> --%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css'>
<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Muli'><link rel="stylesheet" href="./style.css">


        
<style>

body{

  font-family: 'Muli', sans-serif;
  
}
h1{
  color: #fff;
  padding-bottom: 2rem;
  font-weight: bold;
}
a{
  color: #333;
}
a:hover{
  color: #E8D426;
  text-decoration: none;
}
.form-control:focus {

    color: #000;
    background-color: #fff;
    border:2px solid #E8D426;
    outline: 0;
    box-shadow: none;

}

.btn{
  background: #E8D426;
  border: #E8D426;
}
.btn:hover {
  background: #E8D426;
  border: #E8D426;
}

</style>

</head>
<body>

 
<!-- partial:index.partial.html -->
<div class="pt-5">
 
  
<div class="container">
                <div class="row">
                    <div class="col-md-5 mx-auto">
                        <div class="card card-body">
                                                    
                            <form id="submitForm" action="/checkuserlogin" method="post" data-parsley-validate="" data-parsley-errors-messages-disabled="true" novalidate="" _lpchecked="1">
                                <div class="form-group required">
                                    <label for="usrnm">User :</label>
                                    <input type="text" class="form-control text-lowercase"  required="" id="usrnm" name="usrnm" value="">
                                </div>                    
                                <div class="form-group required">
                                   <label for="pwd">Password :</label>                                      
                                    <input type="password" class="form-control" required=""  name="pwd" id="pwd" value="">
                                </div>
                             
                                <div class="form-group pt-1">
                                    <button class="btn btn-primary btn-block" type="submit">Log In</button>
                                </div>
                            </form>
                            
                        </div>
                    </div>
                </div>
            </div>
</div>
<!-- partial -->
  
</body>
</html>



</body>
</html>