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

 <body style="background-color:LightPink ;">

 <center><h3>Successfully Ordered</h3></center>

<div class="container">
   


<c:forEach items="${add_to_order_rec}" var="t">
            
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

<div class="col-xs-6 col-md-6">
      <label class="form-group required control-label">Address</label>
      <input type="text" class="form-control" name="catnm" id="catnm" value="Hyd,SriNarCol" readonly>
     
</div>

  </c:forEach> 
  
</div>

<!-- <form action="/add_cat" method="post">

		Category Name : <input type="text" name="catnm" id="catnm"/><br>
		Upload Image : <input  name="catfile" value="Image"/><br>

		<input type="submit" value="SUBMIT"/>


</form> -->


<% String name=(String) session.getAttribute("name");
          String cid=request.getParameter("topp");
          String jid=request.getParameter("typ");
          String id12=request.getRequestedSessionId();
          %> 
          <%-- 
          <td name="trs"><%=id12%></td>
           		<td name="cst">><c:out value = "${catid}"/></td>
           		<td name="typ">><span id="typeListID"></span></td>
           		<td name="topp">><span id="toppingID"></span></td>
           		<td name="cid">><span id="cheeseID"></span></td>
           		<td name="qid">><span id="quantityID"></span></td>
           		<td><c:if test="${topping.key == Bacon}">Bacon</c:if></td>
           		<td name="trs">><span id="result"></span></td> --%>



<%-- <table id='example' class='table table-hover table-bordered '>
            <tr>
            <tbody>
            
           		<td><c:out value = "${name}"/></td>
           		<td><%=name%></td>
           		<td><span id="typeListID"></span></td>
           		<td><span id="toppingID"></span></td>
           		<td><span id="cheeseID"></span></td>
           		<td><span id="quantityID"></span></td>
           		<td><c:if test="${topping.key == Bacon}">Bacon</c:if></td>
           		<td><span id="result"></span></td>
           			
           	<!-- 	<td>Username: </td> -->
            </tr>
   
  
         
         </tbody>
         </table>
 --%>



</body>
</html>