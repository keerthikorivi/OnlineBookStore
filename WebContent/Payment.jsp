<%--
  Created by IntelliJ IDEA.
  User: keerthikorvi
  Date: 4/28/2015
  Time: 3:06 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style>
        header {
            background-color:black;
            color:white;
            text-align:center;
            padding:5px;
        }
        nav {
            line-height:30px;
            background-color:#eeeeee;
            height:500px;
            width:300px;
            float:left;
            padding:5px;
        }

        section {
            width:350px;
            float:left;
            padding:10px;
        }
        footer {
            background-color:black;
            color:white;
            clear:both;
            text-align:center;
            padding:5px;
        }
        table, th, td {
            border: 1px solid black;
            border-collapse: collapse;
        }
        th, td {
            padding: 5px;
        }
    </style>
</head>
<body>

<header>
    <h1>Payment</h1>
</header>

<nav>

</nav>

<section>
    <center style="align-content: center">
        <div style="align-content: center;border: 1px solid">
            <label>Select CardType:</label>
            <select id = "myList">
                <option value = "1">CreditCard</option>
                <option value = "2">DebitCard</option>
            </select>
        </div>

      
    </center>
</section>
<nav style="line-height:30px;background-color:#eeeeee;height:500px;width:300px;float:right;padding:5px">

</nav>
<footer>
    Online BookStore
</footer>

</body>
</html>

