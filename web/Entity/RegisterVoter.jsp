<%@include file="../Shared/Header.jsp"%>
<script src="../Resources/js/imageUpload.js" type="text/javascript"></script>
<style>
    .btn-file {
        position: relative;
        overflow: hidden;
    }
    .btn-file input[type=file] {
        position: absolute;
        top: 0;
        right: 0;
        min-width: 100%;
        min-height: 100%;
        font-size: 100px;
        text-align: right;
        filter: alpha(opacity=0);
        opacity: 0;
        outline: none;
        background: white;
        cursor: inherit;
        display: block;
    }

    #img-upload{
        width: 100%;
    }
</style>
<div id="page-wrapper" style="background-image: url(Images/vote-key.jpg);height: 100%;width: 100% ;background-repeat: no-repeat;background-position: center;
     background-size: cover">

    <div class="container-fluid" >
        <!-- Page Heading -->
        <div class="row" id="main" >
            <div class="col-sm-12 col-md-12 well" id="content" align="center" >
                <h1>Registration Details</h1>

            </div>

        </div>
        <!-- /.row -->
    </div>
    <form style="width: 60%;margin: auto;" class="form-horizontal" border="1" action="" method="post">
        <div class="form-group">
            <label class="control-label col-xs-3" for="firstName">First Name:</label>
            <div class="col-xs-9">
                <input type="text" class="form-control" name="firstName" placeholder="First Name" required>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-xs-3" for="lastName">Last Name:</label>
            <div class="col-xs-9">
                <input type="text" class="form-control" name="lastName" placeholder="Last Name" required>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-xs-3" for="inputEmail">Email Address:</label>
            <div class="col-xs-9">
                <input type="email" class="form-control" name="inputEmail" placeholder="Email Address" required>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-xs-3" for="password">Password:</label>
            <div class="col-xs-9">
                <input type="password" class="form-control" name="password" placeholder="Password" required>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-xs-3" for="ConfirmPassword">Confirm Password:</label>
            <div class="col-xs-9">
                <input type="password" class="form-control" name="confirmPassword" placeholder="Password" required>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-xs-3" for="citizenshipNo">Citizenship No:</label>
            <div class="col-xs-9">
                <input type="text" class="form-control" name="citizenshipNo" placeholder="Citizenship Number" required>
            </div>
        </div>


        <div class="form-group">
            <label class="control-label col-xs-3" for="phoneNumber">Phone Number:</label>
            <div class="col-xs-9">
                <input type="number" class="form-control" name="phoneNumber" placeholder="Phone Number" required>
            </div>
        </div>
        <div class="form-group">
            <label  class="control-label col-xs-3">Date of Birth:</label>
            <div class="col-xs-3">
                <input type="Number" class="form-control" id="day" placeholder="Date" >


            </div>
            <div class="col-xs-3" >
                <select class="form-control">
                    <option>Month</option>
                    <option>Jan</option>
                    <option>Feb</option> 
                    <option>Mar</option>
                    <option>Apr</option>
                </select>
            </div>
            <div class="col-xs-3">
                <input type="Number" class="form-control" name="year" placeholder="Year" autocomplete="on">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-xs-3">Gender:</label>
            <div class="col-xs-2">
                <label class="radio-inline">
                    <input type="radio" name="genderRadios" value="male" required> Male
                </label>
            </div>
            <div class="col-xs-2">
                <label class="radio-inline">
                    <input type="radio" name="genderRadios" value="female" required> Female
                </label>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-xs-3" for="MaritalStatus">Marital Status:</label>
            <div class="col-xs-6" >
                <select class="form-control">
                    <option>Marital Status</option>
                    <option>Married</option>
                    <option>Single</option>
                </select>
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-xs-3" for="address">Address:</label>
            <div class="col-xs-9">
                <input type="text" class="form-control" name="address" placeholder="Address" required>
            </div>
        </div>

        <div align="left" class="form-group">
            <div class="col-xs-offset-3 col-xs-9">
                <label class="checkbox-inline">
                    <input type="checkbox" value="news"> Send me latest news and updates.
                </label>
            </div>
        </div>
        <div align="left" class="form-group">
            <div class="col-xs-offset-3 col-xs-9">
                <label class="checkbox-inline">
                    <input type="checkbox" value="agree">  I agree to the <a href="#">Terms and Conditions</a>.
                </label>
            </div>
        </div>
        <div align="left" class="form-group" >
            <label class="control-label col-xs-3" for="exampleInputFile">Upload Photo:</label>
            <div class="col-xs-9" >
                <input type="file" name="file" id="file" required>
            </div>
        </div>

        <br>
        <div align="left" class="form-group">
            <div class="col-xs-offset-3 col-xs-9">
                <input type="submit" class="btn btn-primary" value="Submit">
                <input type="reset" class="btn btn-default" value="Reset">
            </div>
    </form>
    <!-- /.container-fluid -->
</div>
</div><!-- /#wrapper -->    <!-- /#wrapper -->
