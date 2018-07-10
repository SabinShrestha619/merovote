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
        <div class="navbar-header" style="margin:">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <div>
            <a class="navbar-brand" href="${pageContext.request.contextPath}/index.jsp">
            <img src="${pageContext.request.contextPath}/Images/logo.png" alt="LOGO" style="width:70px;height: 50px;">
            </a>
            </div>
        </div>
          
            <!-- Top Menu Items -->
        <ul class="nav navbar-right top-nav">
            <li><a href="#" data-placement="bottom" data-toggle="tooltip" href="#" data-original-title="Stats"><i class="fa fa-bar-chart-o"></i>
                </a>
            </li>            
            <li class="dropdown">
                <a href="${pageContext.request.contextPath}/Entity/AdminLogin.jsp" class="btn-lg btn-md">Admin Login </a>
                
            </li>
        </ul>
        <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
        <div class="collapse navbar-collapse navbar-ex1-collapse">
            <ul class="nav navbar-nav side-nav">
                 <li>
                    <a href="${pageContext.request.contextPath}/Entity/RegisterVoter.jsp"> <i class="fa fa-fw fa-user-plus"></i> Register Voters</a>               
                 </li>
               
                 <li>
                    <a href="#" data-toggle="collapse" data-target="#submenu-3"><i class="fa fa-fw fa-star"></i>  Candidates<i class="fa fa-fw fa-angle-down pull-right"></i></a>
                    <ul id="submenu-3" class="collapse">
                        <li><a href="${pageContext.request.contextPath}/Entity/CandidateList.jsp"><i class="fa fa-angle-double-right">Candidate Info</i></a></li>
                        </ul>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/Entity/voting.jsp"><i class="fa fa-fw fa-thumbs-up"></i>  Cast Vote</a>
                </li>
               
                <li>
                    <a href="#" data-toggle="collapse" data-target="#submenu-2"><i class="fa fa-fw fa-star"></i>  Result<i class="fa fa-fw fa-angle-down pull-right"></i></a>
                    <ul id="submenu-2" class="collapse">
                        <li><a href="${pageContext.request.contextPath}/Entity/ResultBar.jsp"><i class="fa fa-angle-double-right"></i> Graph</a></li>
                        <li><a href="${pageContext.request.contextPath}/Entity/Result.jsp"><i class="fa fa-angle-double-right"></i> Details</a></li>
                    </ul>
                </li>
                
                
                <li>
                    <a href="http://www.election.gov.np/election/np" target="_blank"><i class="fa fa-fw fa-paper-plane-o"></i> News</a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/Entity/About.jsp"><i class="fa fa-fw fa fa-info"></i> About Us</a>
                </li>
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </nav>