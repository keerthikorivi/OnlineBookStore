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
    <h1>Order Summary</h1>
</header>

<nav>

</nav>

<section>
    <center style="align-content: center">

        <table style="width:100%">
            <tr>
                <th>CoverPage</th>
                <th>BookName</th>
                <th>Quantity</th>
                <th>Price</th>
            </tr>
                <%
                    HashMap productsList=new HashMap();
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection connection = null;
                    int total=0;
                    connection = DriverManager.getConnection(
                            "jdbc:mysql://localhost:3306/onlinebookstore", "root", "root");
                    Statement statement = null;
                    ResultSet resultset=null;
                    try {
                        statement = connection.createStatement();
                        resultset =
                                statement.executeQuery("select * from book") ;
                        while(resultset.next()){
                            productsList.put(resultset.getString(2), resultset.getString(3));
                        }
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }

                String [] productdetail;
            String s=request.getParameter("productsSelected");
            String[] products=s.substring(1,s.length()).split(",");
            for(int i=0;i<products.length;i++){
            productdetail=products[i].split(":");
                request.setAttribute("productsOrdered",productdetail);



        %>
            <tr>
                <td><img src="<%=productsList.get(productdetail[0])%>"></td>
            <td><%=productdetail[0]%></td>
                <td><%=productdetail[2]%></td>
                <td><%=productdetail[1]%></td>
                <%total=total+Integer.valueOf(productdetail[1]);%>

            <%
                    }
            %>
            </tr>
            <tr>
                <th>Total: </th>
                <th></th>
                <th></th>
                <th>$ <%=total%></th>
            </tr>
            </table>
        <form action="Payment.jsp" method="post">
            <input type="submit" src="img/checkout.png" value="Procceed to Payment" />
        </form>

    </center>
</section>
<nav style="line-height:30px;background-color:#eeeeee;height:500px;width:300px;float:right;padding:5px">

</nav>
<footer>
    Online BookStore
</footer>

</body>
</html>
