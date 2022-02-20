<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditProfile.aspx.cs" Inherits="UsersApplicatoin.EditProfile" %>

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
        function myFunction() {

            var Delete = confirm("Are You Sure");
            if (Delete == true) {

                DeleteCnfirm();
            }
        }
        var DeleteCnfirm = function () {

            $.ajax({
                url: "Header.aspx/DeleteAccount",
                type: 'POST',
                contentType: 'application/json; charset=utf-8',
                dataType: 'json',

                success: function () {
                    location.href = "HomePage.aspx";
                }

            });
        }
    </script>
    <style>
        body {
            padding-top: 65px;
        }
    </style>
</head>
<body runat="server">
    <div id="header"></div>
    <div class='container' runat="server" id="SignUpDiv">
        <div id="alert1" runat="server"></div>
        <div class='panel panel-default devise-bs' runat="server">
            <div class='panel-heading' runat="server">
                <h4>Edit My Account</h4>
            </div>
            <div runat="server" class='panel-body'>
                <form runat="server">
                    <div class='form-group'>
                        <label runat="server" for="user_name">Name</label>
                        <input runat="server" value="" class="form-control" id="Name" />
                    </div>
                    <div class='form-group' runat="server">
                        <label runat="server" for="user_email">Email</label>
                        <input class="form-control" type="email" value="" runat="server" name="user[email]" id="Email" />
                    </div>
                    <div class='form-group' runat="server">
                        <label runat="server" for="user_password">Password</label><i>(leave blank if you don't want to change it)</i>
                        <input class="form-control" type="password" name="user[password]" id="Password" />
                    </div>
                    <div class='form-group' runat="server">
                        <label runat="server" for="user_password">Confirm Password</label>
                        <input class="form-control" type="password" name="user[password]" id="CnfPswd" />
                    </div>
                    <div class='form-group' runat="server">
                        <label runat="server" for="user_password">Current Password</label><i>(we need your current password to confirm your changes)</i>
                        <input class="form-control" type="password" name="user[password]" id="CurPswd" />
                    </div>
                    <button id="UpdateBtn" class="btn btn-primary" type="button">Update</button>
                </form>
            </div>
        </div>
        <p>
            <a class="btn btn-danger" onclick="myFunction()" >Cancel my account</a>
            <a class="btn btn-default" href="UserProfile.aspx">Back</a>
        </p>

    </div>
</body>
</html>
