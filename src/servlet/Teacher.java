package servlet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import com.mysql.jdbc.*;
import connect.Connect;
import java.sql.*;
//import java.sql.Connection;
import java.sql.SQLException;

public class Teacher extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException {
        doPost(request,response);
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        response.setContentType("text/html");
        PrintWriter out =  response.getWriter();

        String sname=request.getParameter("sname");
        String programme=request.getParameter("programme");
        String enrollment=request.getParameter("enrollment");

        out.println("<h4>This is Teacher servlet</h4>");
        RequestDispatcher view = request.getRequestDispatcher("html/i.html");
        view.forward(request,response);
    }
}
/*/media/rahul/7C4E745E4E74135E/Users/Rahul Kumar/Downloads/Compressed/starter-template/index.html"*/