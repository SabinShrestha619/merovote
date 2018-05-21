<%@include file="../Shared/Header.jsp" %>
<link href="../Resources/css/candidate.css" rel="stylesheet" type="text/css"/>

<div id="page-wrapper">

    <style>
        .btn {
            width: 70px;

        }
        input[type=radio]{
            width: 20px;
            height:20px;
        }
    </style>

    <div class="container-fluid" >
        <!-- Page Heading -->
        <div class="row" id="main" >
            <div class="col-sm-12 col-md-12 well" id="content" align="center" >
                <h1>Candidate Information</h1><div class="pull-right"> <img href="${pageContext.request.contextPath}/Images/swastika.jpg"/></div>

            </div>
        </div>
        <!-- /.row -->
    </div>
    </br>


    <div class="col-md-9">
        <h3 id="person">Personal Information</h3>
        <div class="prof-info">
            <div class="info"><label><i class="fa fa-user  " ></i>  First Name :</label>  <span> </span></div>
            <div class="info"><label><i class="fa fa-user  " ></i>  Last Name :</label>  <span> </span></div>
            <div class="info"><label><i class="fa fa-calendar  " ></i>  Date Of Birth :</label>  <span></span></div>
            <div class="info"><label><i class="fa fa-male  " ></i>  Age :</label>  <span></span> </div>
            <div class="info"><label><i class="fa fa-calendar  " ></i>  Place of Birth :</label> <span> </span></div>
            <div class="info"><label><i class="fa fa-user  " ></i>  Father's Name :</label>  <span> </span></div>
            <div class="info"><label><i class="fa fa-user  " ></i>  Mother's Name :</label>  <span> </span></div>
            <div class="info"><label><i class="fa fa-map-marker  " ></i>  State :</label><span> </span></div>
            <div class="info"><label><i class="fa fa-map-marker  " ></i>  Zip Code :</label><span> </span></div>
        </div>
    </div>
    <hr size="3px solid black" width="90%">

    <div class="col-md-9">
        <h3 id="politics">Political Information</h3>
        <div class="prof-info">
            <div class="info"><label><i class="fa fa-user "></i> Party Affiliation :</label>  <span> </span></div>
            <div class="info"><label><i class="fa fa-user "></i> Party Membership :</label>  <span> </span></div>
            <div class="info"><label><i class="fa fa-male "></i> Membership Time :</label>  <span></span> </div>
            <div class="info"><label><i class="fa fa-calendar "></i> Political History :</label> <span> </span></div>
            <div class="info"><label><i class="fa fa-map-marker "></i> Major Roles :</label><span> </span></div>
            <div class="info"><label><i class="fa fa-map-marker "></i> Propaganda :</label><span> </span></div>
        </div>
        <hr size="3px solid black" width="90%">
    </div>
    <br/>
    <div class="col-md-9">
        <h3 id="history">Election History</h3>
        <div class="list-group">
            <a href="#" class="list-group-item active">
                <h4 class="list-group-item-heading">First Election </h4>
                <p class="list-group-item-text">Position</p>
            </a>
            <br>
            <a href="#" class="list-group-item">
                <h4 class="list-group-item-heading">Second Election</h4>
                <p class="list-group-item-text">Position</p>
            </a>
            <br>
            <a href="#" class="list-group-item">
                <h4 class="list-group-item-heading">Third Election</h4>
                <p class="list-group-item-text">Position</p>
            </a>
        </div>
    </div>
</body>
</html>