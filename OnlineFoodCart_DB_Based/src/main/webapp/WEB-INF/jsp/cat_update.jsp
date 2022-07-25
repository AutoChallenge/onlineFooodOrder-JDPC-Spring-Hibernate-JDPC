<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h2>Updation Form</h2> 
<form action="/updatecat" method="post">

<c:forEach items="${update_rec}" var="t">
            Category ID  : <input type="text" name="cid" id="cid" value="${t.catid}"/><br>
            Name  : <input type="text" name="cnm" id="cnm" value="${t.catnm}"/><br>
            Image : <input type="text" name="image" id="image" value="${t.image}"/><br>
            <input type="submit" value="UPDATE"/>
          
    </c:forEach> 

</form>

</body>
</html>