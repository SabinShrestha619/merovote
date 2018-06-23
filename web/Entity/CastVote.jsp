<%@page import="com.sem.project.Encryption.Aes"%>
<%@include file="../Shared/Header.jsp" %>
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
                <h1>Cast Vote</h1><div class="pull-right"> <img href="${pageContext.request.contextPath}/Images/swastika.jpg"/></div>

            </div>
        </div>
        <!-- /.row -->
    </div>
    </br>
    <div class="container" style=" width:70%" >
        <div class="list-group">
            <form action="${pageContext.request.contextPath}/Entity/countVote.jsp" method="post" onsubmit="return confirm('Are you Sure?');">
                <% Aes aes=new Aes();
                aes.setKey("merovote");
                String encrypt1 = aes.encrypt("congress");
                String encrypt2 = aes.encrypt("uml");
                String encrypt3 = aes.encrypt("bibeksheel");
                String encrypt4 = aes.encrypt("nayashakti");
                String encrypt5 = aes.encrypt("forum");
                %>
                <button type="button" class="list-group-item list-group-item-action">Nepali congress<div class="pull-right"><label class="radio-inline" class="pull-right"><input id="1" type="radio" name="vote" value="<%=encrypt1 %>" required=""></label></div></button>
                <button type="button" class="list-group-item list-group-item-action">CPN UML<div class="pull-right"><label class="radio-inline" class="pull-right"><input id="2" type="radio" name="vote" value="<%=encrypt2 %>"></label></div></button>
                <button type="button" class="list-group-item list-group-item-action">Bibeksheel Saajha<div class="pull-right"><label class="radio-inline" class="pull-right"><input id="3" type="radio" name="vote" value="<%=encrypt3 %>"></label></div></button>
                <button type="button" class="list-group-item list-group-item-action">Naya Sakti<div class="pull-right"><label class="radio-inline" class="pull-right"><input id="3" type="radio" name="vote" value="<%=encrypt4 %>"></label></div></button>
                <button type="button" class="list-group-item list-group-item-action">Forum Nepal<div class="pull-right"><label class="radio-inline" class="pull-right"><input id="4" type="radio" name="vote" value="<%=encrypt5 %>"></label></div></button>
                </br>
                <button type="submit"  class="btn btn-success btn-sm ">Vote</button> <button type="cancel" class=" btn btn-danger btn-sm" >Cancel</button>
            </form>
        </div>

    </div>
</div>
</div>


