<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*" session="true" %>
<%
    HttpSession objSesion = request.getSession();
    objSesion.invalidate();
        out.println("<script>location.replace('../login.jsp');</script>");
%>
