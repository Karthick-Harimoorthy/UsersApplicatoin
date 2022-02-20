using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Services;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UsersApplicatoin
{
    public partial  class Header : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

            DisplayUserName();
        }
        public  void DisplayUserName()
        {
            if (HttpContext.Current.Request.Cookies["userInfo"]["firstname"] != null)
            {

                Username.InnerHtml = HttpContext.Current.Request.Cookies["userInfo"]["firstname"].ToString();
                UserIcon.InnerHtml = "<img src = 'Images/UserIcon.jpg' width = '20px'/>";
                login.Visible = false;
                logout.Visible = true;


            }
            else
            {

                login.Visible = true;
                logout.Visible = false;

            }
        }

        [WebMethod, ScriptMethod(ResponseFormat = ResponseFormat.Json, UseHttpGet = false)]
        public static  void DeleteAccount()
        {

            String UserName = HttpContext.Current.Request.Cookies["userInfo"]["firstname"].ToString();

            string connectionString = "server=localhost;database=test_data2;Uid=sandc_db;Pwd=Sandc@123;";

            MySqlConnection con = new MySqlConnection(connectionString);

            MySqlCommand cmd = new MySqlCommand("DELETE  from railsfivesample where firstname = '" + UserName + "'", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            HttpCookie userInfo = new HttpCookie("userInfo");
            userInfo["userInfo"] = string.Empty;
            HttpContext.Current.Response.Cookies.Add(userInfo);

        }

    }
}