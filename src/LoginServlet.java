/**
 * Created by keerthikorvi on 4/26/2015.
 */
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out=response.getWriter();
       // request.getRequestDispatcher("link.html").include(request, response);

        String name=request.getParameter("name");
        String password=request.getParameter("password");

        if(password.equals("admin123")){
           //out.print("Welcome, "+name);
            //HttpSession session=request.getSession();
            //session.setAttribute("name",name);
            response.sendRedirect("AdminPage.jsp");
        }
        else{
            MyConnectionManager myConnectionManager=new MyConnectionManager();
           boolean validateCUser= myConnectionManager.validateUser(name,password);
            if(validateCUser){
                HttpSession session=request.getSession();
                session.setAttribute("name",name);
                response.sendRedirect("dnd2_demo.jsp");
            }
            else {
                out.print("Sorry, username or password error!");
                request.getRequestDispatcher("LoginError.jsp").include(request, response);
            }
        }
        out.close();
    }
}
