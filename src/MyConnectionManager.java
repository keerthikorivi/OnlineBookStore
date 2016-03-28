
import java.sql.*;
import java.util.HashMap;

public class MyConnectionManager {

    Connection connection = null;

    public MyConnectionManager() {

        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        try {
            connection = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/onlinebookstore", "root", "root");
        } catch (SQLException e) {
            e.printStackTrace();
        }


    }

    public HashMap getProducts() {

        HashMap productMap = new HashMap();
        Statement statement = null;
        ResultSet resultset = null;
        try {
            statement = connection.createStatement();
            resultset =
                    statement.executeQuery("select * from book");
            while (resultset.next()) {
                productMap.put(resultset.getString(2), resultset.getString(3));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return productMap;
    }

    public boolean validateUser(String username, String password) {

       if(username!=null && password!=null) {
           Statement statement = null;
           ResultSet resultSet=null;
           String selectSQL = "SELECT * FROM member WHERE m_id ='"+username+"'";
           try {
               statement = connection.createStatement();
           } catch (SQLException e) {
               e.printStackTrace();
           }
           if ( statement!= null) {
               try {
                   System.out.println("username:"+username);
                   System.out.println("password:"+password);
                    resultSet = statement.executeQuery(selectSQL);
               } catch (SQLException e) {
                   e.printStackTrace();
               }
           }

           try {
               if (resultSet != null && resultSet.next()) {
                   System.out.println("userId:" + resultSet.getString("m_id"));
                   System.out.println("username:"+resultSet.getString("m_password"));
                   String passwordFromDb=resultSet.getString("m_password");
                   if(password.equals(passwordFromDb))
                   return true;
               }
           } catch (SQLException e) {
               e.printStackTrace();
           }
       }
        return false;
    }

    public int addProduct(String bookname, String bookprice, String bookimage, String discount ){
        PreparedStatement preparedStatement = null;
        ResultSet resultSet=null;
        discount="0";
        int result=0;
        String selectSQL = "insert into book(b_name,b_image,b_price,discount) values(?,?,?,?)";
        try {
            preparedStatement=connection.prepareStatement(selectSQL,Statement.RETURN_GENERATED_KEYS);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        if (preparedStatement != null) {
            try {
                preparedStatement.setString(1,bookname);
                preparedStatement.setString(2,bookimage);
                preparedStatement.setString(3,bookprice);
                preparedStatement.setString(4,discount);

               preparedStatement.executeUpdate();
                ResultSet tableKeys = preparedStatement.getGeneratedKeys();
                tableKeys.next();
                 result = tableKeys.getInt(1);
                return  result;


            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return result;
    }

}


