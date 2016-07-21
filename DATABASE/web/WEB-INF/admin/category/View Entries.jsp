<%-- 
    Document   : newjsp
    Created on : Jul 4, 2016, 8:50:26 PM
    Author     : Prithivi Raj
--%>

<%@page import="com.leapfrog.Student.entity.Student"%>
<%@page import="java.util.List"%>
<%@page import="com.leapfrog.Student.DAO.DAOImpl"%>
<%@page import="com.leapfrog.Student.DAO.studentDAO"%>
<%@include file="../shared/header.jsp" %>
    <body>
        <div class="container">
        <h1>Student's Database</h1>
        <%
            studentDAO stdao = new DAOImpl();
        %>
        <table class="table table-stripped table-bordered table-hover">
            <tr>
                <th>ID</th>
                <th>First name</th>
                <th>Last name</th>
                <th>Phone Number</th>
                <th>Email</th>
                <th>Username</th>
                <th>College</th>
                
            </tr>
            <%
                for(Student s:stdao.getAll()){
            %>
            <tr>
                <td><%=s.getId()%></td>
                <td><%=s.getFname()%></td>
                <td><%=s.getLname()%></td>
                <td><%=s.getPhone()%></td>
                <td><%=s.getEmail()%></td>
                <td><%=s.getUsername()%></td>
                <td><%=s.getCollege()%></td>
                
            </tr>
            <%
                ;}
            %>
        </table>
        </div>
 </body>
</html>