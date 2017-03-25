<%@page language="java"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
	<TITLE> New Document </TITLE>
</HEAD>

<BODY topmargin="0">
<TABLE width="100%">
<TR>
	<TD align="center"><%@include file="header.html"%></TD>
</TR>
</TABLE>
<form name="registration" action="registrationAction.jsp" method="POST">
	<TABLE align="center">
		<TR height="40">
			<TD align="center" colspan="2"><FONT SIZE="5" COLOR="#000033">Registration Form</FONT></TD>
		</TR>
		<TR>
			<TD>NAME</TD><TD><input type="text" name="sname"></TD>
		</TR>
		<TR>
			<TD>PROGRAMME</TD><TD><input type="text" name="programme"></TD>
		</TR>
		<TR>
			<TD>ENROLLMENT NO</TD><TD><input type="text" name="enrollment"></TD>
		</TR>
		<TR>
			<TD></TD><TD align="center"><input type="submit" value="SUBMIT"></TD>
		</TR>
	</TABLE>
</form>
</BODY>
</HTML>
