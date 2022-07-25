<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

  
<style>
.form-group{
width:250px;
}
 body {
 align: center;

.form_bg {
    background-color:white;
    border-style: inset;
    color:grey;
    padding-left:40px;
    border-radius:50px;
 
    border:5px solid inset;
    width: 380px;
    height: 700px;
    
}


}
	  footer {
        background-color: #555;
      color: white;
      padding-top: 10px;
      padding-bottom: 0px; 
      position:fixed; 
      bottom:0;
	  width:100%;
    }
    select {
  padding: 6px;
  height: 32px;
  width: 6.6cm;
  color:black;
  border-radius: 10px;
  
}
textarea{
  padding: 6px;
  height: 90px;
  width: 6.6cm;
  color:black;
  border-radius: 10px;
  
}
    .nav.navbar-nav li a {
   color: #fff;
 }

.nav.navbar-nav a:hover {
 color: grey;
}
 .form-group.required.control-label:after{
   color: red;
   content: "*";
   position: absolute;
   margin-left: 5px;
} 

</style>
<script language="javascript">
        	   		function deleteRecord(id){ 
        	   		 var doIt=confirm('Do you want to cancel the item?');
        	   if(doIt){
        	   		  var f=document.form;
        	   	f.method="post";
        	   	f.action='DeleteController?id='+id;
        	    f.submit();
        	    } 
        	   		
        	    else{
        	   	
        	   }
        	   		}
        	   	</script>

	<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand "href="Home.jsp">Customer Support</a>
    </div>
    <ul class="nav navbar-nav">
       <li ><a href="index.jsp">Home</a></li>
      <li><a href="Menu.jsp">Menu</a></li>
    </ul>
  </div>
</nav>



 </head>
<body>
 <center><h3>Order Generation</h3></center>
  	<!-- <form action="order" method="post" class='form_bg'> -->
  	 <form class="form_bg" name = "select_req" action="/add_to_order" method = post>
  	<% HttpSession session11=request.getSession(false);
 %>
 
   <% String name=request.getParameter("name");
          String cid=request.getParameter("cid");
          String jid=request.getParameter("jid");
          String id12=request.getRequestedSessionId();
          %> 
<%--           <%Cookie[] cookies = request.getCookies();
          
          System.out.println("cookie values"+cookies);
          if (cookies != null) {

            boolean cookieJSESSIONIDFound = false;

            for (Cookie cookie : cookies) {

              if (cookie.getName().equals("JSESSIONID")) {

                cookieJSESSIONIDFound = true;

               System.out.print("Cookie with name JSESSIONID found!");
                String jid=cookie.getValue();
                System.out.println("JSESSIONID=" +jid);
 %> --%>
  	       <center>
           <div class="container">
          
  	 <div class="col-xs-6 col-md-6">
      <label class="form-group required control-label">Transaction Id</label>
      <input type="text" class="form-control" name="cname"  value='<%=id12%>' readonly>
       
    <%--   <%
              }

            }
          } %> --%>
</div>
</div>
 </center>
 <div class="container">
   


<c:forEach items="${orders_rec}" var="t">
            
                <div class="col-xs-6 col-md-6">
      <label class="form-group required control-label">Item Name</label>
      <input type="text" class="form-control" name="catnm" id="catnm" value="${t.catnm}" readonly>
     <c:set var="catnm" value="${t.catnm}"/>
     
</div>
 <div class="col-xs-6 col-md-6">
      <label class="form-group">Cost</label>
  <input type=  "text" class='form-control'  name='catid' id="catid" value="${t.catid}" readonly>
   <c:set var="catid" value="${t.catid}"/>
</div>
  </c:forEach> 
<div class="col-xs-6 col-md-6"><br><br>
<label><b>Type</b></label><br><br>




<%-- <%SortedMap<Integer, String> sm
            = new TreeMap<Integer, String>();
        sm.put(new Integer(2), "practice");
        sm.put(new Integer(3), "quiz");
        sm.put(new Integer(5), "code");
        sm.put(new Integer(4), "contribute");
        sm.put(new Integer(1), "geeksforgeeks"); 
        
         request.setAttribute("sm", sm);%>
          <select class="form-group" name="type1" id="type1" scope="session" action="order.jsp">
          <c:forEach var="item" items="${sm}">
            <option value="${item.key}">${item.value}</option>
          </c:forEach>
        </select> --%>


<!-- <form name="f1" method="post" action="order.jsp">
    <select class="form-group" name="type1" id="type1" action="order.jsp">
			
	<option value=regular>Regular Pizza</option>
		<option value=panpizza>Pan Pizza</option>	
		<option value=small>Small Pizza</option>
		<option value=extralrge>Extra Large</option>
			</select>
			</form>  -->
			
			<%
			String caption="Go";
			%>
			
		<!-- <form name="f1" method="post" action="order.jsp"> -->
		<select class="form-group" name="typeList" id="typeList">
		
		<option value="Onion">Small</option>
		<option value="Cheese">Medium</option>
		<option value="Garlic">Large</option>
</select>
<script>
document.getElementById("typeList").addEventListener('change', (event) => 
{
	
	document.getElementById("typeListID").innerHTML = event.target.value;
	})
</script>

<% caption="<script>document.writeln(v)</script>";
out.println("value="+caption); %>
	
	
	
<!-- </script> -->
			
		
			
			
			<%-- <form action="list_servlet" method="post">
      <select class="form-group" name="cityname" id="myselect">
          <c:forEach var="cityname" items="${cityList}">
            <c:choose>
               <c:when test="${not empty selectedCity && selectedCity eq cityname}">
                   <option value="${cityname}" selected = "true">${cityname}</option>
               </c:when>
               <c:otherwise>
                   <option value="${cityname}">${cityname}</option>
               </c:otherwise>
            </c:choose>
         </c:forEach>
      </select>
</form> --%>
			
			
			
</div><br><br>
<div class="col-xs-6 col-md-6"><br><br>
       <label><b>Topping</b></label><br>
     	<br>
     	
     	<select class="form-group" name="topping"  id="topping" required>
		<option value=Bacon>Bacon</option>
		<option value=Olives>Olives</option>	
		<option value=Black Olives>Black Olives</option>
		<option value=Pepperoni>Pepperoni</option>
		<option value=Black Olives>Black Olives</option>
		<option value=Mushrooms>Mushrooms</option>
		</select>
		
	
<script>
document.getElementById("topping").addEventListener('change', (event) => 
{
	
	document.getElementById("toppingID").innerHTML = event.target.value;
	})
</script>
		
		
		
		
</div><br>
<div class="col-xs-6 col-md-6"><br>
     <label><b>Extra cheese</b></label><br>
     
     
       <input type="radio" name="cheese" id="cheese" value="Yes">Yes 
  	   <input type="radio" name="cheese"  id="cheese" value="No" checked>No
  	   
  	   <script>
document.getElementById("cheese").addEventListener('change', (event) => 
{
	document.getElementById("cheeseID").innerHTML = event.target.value;
	})
</script>
  
  
</div>

 <div class="col-xs-6 col-md-6">
      <label class="form-group required control-label">Quantity</label>
      	<br>
      	<select class="form-group" name="quantity" id="quantity">
	<!-- <option value=1>1</option> -->
		<option value=2>1</option>	
	<%-- 	<c:if test="${item.key == 1}">1</c:if> --%>
		<option value=2>2</option>	
		<option value=3>3</option>
		<option value=4>4</option>
		<option value=5>5</option>
		
			</select>
			
			
			
	
<script>
document.getElementById("quantity").addEventListener('change', (event) => 
{
	
	document.getElementById("quantityID").value = event.target.value;
	document.getElementById("quantityID").innerHTML = event.target.value;
	var v=document.getElementById("quantityID").innerHTML;
	caption=v;
	})
</script>
			
			
</div>


   

<div class="col-xs-6 col-md-6"><br>

<a class="btn btn-success" type="submit" href="/add_to_order/${catid}">Add to Order</a>

<%--  <td align="center"><a href="/add_to_order/${t.catid}"> OrderNow </a>   </td>    --%>

</div>
<div class="col-xs-6 col-md-6"><br>
<a href="index.jsp?jid=<%=jid%>" class="btn btn-default">Add More Items</a>
</div>

</div>
<center>
</center>
</center>

<center>
<br><br><br><br>
<div class="col-xs-12 col-md-12">
<a href="#demo" class="btn btn-info" data-toggle="collapse" onClick="divideBy()">View Order</a>
  <div id="demo" class="collapse">
   <!-- <form method="post"  name="form" action='checkout' > -->

 
  	 


<h3>Order Booking</h3>


 <table id='example' class='table table-hover table-bordered '>
 
      
       <thead><tr class='active'>
        		<th>Cart Id</th>
        		<!-- <th>Customer Name</th> -->
        		<th>cost</th>
        		<th>type</th>
        		<th>Topping</th>
        		<th>Extracheese</th>
        		<th>quantity</th>
        		<th>Item Total cost</th>
        		<!-- <th>Delete Order</th> -->
        		</thead>
  <tbody>
        
        
        
        
             
        
<%--  <c:forEach items="${catlist}" var="t">
            <tr>
           		 <td align="center">${t.catnm}</td>
           		 <td align="center">${t.catid}</td>
           		 <td align="center"><img src="${pageContext.request.contextPath}/resources/image/${t.image}" height="50" width="50"/></td> 
           		 <!-- <td><a href="/orders">OrderNow</a></td> -->
           		 <td align="center"><a href="/add_to_order/${t.catid}"> OrderNow </a>   </td>   
            </tr>
    </c:forEach> --%>
  
       
         
       
        

            <tr>
            
            <%  HttpSession sessions = request.getSession(true);
                    String id="eswar";
                    session.setAttribute("name",id); %>
            
            <%
   String description =
      request.getParameter("name");
      session.setAttribute("name","fds");
      out.println("Thanks for completing the wizard.");
      %>
            
            <% String username1=(String)request.getAttribute("quantity"); %>
            
            <% String username=(String)request.getSession().getAttribute("quantity");
            
            %> 
            
            <script>
    function divideBy() 
    { 
      num1 = document.getElementById(
        "quantityID").value;
      num2 = ${catid};
      document.getElementById(
        "result").innerHTML = num1 * num2;
    }
  </script>
          
            
           		<td name="trs"><%=id12%></td>
           		<td name="cst"><c:out value = "${catid}"/></td>
           		<td ><span id="typeListID" name="typ"></span></td>
           		  
           		<td name="topp"><span id="toppingID"></td>
           		<td name="cid"><span id="cheeseID"></span></td>
           		<td name="qid"><span id="quantityID"></span></td>
           		<%-- <td><c:if test="${topping.key == Bacon}">Bacon</c:if></td> --%>
           		<td name="trs"><span id="result"></span></td>
           			
           	<!-- 	<td>Username: </td> -->
            </tr>
   
  
         
         </tbody>
         </table>
   
     </form>
</body>
<br>

</html>