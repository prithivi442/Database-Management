<%-- 
    Document   : profile.jsp
    Created on : Jul 7, 2016, 12:26:49 PM
    Author     : Prithivi Raj
--%>

<%@page import="com.leapfrog.Student.entity.Student"%>
<%@page import="java.util.List"%>
<%@page import="com.leapfrog.Student.DAO.StudentDAOImpl"%>
<%@page import="com.leapfrog.Student.DAO.StudentDAO"%>
<%@include file="header.jsp" %>

<title>Profile Page</title>
</head>
<body>

    <nav class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>  

                <a class="navbar-brand" href="index.jsp"><span style="display:inline-block; width: 2500px;">Sign Out</span></a>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
            </div><!--/.navbar-collapse -->
        </div>
    </nav>

    <!-- Main jumbotron for a primary marketing message or call to action -->
    <div class="jumbotron">
        <div class="container">
            <h1>Welcome!</h1>
            <p>This is a simple website demonstrating a student directory using JDBC and JSP.  .</p>
            <label for="inputname" class="sr-only">Enter Name</label>
            <label>
                <form class="form-signin" method="post" action="searchId.jsp">
                    <input name="name" type="inputname" class="form-control" placeholder="Enter Name of the student" required >
                    <br>
                    <button class="btn btn-lg btn-primary" type="submit">Search</button>
                </form>
            </label>
            <br><br><p>
                <a class="btn btn-primary btn-lg" href="ViewEntries.jsp" role="button">View Full List</a></p>
        </div>
    </div>

    <div class="container">



        <!-- Bootstrap core JavaScript
        ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>

        <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
        <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>









<%@include file="footer.jsp" %>  