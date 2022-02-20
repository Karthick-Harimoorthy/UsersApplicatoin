<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Header.aspx.cs"   ClientIDMode="Predictable" Inherits="UsersApplicatoin.Header" %>

<script src="SignInSignUp.js"></script>
    <div id="header">
    <form runat="server">
        <nav class='navbar navbar-inverse navbar-fixed-top' role='navigation'>
            <div class='container'>
                <div class='navbar-header'>
                    <button aria-controls='navbar' aria-expanded='false' class='navbar-toggle collapsed' data-target='#navbar' data-toggle='collapse' type='button'>
                        <span class='sr-only'>Toggle navigation</span>
                    </button>
                    <a class="navbar-brand" href="HomePage.aspx">App Name</a>
                </div>
                <div class='collapse navbar-collapse' runat="server" id='navbar'>
                    <ul class='nav navbar-nav'>
                        <li>
                            <a href='HomePage.aspx'>Home</a>
                        </li>
                        <li>
                            <a href='UsersSign.aspx'>Users</a>
                        </li>
                    </ul>
                    <ul class='nav navbar-nav navbar-right'>
                        <li>
                           <a href="UserProfile.aspx" ><span runat="server" id="UserIcon"></span><div style="color:white" runat="server" id="Username"></div></a>
                            
                        </li>
                        <li>
                            <a href="UsersSign.aspx"  runat="server" id="login">Login</a>
                        </li>
                          <li>
                            <a href="HomePage.aspx"  runat="server" id="logout">Logout</a>
                        </li>

                    </ul>
                </div>
            </div>
        </nav>
        </form>
        </div>
