<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
    <%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>

div
{
	margin-left:20%;
	margin-right:20%;
	padding-left:50px;
	padding-top:50px;
}
</style>


</head>
 <body style="background-color:LightPink ;">

<div>

<h1 align="center">Category List</h1> 
<div style="text-align:center">
<a  href="/addnewcatform"> Add New User Detail </a>
</div>
<br><br>
 
    <table align="center" border="1" cellpadding="20px">
        <tr>
        <th><H4><b>ID</b></H4></th>
        <th><H4><b>Category Name</b></H4></th>   
    
        <th colspan="3"><H4><b>Operations</b></H4></th>     
        </tr>
     
	<c:forEach items="${catlist}" var="t">
            <tr>
           		 <td>${t.catid}</td>
           		 <td>${t.catnm}</td>
           		 <td> ${t.image }</td>
                       	 
            	<td><a href="/updatecat/${t.catid}"> Update </a>   </td>   
            	<td><a href="/deletecat/${t.catid}"> Delete </a>   </td>     
            	                                          
            </tr>
    </c:forEach>
    
    
</table>


</div>
</body>
</html>