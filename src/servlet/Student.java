package servlet;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

public class Student extends HttpServlet{
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException{
        doPost(request,response);
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out =  response.getWriter();
        out.println("This is servlet");

    }
}
