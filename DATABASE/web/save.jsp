<%-- 
    Document   : save
    Created on : Jul 7, 2016, 12:59:03 PM
    Author     : Prithivi Raj
--%>

<%@page import="com.leapfrog.Student.entity.Student"%>
<%@page import="java.util.List"%>
<%@page import="com.leapfrog.Student.DAO.StudentDAOImpl"%>
<%@page import="com.leapfrog.Student.DAO.StudentDAO"%>

<%
    if (request.getMethod().equalsIgnoreCase("post")) {
        StudentDAO stDao = new StudentDAOImpl();
        Student student = new Student();
        try {
            student.setId(Integer.parseInt(request.getParameter("id")));
            student.setFname(request.getParameter("fname"));
            student.setLname(request.getParameter("lname"));
            student.setPhone(request.getParameter("phone"));
            student.setEmail(request.getParameter("email"));
            student.setUsername(request.getParameter("username"));
            student.setPassword(request.getParameter("password"));
            student.setCollege(request.getParameter("college"));
            if (request.getParameter("id") != null && request.getParameter("id").equalsIgnoreCase(" ")) {
                stDao.update(student);
            } else {
                student.setId(Integer.parseInt(request.getParameter("id")));
                stDao.insert(student);
            }
            response.sendRedirect("Home.jsp?sucess");

        } catch (Exception ex) {
            response.sendRedirect("adding.jsp?error_(duplicateEntries)");
        }
    } else {
        response.sendRedirect("Home.jsp?error");
    }

%>
