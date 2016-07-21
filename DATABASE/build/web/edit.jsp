<%-- 
    Document   : add.jsp
    Created on : Jul 22, 2016, 10:22:05 PM
    Author     : Prithivi Raj
--%>
<%@page import="com.leapfrog.Student.entity.Student"%>
<%@page import="java.util.List"%>
<%@page import="com.leapfrog.Student.DAO.StudentDAOImpl"%>
<%@page import="com.leapfrog.Student.DAO.StudentDAO"%>

<%
    int id = Integer.parseInt(request.getParameter("id"));
    StudentDAO stDao = new StudentDAOImpl();
    Student student = stDao.searchById(id);

%>

<%@include file="header.jsp"%>
<title>Editing</title>
</head>

<body>

    <div class="container">

        <form class="form-signin" method="post" action="save.jsp">
            <h2 class="form-signin-heading">Please sign in</h2>

            <label for="inputid" class="sr-only">ID</label>
            <input type="integer" name="id" class="form-control" placeholder="Enter ID!" required values="<%=student.getId()%>" />
            <br>
            <label for="inputfname" class="sr-only">First Name</label>
            <input type="text" name="fname" class="form-control" placeholder="Enter First Name!" required values="<%=student.getFname()%>" />
            <br>
            <label for="inputlname" class="sr-only">Last Name</label>
            <input type="text" name="lname" class="form-control" placeholder="Enter Last Name!" required values="<%=student.getLname()%>" />
            <br>
            <label for="inputphone" class="sr-only">Phone</label>
            <input type="text" name="phone" class="form-control" placeholder="Enter Phone Number!" required values="<%=student.getPhone()%>" />
            <br>
            <label for="inputemail" class="sr-only">Email address</label>
            <input type="email" name="email" class="form-control" placeholder="Enter Email Adress!" required values="<%=student.getEmail()%>" />
            <br>
            <label for="inputusername" class="sr-only">Username</label>
            <input type="text" name="username" class="form-control" placeholder="Enter Username!" required values="<%=student.getUsername()%>" />
            <br>
            <label for="inputpassword" class="sr-only">Password</label>
            <input type="password" name="username" class="form-control" placeholder="Password!!" required values="<%=student.getPassword()%>" />
            <br>
            <label for="inputcollege" class="sr-only">College</label>
            <input type="text" name="college" class="form-control" placeholder="Enter Your College!" required values="<%=student.getCollege()%>" />
            <br>
            </div>
            <button class="btn btn-lg btn-primary" type="submit">UPDATE</button>
            <br><br><br>
        </form>

    </div> <!-- /container -->


    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
</body>




<%@include file="footer.jsp" %>