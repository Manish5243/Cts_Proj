<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String id=request.getParameter("Course");
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/test?user=root&password=root");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM Exam_Schedule WHERE Course='"+id+"'");
response.sendRedirect("Exam_Schedule1.jsp");
%>