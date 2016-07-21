<%-- 
    Document   : signup
    Created on : Jul 7, 2016, 8:41:01 AM
    Author     : Prithivi Raj
--%>

<%@include file="header.jsp" %>
<title>Signup Page</title>
</head>
<body>
    <div class="container">

        <form class="form-signin" method="post" action="save.jsp">
            
            <h1 class="form-signin-heading">Please enter your Details</h1>
            <br> 
            <label for="inputId" class="sr-only">Student's ID</label>
            <input type="Number" name="id" class="form-control" placeholder="Student's ID" required/> 
            <br>
            <label for="inputFname" class="sr-only" >Student's First Name</label>
            <input type="text" name="fname" class="form-control" placeholder="Student's First Name" required />
            <br>
            <label for="inputLname" class="sr-only">Student's Last Name</label>
            <input type="text" name="lname" class="form-control" placeholder="Student's Last Name" required />
            <br> 
            <label for="inputphone" class="sr-only">Student's Phone(mobile) No.</label>
            <input type="number" name="phone" class="form-control" placeholder="Student's Phone" required />
            <br> 
            <label for="inputEmail" class="sr-only" >Student's Email address</label>
            <input name="email" type="email" class="form-control" placeholder="Email Adress" required />
            <br>
            <label for="inputUsername" class="sr-only" >Student's Username</label>
            <input name="username" type="text" class="form-control" placeholder="Username" required/>
            <br>
            <label for="inputPassword" class="sr-only">Student's Password</label>
            <input name="password" type="password" class="form-control" placeholder="Password" required/>
             
            <label for="inputCollege" class="sr-only">Student's College</label>
            <input name="college" type="text" class="form-control" placeholder="Student's College" required />
            <br>




             <button class="btn btn-lg btn-primary btn-block" type="submit">Sign Up</button>
        </form>

    </div> <!-- /container -->


    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>


    <%@include file="footer.jsp" %>