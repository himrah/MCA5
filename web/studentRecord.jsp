<%@page language="java" import="java.sql.*,connect.Connect"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
	<TITLE> New Document </TITLE>
</HEAD>

<BODY>
<TABLE align="center" width="100%" border="1">
	<TR height="50" bgcolor="#CCFFFF">
		<TD align="center" colspan="3">STUDENT RECORD</TD>
	</TR>
	<TR height="40" bgcolor="#FFFFCC">
		<TD>NAME</TD><TD>PROGRAMME</TD><TD>ENROLLMENT</TD>
	</TR>

<%
	String sname="";
	String programme="";
	String enrollment="";
	try
	{
		Connection con=Connect.getConnection();
		String query="select sname, program, enrollment from student";
		PreparedStatement pstmt=con.prepareStatement(query);
		ResultSet rs=pstmt.executeQuery();
		while(rs.next())
		{
			sname=rs.getString("sname");
			programme=rs.getString("program");
			enrollment=rs.getString("enrollment");
%>
	<TR>
		<TD><%=sname%></TD><TD><%=programme%></TD><TD><%=enrollment%></TD>
	</TR>	
<%
		}
		
	}
	catch(Exception e)
	{
		out.print("hey"+e);
	}

%>
</TABLE>
<a href="registration.jsp"> <input type="button" value="Insert"></a>
</BODY>
</HTML>
