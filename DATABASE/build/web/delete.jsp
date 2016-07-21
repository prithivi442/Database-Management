<%-- 
    Document   : save
    Created on : Jul 7, 2016, 13:59:03 PM
    Author     : Prithivi Raj
--%>

<%@page import="com.leapfrog.Student.entity.Student"%>
<%@page import="java.util.List"%>
<%@page import="com.leapfrog.Student.DAO.StudentDAOImpl"%>
<%@page import="com.leapfrog.Student.DAO.StudentDAO"%>

<%
    try {
        int id = Integer.parseInt(request.getParameter("id"));
        StudentDAO stDao = new StudentDAOImpl();
        int result = stDao.delete(id);
        if (result == 1) {
            response.sendRedirect("ViewEntries.jsp?success");
        }
    } catch (Exception ex) {
        response.sendRedirect("ViewEntries.jsp?error");
    }
%>

