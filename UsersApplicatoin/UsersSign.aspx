<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UsersSign.aspx.cs" Inherits="UsersApplicatoin.UsersSign" %>

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
    <div class='container' runat="server" id="SignInDiv">
        <div class="alert alert-success">
            You need to sign in or sign up before continuing.
          <button class="close" type="button" data-dismiss="alert">x</button>
        </div>
        <div id="alert"></div>
        <div class='panel panel-default devise-bs'>
            <div class='panel-heading'>
                <h4>Sign in</h4>
            </div>

            <div runat="server" class='panel-body'>
                <form runat="server">
                    <div class='form-group'>
                        <label for="user_email">Email</label>
                        <input autofocus="autofocus" class="form-control" type="email" runat="server" name="user[email]" id="SignInEmail" />
                    </div>
                    <div class='form-group'>
                        <label for="user_password">Password</label>
                        <input autocomplete="off" class="form-control" type="password" name="user[password]" id="SignInPswd" />
                    </div>
                    <div class='checkbox'>
                        <label for="user_remember_me">
                            <input name="user[remember_me]" type="hidden" value="0" /><input type="checkbox" value="1" name="user[remember_me]" id="SignInName" />
                            Remember me
                        </label>
                    </div>
                    <button id="SignInBtn" type="button" class="btn btn-primary">Sign IN</button>
                </form>
            </div>
        </div>
        <p><a class="btn btn-default" id="SignUp" href="SignUp.aspx">Sign up</a></p>
        <p><a class="btn btn-default" id="FrgtPswd" href="#">Forgot your password?</a></p>
        <hr />
        <a class="btn btn-primary" href="#">Sign in with Google Oauth2</a>
        <a class="btn btn-primary" href="#">Sign in with Facebook</a>
    </div>

    <div class="page-header">
        <div class='container' id="HomePage" runat="server">
            <div class="alert alert-success">
                Sorry! You are not authorized to perform this action.
             <button class="close" type="button" data-dismiss="alert">x</button>
            </div>
            <h1>Welcome!</h1>
            <p class="lead">This is a Rails 5 starter application to boost your MVP development.</p>
            <ul>
                <li>What is featured till now:</li>
                <li>HAML and Bootstrap generators</li>
                <li>Devise for authentication</li>
                <li>Omniauth for Facebook and Google authentication</li>
                <li>Pundit for authorization, and different roles for users</li>
                <li>API with token authentication</li>
                <li>Rspec and Capybara for automated testing, and test coverage for all implemented features</li>
            </ul>
            <h4>Login as an admin:</h4>
            <ul>
                <li>Email: 'admin@rails5-starter.com'</li>
                <li>Password: 'password'</li>
            </ul>
        </div>
    </div>
</body>
</html>
