<%@page import="java.security.NoSuchAlgorithmException"%>
<%@page import="java.security.MessageDigest"%>
<%@page import="com.sem.project.entity.Voter"%>
<%@page import="com.sem.project.daoImpl.VoterDaoImpl"%>
<%@page import="com.sem.project.dao.VoterDAO"%>
<%@include file="../Shared/Header.jsp" %>
<div id="page-wrapper">

    <%
        //session = request.getSession(false);

        if (request.getMethod().equalsIgnoreCase("post")) {
            VoterDAO voterDao = new VoterDaoImpl();
            
        String plaintext = request.getParameter("password");
        StringBuilder hash = new StringBuilder();
        try {
            MessageDigest sha = MessageDigest.getInstance("SHA-1");
            byte[] hashedBytes = sha.digest(plaintext.getBytes());
            char[] digits = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9',
                'a', 'b', 'c', 'd', 'e', 'f'};
            for (int idx = 0; idx < hashedBytes.length; ++idx) {
                byte b = hashedBytes[idx];
                hash.append(digits[(b & 0xf0) >> 4]);
                hash.append(digits[b & 0x0f]);
            }
        } catch (NoSuchAlgorithmException e) {
            // handle error here.
        }

        String hashtext = hash.toString();
            out.println(request.getParameter("password"));
            for (Voter v : voterDao.getALL()) {
                out.println(v.getPassword());
                if ((request.getParameter("username")).equalsIgnoreCase(v.getFirstName()) && (hashtext).equalsIgnoreCase(v.getPassword())) {
                    if((request.getParameter("voterSecurityId")).equalsIgnoreCase(v.getUniqueId())) {
                    // session = request.getSession();
                    //  session.setAttribute("user", request.getParameter("username"));
                    response.sendRedirect("../Entity/CastVote.jsp");
                    }
                }
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
                    <form method="post" action="" >
                        <input type="text" name="username" required class="form-control input-lg" placeholder="Username"/>
                        </br>

                        <input type="password" class="form-control input-lg" name="password" id="password" placeholder="Password"/>
                        <div class="pwstrength_viewport_progress"></div>
                        </br>
                        <input type="text" class="form-control input-lg" name="voterSecurityId" id="password" placeholder="Voter Security Id" required="" />
                        <br/>
                        <input type="text" class="form-control input-lg" name="securityQsn" id="securityQsn" placeholder="<%%>" />
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