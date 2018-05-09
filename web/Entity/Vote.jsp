<%@include file="../Shared/Header.jsp" %>
<div id="page-wrapper">

    <%
        session = request.getSession(false);

        if (request.getMethod().equalsIgnoreCase("post")) {
            if ((request.getParameter("username")).equalsIgnoreCase("sabin") && (request.getParameter("password")).equalsIgnoreCase("sabin")) {
                session = request.getSession();
                session.setAttribute("user", request.getParameter("username"));
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
                <h1>Sign In To Vote</h1>

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
                    <form method="post" action="#" role="login">
                        <input type="text" name="username" required class="form-control input-lg" placeholder="Username"/>
                        </br>

                        <input type="password" class="form-control input-lg" name="password" id="password" placeholder="Password" required="" />
                        <div class="pwstrength_viewport_progress"></div>
                        </br>
                        <input type="text" class="form-control input-lg" name="voterSecurityId" id="password" placeholder="Voter Security Id" required="" />
                        <br/>
                        <input type="text" class="form-control input-lg" name="securityQsn" id="securityQsn" placeholder="<%%>" required="" />
                        <br/>


                        <button type="submit" name="go" class="btn btn-lg btn-primary btn-block">Sign in</button>
                        </br>
                        <div align="center">
                            <a href="${pageContext.request.contextPath}/Entity/RegisterVoter.jsp">Not Registered yet? SignUp</a>
                        </div>
<a href="${pageContext.request.contextPath}/Entity/CastVote.jsp">cast vote</a>
                    </form>


                </section>  
            </div>

            <div class="col-xs-4"></div>
        </div>
    </div>
</div>