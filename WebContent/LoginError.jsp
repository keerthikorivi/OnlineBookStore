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
        header {
            background-color:black;
            color:white;
            text-align:center;
            padding:5px;
        }
        nav {
            line-height:30px;
            background-color:#eeeeee;
            height:400px;
            width:350px;
            float:left;
            padding:5px;
        }

        section {
            width:350px;
            float:left;
            padding-left: 150px;
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
        span.tab{
            padding: 0 80px; /* Or desired space*/
        }
    </style>
</head>
<body>

<header>
    <h1>Welcome To OnlineBookStore</h1>
</header>

<nav>

</nav>

<section >
    <br><br><br><br><br><br>
    <center style="align-content: center">
        <span id="tab">
        <div style="align-content: center;align-self:center;border: 1px solid;">
           <h5>Your Login Credentials are incorrect...Please re-try again! <a href="LoginPage.jsp">Retry Again</a></h5>
        </div>
        </span>


    </center>
</section>
<nav style="line-height:30px;background-color:#eeeeee;height:400px;width:350px;float:right;padding:5px">

</nav>
<footer>
    Online BookStore
</footer>

</body>
</html>


