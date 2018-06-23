<script src="${pageContext.request.contextPath}/Resources/js/jquery.min.js" type="text/javascript"></script>
<link href="${pageContext.request.contextPath}/Resources/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<script src="${pageContext.request.contextPath}/Resources/js/bootstrap.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/Resources/js/myJs.js" type="text/javascript"></script>
<link href="${pageContext.request.contextPath}/Resources/css/mystyle.css" rel="stylesheet" type="text/css"/>
<!------ Include the above in your HEAD tag ---------->

<div id="throbber" style="display:none; min-height:120px;"></div>
<div id="noty-holder"></div>
<div id="wrapper">
    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header" style="margin: 5px">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="${pageContext.request.contextPath}/index.jsp">
                <img src="${pageContext.request.contextPath}/Images/logo.png"  style="width:70px;height: 50px" alt="LOGO">
            </a>
        </div>

        <!-- Top Menu Items -->
        <ul class="nav navbar-right top-nav">
            <li><a href="#" data-placement="bottom" data-toggle="tooltip" href="#" data-original-title="Stats"><i class="fa fa-bar-chart-o"></i>
                </a>
            </li>            
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Admin <b class="fa fa-angle-down"></b></a>
                <ul class="dropdown-menu">
                    <li><a href="${pageContext.request.contextPath}/Entity/AdminLogin.jsp"><i class="fa fa-fw fa-user"></i> Edit Profile</a></li>
                    <li><a href="#"><i class="fa fa-fw fa-cog"></i> Change Password</a></li>
                    <li class="divider"></li>
                    <li><a href="${pageContext.request.contextPath}/Entity/Logout.jsp"><i class="fa fa-fw fa-power-off"></i> Logout<%out.print(" (" + session.getAttribute("user") + ")");%></a></li>
                </ul>
            </li>
        </ul>
        <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
        <div class="collapse navbar-collapse navbar-ex1-collapse">
            <ul class="nav navbar-nav side-nav">
                <li>
                    <a href="${pageContext.request.contextPath}/Entity/RegisterVoter_Admin.jsp"> <i class="fa fa-fw fa-user-plus"></i> Register Voters</a></li>
                <li>
                    <a href="#" data-toggle="collapse" data-target="#submenu-1"><i class="fa fa-fw fa-user-plus"></i> Register Candidates <i class="fa fa-fw fa-angle-down pull-right"></i></a>

                    <ul id="submenu-1" class="collapse">
                        <li><a href="${pageContext.request.contextPath}/Entity/RegisterCandidate.jsp"><i class="fa fa-angle-double-right"></i> Presidential Election</a></li>
                        <li><a href="#"><i class="fa fa-angle-double-right"></i> Parliament Election</a></li>

                    </ul>

                <li>
                    <a href="#" data-toggle="collapse" data-target="#submenu-3"><i class="fa fa-fw fa-star"></i>  Candidates<i class="fa fa-fw fa-angle-down pull-right"></i></a>
                    <ul id="submenu-3" class="collapse">
                        <li><a href="${pageContext.request.contextPath}/Entity/candidate.jsp"><i class="fa fa-angle-double-right"></i>Candidate Info</a></li>
                    </ul>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/Entity/VoterList.jsp"><i class="fa fa-fw fa-list-ul"></i> Voter List</a>
                </li>

                <li>
                    <a href="#" data-toggle="collapse" data-target="#submenu-2"><i class="fa fa-fw fa-star"></i>  Result<i class="fa fa-fw fa-angle-down pull-right"></i></a>
                    <ul id="submenu-2" class="collapse">
                        <li><a href="${pageContext.request.contextPath}/Entity/Result.jsp"><i class="fa fa-angle-double-right"></i> Graph</a></li>
                        <li><a href="#"><i class="fa fa-angle-double-right"></i> PieChart</a></li>
                    </ul>
                </li>


                <li>
                    <a href="http://www.election.gov.np/election/np"><i class="fa fa-fw fa-paper-plane-o"></i> News</a>
                </li>
                <li>
                    <a href="faq"><i class="fa fa-fw fa fa-info"></i> About Us</a>
                </li>
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </nav>