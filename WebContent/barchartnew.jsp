<%--
  Created by IntelliJ IDEA.
  User: keerthikorvi
  Date: 4/27/2015
  Time: 7:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title></title>
    <style type="text/css">

        body {
            font: 13px/1.3 'Lucida Grande',sans-serif;
            color: #666;
        }

        .chart {
            display: table;
            table-layout: fixed;
            width: 60%;
            max-width: 700px;
            height: 200px;
            margin: 0 auto;
            background-image: linear-gradient(to top, rgba(0, 0, 0, 0.1) 2%, rgba(0, 0, 0, 0) 2%);
            background-size: 100% 50px;
            background-position: left top;
        }
        .chart li {
            position: relative;
            display: table-cell;
            vertical-align: bottom;
            height: 200px;
        }
        .chart span {
            margin: 0 1em;
            display: block;
            background: rgba(209, 236, 250, 0.75);
            animation: draw 1s ease-in-out;
        }
        .chart span:before {
            position: absolute;
            left: 0;
            right: 0;
            top: 100%;
            padding: 5px 1em 0;
            display: block;
            text-align: center;
            content: attr(title);
            word-wrap: break-word;
        }

        @keyframes draw {
            0% {
                height: 0;
            }
        }




    </style>
</head>
<body>


<ul class="chart">
    <%
        String s1="Keerthi";
        String s2="Pramod";
        String s3="Siri";
        String s4="Sruthi";
        int h1=5;
        int h2=70;
        int h3=50;
        int h4=15;
    %>
    <li>
        <span style="height:<%=h1%>%" title="<%=s1%>"></span>
    </li>
    <li>
        <span style="height:<%=h2%>%" title="<%=s2%>"></span>
    </li>
    <li>
        <span style="height:<%=h3%>%" title="<%=s3%>"></span>
    </li>
    <li>
        <span style="height:<%=h4%>%" title="<%=s4%>"></span>
    </li>
    <li>
        <span style="height:10%" title="hey!!!"></span>
    </li>
</ul>


</body>
</html>
