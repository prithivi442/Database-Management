<%-- 
    Document   : newjsp
    Created on : Jul 4, 2016, 8:50:26 PM
    Author     : Prithivi Raj
--%>

<%@page import="com.leapfrog.Student.entity.Student"%>
<%@page import="java.util.List"%>
<%@page import="com.leapfrog.Student.DAO.StudentDAOImpl"%>
<%@page import="com.leapfrog.Student.DAO.StudentDAO"%>

<%@include file="header.jsp" %>
        
        <title>ALL Entries!</title>
    </head>
    <body>

        <div class="masthead clearfix">
            <div class="inner">
                <h1 allign="center">All Entries!</h1>
            </div>
        </div>
        <p></p>
        <br><br>
        <div class="container">
            <br><br><p></p>
            <!-- Static navbar -->
            <nav class="navbar navbar-default">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div>
                    <div id="navbar" class="navbar-collapse collapse">
                        <ul class="nav navbar-nav">
                            <li><a href="index.jsp">INTRODUCTION PAGE</a></li>
                            <li><a href="Home.jsp">HOME</a></li>
                            <li><a href="adding.jsp">ADD ENTRIES</a></li>

                        </ul>

                    </div><!--/.nav-collapse -->
                </div><!--/.container-fluid -->
            </nav>

            <div class="container">
                
                
                <h1>Student's Database</h1>
                <%
                    StudentDAO stdao = new StudentDAOImpl();
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
                        <th>Action</th>
                    </tr>
                    <%
                        for (Student s : stdao.getAll()) {
                    %>
                    <tr>
                        <td><%=s.getId()%></td>
                        <td><%=s.getFname()%></td>
                        <td><%=s.getLname()%></td>
                        <td><%=s.getPhone()%></td>
                        <td><%=s.getEmail()%></td>
                        <td><%=s.getUsername()%></td>
                        <td><%=s.getCollege()%></td>
                        <td>
                            <a class="btn btn-primary btn-success" href="edit.jsp?id=<%=s.getId()%>" role="button">EDIT</a>
                            <a class="btn btn-primary btn-danger" href="delete.jsp?id=<%=s.getId()%>" role="button">DELETE</a>
                        </td>
                    </tr>
                    <%
                        ;
                        }
                    %>
                </table>
            </div>
                    <%@include file="footer.jsp" %>   


            