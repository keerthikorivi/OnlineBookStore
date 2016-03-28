/**
 * Created by keerthikorvi on 4/30/2015.
 */
/**
 * Created by keerthikorvi on 4/26/2015.
 */
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
public class AddProductServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out=response.getWriter();
        String name=request.getParameter("bookname");
        String bookprice=request.getParameter("bookprice");
        String bookimage=request.getParameter("bookimage");
        MyConnectionManager myConnectionManager=new MyConnectionManager();
        int result=myConnectionManager.addProduct(name,bookimage,bookprice,"0");
        if(result>0){
            out.println("Successfully added product");
            response.sendRedirect("success.jsp");
        }
        else
        {
            response.sendRedirect("error.jsp");
        }

    }
}

