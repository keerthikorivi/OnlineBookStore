<%--
  Created by IntelliJ IDEA.
  User: keerthikorvi
  Date: 4/29/2015
  Time: 11:45 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style>
    </style>
</head>
<body>



<section >
    <br><br><br><br><br><br>
    <center style="align-content: center">
        <div style="align-content: center;align-self:center;border: 1px solid;">
            <form action="AddProductServlet" method="post">
                <br>
                Book Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="bookname"><br><br>
                Book Price:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="bookprice"><br><br>
                Book Image Location:<input type="text" name="bookimage"><br><br>
                <input type="submit" value="Add Product!"><br><br>

            </form>
        </div>

    </center>
</section>


</body>
</html>


