<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="UsersApplicatoin.UserProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>User Profile</title>
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
    <form id="form1" runat="server">
        <div id="header"></div>
        <div class='container'>
            <div class="page-header col-md-12">
                <div class="col-md-6">
                    <h1>Show user</h1>
                </div>
                <div class="col-md-6" style="text-align: right">
                    <a class="btn btn-default" href="HomePage.aspx"><span class='glyphicon glyphicon-list-alt'></span>Back</a>
                    <a class="btn btn-primary" href="EditProfile.aspx"><span class='glyphicon glyphicon-pencil'></span>Edit</a>
                </div>
            </div>
            <table>
                <tr>
                    <td style="padding-left:150px">
                        <img src="Images/UserIcon.jpg" width="100" />
                    </td>
                    <td style="padding-left:50px">
                       <b><p> Name:</p>
                        <p>Email:</p>
                        <p>Role:</p>
                           </b>
                    </td>
                    <td style="padding-left:20px">
                        <p  runat="server" id="UserName"></p>
                        <p runat="server" id="Email"></p>
                        <p id="Role">User</p>
                        <p></p>

                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
