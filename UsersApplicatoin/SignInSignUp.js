$(document).ready(function () {


    $("#SignUpBtn").click(function () {
        var SignUpName = $("#SignUpName").val();
        var SignUpEmail = $("#SignUpEmail").val();
        var SignUpPswd = $("#SignUpPswd").val();
        var SignUpCnfPswd = $("#SignUpCnfPswd").val();

        if (SignUpName == "" && SignUpEmail == "" && SignUpPswd == "" && SignUpCnfPswd == "") {
            var divhtml = "";
            divhtml += "<div class='alert alert-danger'>";
            divhtml += "<button class='close' type='button' data-dismiss='alert'>x</button>";
            divhtml += "<p>2 errors prohibited this user from being saved:<p>";
            divhtml += "<ul>";
            divhtml += "<li>Name Can't be blank</li>";
            divhtml += "<li>Email Can't be blank</li>";
            divhtml += "</ul>";
            divhtml += "</div > ";
            $("#alert1").html(divhtml);
        }
        else if (SignUpName == null || SignUpName == "" || SignUpName === "undefined") {
            var divhtml = "";
            divhtml += "<div class='alert alert-danger'>";
            divhtml += "<button class='close' type='button' data-dismiss='alert'>x</button>";
            divhtml += "<p>1 errors prohibited this user from being saved:<p>";
            divhtml += "<ul>";
            divhtml += "<li>Name Can't be blank</li>";
            divhtml += "</ul>";
            divhtml += "</div > ";
            $("#alert1").html(divhtml);

        }
        else if (SignUpEmail == null || SignUpEmail == "" || SignUpEmail === "undefined") {
            var divhtml = "";
            divhtml += "<div class='alert alert-danger'>";
            divhtml += "<button class='close' type='button' data-dismiss='alert'>x</button>";
            divhtml += "<p>1 errors prohibited this user from being saved:<p>";
            divhtml += "<ul>";
            divhtml += "<li>Email Can't be blank</li>";
            divhtml += "</ul>";
            divhtml += "</div > ";
            $("#alert1").html(divhtml);

        }
        else if (SignUpPswd == null || SignUpPswd == "" || SignUpPswd === "undefined") {
            var divhtml = "";
            divhtml += "<div class='alert alert-danger'>";
            divhtml += "<button class='close' type='button' data-dismiss='alert'>x</button>";
            divhtml += "<p>1 errors prohibited this user from being saved:<p>";
            divhtml += "<ul>";
            divhtml += "<li>Password Can't be blank</li>";
            divhtml += "</ul>";
            divhtml += "</div > ";
            $("#alert1").html(divhtml);
        }
       
        else if (SignUpCnfPswd !== SignUpPswd ) {
            var divhtml = "";
            divhtml += "<div class='alert alert-danger'>";
            divhtml += "<button class='close' type='button' data-dismiss='alert'>x</button>";
            divhtml += "<p>errors prohibited this user from being saved:<p>";
            divhtml += "<ul>";
            divhtml += "<li>Password confirmation doesn't match Password</li>";
            divhtml += "</ul>";
            divhtml += "</div > ";
            $("#alert1").html(divhtml);
        }
        else
            var userDetails = function () {
                $.ajax({
                    url: "UserDetails.asmx/StorUserDetails",
                    type: 'POST',
                    data: "{ 'SignUpName':' " + SignUpName + "', 'SignUpPswd': '" + SignUpPswd + "','SignUpEmail': '" + SignUpEmail + "' }",
                    contentType: 'application/json; charset=utf-8',
                    dataType: 'json',
                    success: function () {
                        location.href = "HomePage.aspx";
                    }

                });

            }
        userDetails();

    });
    

    $("#SignInBtn").click(function () {

        var SignInEmail = $("#SignInEmail").val();
        var SignInPswd = $("#SignInPswd").val();
        if (SignInEmail == "" || SignInPswd == "") {
            var divhtml = "";
            divhtml += "<div class='alert alert-success'>Invalid Email or Password";
            divhtml += "<button class='close' type='button' data-dismiss='alert'>x</button>";
            divhtml += "</div >";
            $("#alert").html(divhtml);
        }
        else
            var DispDetails = function () {
                $.ajax({
                    url: "UserDetails.asmx/DisplayUserDetails",
                    type: 'POST',
                    data: "{ 'SignInEmail':'"+SignInEmail+"', 'SignInPswd': '"+SignInPswd+"' }",
                    contentType: 'application/json; charset=utf-8',
                    dataType: 'json',
                    success: function (data) {
                        if (data.d == null || data.d == "" || data.d === "Undefined") {
                            
                            var divhtml = "";
                            divhtml += "<div class='alert alert-success'>Invalid Email or Password";
                            divhtml += "<button class='close' type='button' data-dismiss='alert'>x</button>";
                            divhtml += "</div >";
                            $("#alert").html(divhtml);
                            $("#SigninAlert").hide();

                        }
                        else {
                            location.href = "HomePage.aspx";
                            $("#SigninAlert").show();
                        }
                    }

                  
                });
            }
        DispDetails();
    });
    $("#logout").click(function () {

        $.ajax({
            url: "UserDetails.asmx/LogoutUser",
            type: 'POST',
            dataType: 'json'
         

        });
    });
    $("#UpdateBtn").click(function () {
        var UserName = $("#Name").val();
        var Email = $("#Email").val();
        var password = $("#Password").val();
        var CnfirmPswd = $("#CnfPswd").val();
        var CurPswd = $("#CurPswd").val();

        if (UserName == "" && Email == "" && CurPswd == "") {
            var divhtml = "";
            divhtml += "<div class='alert alert-danger'>";
            divhtml += "<button class='close' type='button' data-dismiss='alert'>x</button>";
            divhtml += "<p>3 errors prohibited this user from being saved:<p>";
            divhtml += "<ul>";
            divhtml += "<li>Name Can't be blank</li>";
            divhtml += "<li>Email Can't be blank</li>";
            divhtml += "<li>Current Password Can't be blank</li>";
            divhtml += "</ul>";
            divhtml += "</div > ";
            $("#alert1").html(divhtml);
        }
        else if (UserName == "" || UserName == null || UserName === "undefined") {
            divhtml += "<div class='alert alert-danger'>";
            divhtml += "<button class='close' type='button' data-dismiss='alert'>x</button>";
            divhtml += "<p>1 errors prohibited this user from being saved:<p>";
            divhtml += "<ul>";
            divhtml += "<li>Name Can't be blank</li>";
            divhtml += "</ul>";
            divhtml += "</div > ";
            $("#alert1").html(divhtml);
        }
        else if (Email == "" || Email == null || Email === "undefined") {
            divhtml += "<div class='alert alert-danger'>";
            divhtml += "<button class='close' type='button' data-dismiss='alert'>x</button>";
            divhtml += "<p>1 errors prohibited this user from being saved:<p>";
            divhtml += "<ul>";
            divhtml += "<li>Email Can't be blank</li>";
            divhtml += "</ul>";
            divhtml += "</div > ";
            $("#alert1").html(divhtml);
        }
        else if (CurPswd == "" || CurPswd == null || CurPswd === "undefined") {
            divhtml += "<div class='alert alert-danger'>";
            divhtml += "<button class='close' type='button' data-dismiss='alert'>x</button>";
            divhtml += "<p>1 errors prohibited this user from being saved:<p>";
            divhtml += "<ul>";
            divhtml += "<li>Current Password Can't be blank</li>";
            divhtml += "</ul>";
            divhtml += "</div > ";
            $("#alert1").html(divhtml);
        }
        else
        {
            var updateDetails = function () {
                $.ajax({
                    url: "UserDetails.asmx/UpdateUserDetails",
                    type: 'POST',
                    data: "{ 'UserName':'" + UserName + "','Email':'" + Email + "','password':'" + password + "','CurPswd':'" + CurPswd + "' }",
                    contentType: 'application/json; charset=utf-8',
                    dataType: 'json',
                    success: function () {
                        location.href = "HomePage.aspx";
                    }

                   
                });

            }
            updateDetails();
        }

    });
    
       
 
    $("#FrgtPswd").click(function () {
        location.href = "ForgotPassword.aspx";
    });
    
});
