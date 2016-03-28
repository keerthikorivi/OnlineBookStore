<%--
  Created by IntelliJ IDEA.
  User: keerthikorvi
  Date: 4/28/2015
  Time: 12:55 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title></title>
</head>
<body>
hi!!! we are in PageA
<p>hiiiiiiiiiiiooooyyyyy</>p
<p><%=request.getParameter("productsSelected")%></>p

<%
    String s=request.getParameter("productsSelected");
    System.out.println("s::::"+s);
%>
</body>
</html>
