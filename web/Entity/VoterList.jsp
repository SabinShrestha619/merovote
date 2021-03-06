<%@page import="com.sem.project.entity.Voter"%>
<%@page import="com.sem.project.daoImpl.VoterDaoImpl"%>
<%@page import="com.sem.project.dao.VoterDAO"%>
<%@include file="../Shared/Header2.jsp" %>
<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row" id="main" >
            <div class="col-sm-12 col-md-12 well" id="content" align="center" >
                <h1>Voter List</h1>

            </div>

        </div>
        <div class="container" style="width:100%">
            <table class="table table-bordered table-striped table-hover">
                <tr>
                    <th class="col-md-1">Id</th>
                    <th>Voter Name</th>
                    <th class="col-md-3">Email</th>
                    <th>Gender</th>
                    <th>Phone Number</th>

                </tr>
                <% VoterDAO voterDao = new VoterDaoImpl();
                    for (Voter r : voterDao.getALL()) {%>


                <tr>
                    <td><%=r.getVoterId()%></td>



                    <td><%=r.getFirstName() + " " + r.getLastName()%></td>

                    <td><%=r.getEmail()%></td>

                    <td><%=r.getGender()%></td>
                    
                    <td><%=r.getPhoneNo()%></td>
                </tr>
                <%}
                %>

        </div>
    </div>
</div>
