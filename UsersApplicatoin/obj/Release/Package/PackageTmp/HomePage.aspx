<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="UsersApplicatoin.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Rails 5 starter </title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
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
    <form runat="server">
        <div class="container">
            <div class="page-header">
                <div class="alert alert-success" id="SigninAlert" style="display: none">
                    Signed in successfully.
                    <button class="close" type="button" data-dismiss="alert">x</button>
                </div>
                <div class="alert alert-success" id="SignOutAlert" style="display: none">
                    Signed out successfully.
                    <button class="close" type="button" data-dismiss="alert" >x</button>
                </div>
                <div class="alert alert-success" id="UpdateAlert" style="display:none">
                    Your account has been updated successfully.
                    <button class="close" type="button" data-dismiss="alert">x</button>
                </div>
                <div class="alert alert-success" id="DeleteAlert" style="display: none">
                    Bye! Your account has been successfully cancelled. We hope to see you again soon.
                    <button class="close" type="button" data-dismiss="alert">x</button>
                </div>

                <h1>Welcome!</h1>
            </div>
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
    </form>
</body>
</html>
