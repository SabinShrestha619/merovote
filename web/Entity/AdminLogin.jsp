<%@include file="../Shared/Header.jsp"%>
<div id="page-wrapper">

    <% 
        session = request.getSession(false);
     
        if (request.getMethod().equalsIgnoreCase("post")) {
            if ((request.getParameter("username")).equalsIgnoreCase("sabin") && (request.getParameter("password")).equalsIgnoreCase("sabin")) {
                session =request.getSession();
                session.setAttribute("user",request.getParameter("username") );
                response.sendRedirect("../Entity/Admin.jsp");
            }

    %>
    <script>
        alert("Username Or Password Incorrect!!");
    </script>

    <% }
    %>

    <div class="container-fluid" >
        <!-- Page Heading -->
        <div class="row" id="main" >
            <div class="col-sm-12 col-md-12 well" id="content" align="center" >
                <h1>Enter Login Details</h1>

            </div>


        </div>
        <!-- /.row -->
    </div>
    </br>
    <div class="container">

        <div class="row" id="pwd-container">
            <div class="col-xs-4"></div>

            <div class="col-xs-4">
                <section class="login-form">
                    <form method="post" action="#" autocomplete="off" role="login">
                        <img src="../Images/merologo.png" class="img-responsive" style="margin:auto"alt="" />
                        <input type="text" name="username" required class="form-control input-lg" placeholder="Username"/>
                        </br>

                        <input type="password" class="form-control input-lg" name="password" id="password" placeholder="Password" required="" />


                        <div class="pwstrength_viewport_progress"></div>
                        </br>

                        <button type="submit" name="go" class="btn btn-lg btn-primary btn-block">Sign in</button>
                        </br>
                        <div align="center">
                            <a href="#">Reset Password</a>
                        </div>

                    </form>


                </section>  
            </div>

            <div class="col-xs-4"></div>


        </div>




    </div>
</div>