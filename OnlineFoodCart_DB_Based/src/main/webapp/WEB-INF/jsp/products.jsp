         <form class="form-inline" name = "select_req" action="/orders" method = post>
        
 <c:forEach items="${catlist}" var="t">
            <tr>
           		 <td align="center">${t.catnm}</td>
           		 <td align="center">${t.catid}</td>
           		 <td align="center"><img src="${pageContext.request.contextPath}/resources/image/${t.image}" height="50" width="50"/></td> 
           		 <!-- <td><a href="/orders">OrderNow</a></td> -->
           		 <td align="center"><a href="/orders/${t.catid}"> OrderNow </a>   </td>   
            </tr>
    </c:forEach>
  
        </form>
         <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>








</body>
</html>