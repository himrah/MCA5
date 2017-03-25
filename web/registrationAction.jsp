<%@page language="java" import="java.sql.*,connect.Connect"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
	<TITLE> New Document </TITLE>
</HEAD>

<BODY>
<%
	String sname=request.getParameter("sname");
	String programme=request.getParameter("programme");
	String enrollment=request.getParameter("enrollment");
	try
	{
		//out.print("connected");
	    Connection con=Connect.getConnection();
		//Connection con=Connect.getConnection();

		String query="insert into student(program, sname, enrollment)values(?,?,?)";

		PreparedStatement pstmt=con.prepareStatement(query);
		
		pstmt.setString(1,programme);
		pstmt.setString(2,sname);
		pstmt.setString(3,enrollment);
		pstmt.executeUpdate();
		out.print("Data Submitted");

	}
	catch(Exception e)
	{
		out.print("hey"+e);
	}

%>
<a href="studentRecord.jsp"><input type="button" value="records"></a>
</BODY>
</HTML>
