<%--
  Created by IntelliJ IDEA.
  User: keerthikorvi
  Date: 4/28/2015
  Time: 3:06 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js">
    </script>

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

        ul#nav2{
            list-style: none;
            padding:0;
            margin: 0 0 10px 0;
        }
        ul#nav2 li{
            display:inline;
        }
        span.tab{
            padding: 0 100px; /* Or desired space*/
        }
    </style>
</head>
<body>

<header>
    <h1>Admin Page</h1>
</header>

<nav>

</nav>

<section>


        <span id="tab">
        <ul id="nav2">
            <li><a href='barchartnew.jsp'>TopSoldProducts</a> </li>&nbsp;&nbsp;&nbsp;
            <li><a href='barchartnew.jsp'>Top5Genres</a> </li>&nbsp;&nbsp;&nbsp;
            <li><a href='AddProduct.jsp'>AddProduct</a> </li>&nbsp;&nbsp;&nbsp;
            <li><a href='DeleteProduct.jsp'>DeleteProduct</a> </li>&nbsp;&nbsp;&nbsp;
            <li><a href='UpdateProduct.jsp'>DeleteProduct</a> </li>&nbsp;&nbsp;&nbsp;
            <li><a href="LogoutServlet">Logout</a></li>
        </ul>
        <h4><center style="align-content: center">Welcome Admin!:)</center></h4>
            <center style="align-content: center">
        <div id="main">

            <script type="text/javascript">
                $(document).ready(function(){

                    $('ul#nav2 li a').click(function(){

                        var page=$(this).attr('href');
                        $('#main').load(page);
                        return false;
                    });
                });
            </script>
        </div>
            </center>
   </span>

</section>
<nav style="line-height:30px;background-color:#eeeeee;height:500px;width:300px;float:right;padding:5px">

</nav>
<footer>
    Online BookStore
</footer>

</body>
</html>

