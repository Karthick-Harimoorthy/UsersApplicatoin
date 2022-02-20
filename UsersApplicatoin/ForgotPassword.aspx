<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="UsersApplicatoin.ForgotPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Forgot Password</title>
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
    <form id="form1" runat="server">
        <div class='container'>

            <div class='panel panel-default devise-bs'>
                <div class='panel-heading'>
                    <h4>Forgot your password?</h4>
                </div>
                <div class='panel-body'>
                    <input name="utf8" type="hidden" value="&#x2713;" />
                    <input type="hidden" value="" />
                    <div class='form-group'>
                            <label for="user_email">Email</label>
                            <input " class="form-control" type="email" value="" name="user[email]" id="user_email" />
                        </div>
                        <input type="submit" name="commit" id="PasswordInst" value="Send me reset password instructions" class="btn btn-primary" data-disable-with="Send me reset password instructions" />
                   
                </div>
            </div>
            <p><a class="btn btn-default" href="UsersSign.aspx">Sign in</a></p>
            <p><a class="btn btn-default" href="SignUp.aspx">Sign up</a></p>
            <hr/>
            <a class="btn btn-primary" href="#">Sign in with Google Oauth2</a>
            <a class="btn btn-primary" href="#">Sign in with Facebook</a>


        </div>
    </form>
</body>
</html>
