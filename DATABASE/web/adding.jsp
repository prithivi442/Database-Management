<%-- 
    Document   : add.jsp
    Created on : Jul 21, 2016, 12:22:05 PM
    Author     : Prithivi Raj
--%>

<%@include file="header.jsp" %>
<title>Add Entries</title>
</head>

<body>

    <div class="container">

        <form class="form-signin" method="post" action="save.jsp">
            <h2 class="form-signin-heading">Please sign in</h2>

            <label for="inputid" class="sr-only">ID</label>
            <input type="integer" name="id" class="form-control" placeholder="Enter ID!" required />
            <br>
            <label for="inputfname" class="sr-only">First Name</label>
            <input type="text" name="fname" class="form-control" placeholder="Enter First Name!" required />
            <br>
            <label for="inputlname" class="sr-only">Last Name</label>
            <input type="text" name="lname" class="form-control" placeholder="Enter Last Name!" required />
            <br>
            <label for="inputphone" class="sr-only">Phone</label>
            <input type="text" name="phone" class="form-control" placeholder="Enter Phone Number!" required />
            <br>
            <label for="inputemail" class="sr-only">Email address</label>
            <input type="email" name="email" class="form-control" placeholder="Enter Email Adress!" required />
            <br>
            <label for="inputusername" class="sr-only">Username</label>
            <input type="text" name="username" class="form-control" placeholder="Enter Username!" required />
            <br>
            <label for="inputpassword" class="sr-only">Password</label>
            <input type="password" name="username" class="form-control" placeholder="Password!!" required />
            <br>
            <label for="inputcollege" class="sr-only">College</label>
            <input type="text" name="college" class="form-control" placeholder="Enter Your College!" required />
            <br>
    </div>
    <button class="btn btn-lg btn-primary" type="submit">ADD Entries</button>
    <br><br><br>
</form>

</div> <!-- /container -->


<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
</body>




<%@include file="footer.jsp" %>