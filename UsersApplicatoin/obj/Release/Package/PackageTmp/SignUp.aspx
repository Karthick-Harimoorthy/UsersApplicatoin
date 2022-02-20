<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="UsersApplicatoin.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign in/Sign up</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css" />
    <script src="https://unpkg.com/sweetalert2@7.8.2/dist/sweetalert2.all.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="SignInSignUp.js"></script>  
     <script>
           $(function () {
               $("#header").load("Header.aspx");
             
           });
       </script>
    <style>
        body { 
    padding-top: 65px; 
}
    </style>
</head>
<body>
      <div id="header"></div>
    <div class='container' id="SignUpDiv">
        <div id="alert1"></div>
      <div class='panel panel-default devise-bs'>
            <div class='panel-heading'>
                <h4>Sign Up</h4>
            </div>
            <div class='panel-body'>
                <form runat="server">
                    <div class='form-group'>
                        <p><b>Name</b></p>
                       <input  class="form-control" id="SignUpName" />
                    </div>
                    <div class='form-group'>
                        <p><b>Email</b></p>
                        <input class="form-control" type="email" id="SignUpEmail" />
                    </div>
                    <div class='form-group'>
                       <p><b>Password</b></p>
                        <input class="form-control" type="password" id="SignUpPswd" />
                    </div>
                       <div class='form-group'>
                       <p><b>Confirm Password</b></p>
                        <input autocomplete="off" class="form-control" type="password"  id="SignUpCnfPswd" />
                    </div>
                    <div class='checkbox' runat="server">
                        <label>
                            <input name="user[remember_me]" type="hidden" runat="server" value="0"/><input type="checkbox" value="1" id="SignUpReMName" />
                            Remember me
                        </label>
                    </div>
                   <button id="SignUpBtn" class="btn btn-primary" type="button">Sign Up</button>
                </form>
            </div>
        </div>
    <p><a class="btn btn-default" id="SignIn" href="UsersSign.aspx">Sign In</a></p>
    <p><a class="btn btn-default" href="#">Forgot your password?</a></p>
    <hr />
    <a class="btn btn-primary" href="#">Sign in with Google Oauth2</a>
    <a class="btn btn-primary" href="#">Sign in with Facebook</a> 
</div>
</body>
</html>
