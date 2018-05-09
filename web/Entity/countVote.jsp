<%@page import="com.sem.project.entity.Result"%>
<%@page import="com.sem.project.daoImpl.ResultDaoImpl"%>
<%@page import="com.sem.project.dao.ResultDao"%>
<%@include file="../Shared/Header.jsp" %>


<% ResultDao resultDao = new ResultDaoImpl();

    if (request.getMethod().equalsIgnoreCase("post")) {
        if ((request.getParameter("vote")).equalsIgnoreCase("congress")) {
            Result result = resultDao.getById(1);
            int a = result.getNumberOfVotes();
            resultDao.update((a + 1), 1);
        } else if ((request.getParameter("vote")).equalsIgnoreCase("uml")) {
            //  uml++;
            Result result = resultDao.getById(2);
            int a = result.getNumberOfVotes();
            resultDao.update((a + 1), 2);
         } else if ((request.getParameter("vote")).equalsIgnoreCase("bibek")) {
            //  bibek++;
            Result result = resultDao.getById(3);
            int a = result.getNumberOfVotes();
            resultDao.update((a + 1), 3);
           
        } else if ((request.getParameter("vote")).equalsIgnoreCase("naya")) {
            // naya++;
            Result result = resultDao.getById(4);
            int a = result.getNumberOfVotes();
            resultDao.update((a + 1), 4);
           
        } else if ((request.getParameter("vote")).equalsIgnoreCase("forum")) {
            // forum++;
            Result result = resultDao.getById(5);
            int a = result.getNumberOfVotes();
            resultDao.update((a + 1), 5);
          
        }

    }
%>
<div id="page-wrapper">

    <div class="container-fluid" >
        <!-- Page Heading -->
        <div class="row" id="main" >
            <div class="col-sm-12 col-md-12 well" id="content" align="center" >
                <h1>You Have Voted Successfully</h1>

            </div>

        </div>
        <div align="center">
            <img src="../Images/voted.png"/>
        </div>

        <!-- /.row -->
    </div>
    <!-- /.container-fluid -->
</div>
<!-- /#page-wrapper -->
</div><!-- /#wrapper -->    <!-- /#wrapper -->
