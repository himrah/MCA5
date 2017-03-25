<%--
  Created by IntelliJ IDEA.
  User: rahul
  Date: 19/3/17
  Time: 9:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.io.*,java.util.*,java.sql.*" %>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<sql:setDataSource var ="snapshot" driver ="com.mysql.jdbc.Driver"
                   url ="jdbc:mysql://localhost:3306/kk"
                   user ="root" password ="rahulkumar" />
<sql:query dataSource ="${snapshot}" var ="result" >
    select * from student;
</sql:query>
<table>
    <tr>
    <td>Program</td>
    <td>Name</td>
    <td>Enrol</td>
    </tr>
<c:forEach var ="row" items ="${result.rows}" >

        <tr>
        <td><c:out value="${row.program}"/></td>
        <td><c:out value="${row.sname}"/></td>
        <td><c:out value="${row.enrollment}"/></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
