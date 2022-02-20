using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Runtime.Remoting.Contexts;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.Script.Services;
using System.Web.Services;

namespace UsersApplicatoin
{
    [WebService(Namespace = "https://localhost:44388/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    [ScriptService]
    public class StoreUserDetails : System.Web.Services.WebService
    {
      
        [WebMethod]
        public void StorUserDetails(String SignUpName, String SignUpPswd, String SignUpEmail)
        {


            UsersDetails UsrDtls = new UsersDetails();
            UsrDtls.StorUserDetails(SignUpName, SignUpPswd, SignUpEmail);

        }
        [WebMethod]
        public string DisplayUserDetails(String SignInEmail, string SignInPswd)
        {
            StoreUserDetails sud = new StoreUserDetails();
            MySqlConnection con = new MySqlConnection("server=localhost;database=test_data2;Uid=sandc_db;Pwd=Sandc@123;");
            MySqlCommand cmd = new MySqlCommand("SELECT* From railsfivesample Where emailid = '" + SignInEmail + "'AND password='" + SignInPswd + "' ");
            cmd.Connection = con;
            MySqlDataAdapter sda = new MySqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                HttpCookie userInfo = new HttpCookie("userInfo");
                userInfo["firstname"] = dt.Rows[0]["firstname"].ToString();
                userInfo["emailid"] = dt.Rows[0]["emailid"].ToString();
                userInfo.Expires = DateTime.Now.AddDays(1d);
                HttpContext.Current.Response.Cookies.Add(userInfo);
            }
            con.Open();
            MySqlDataReader dr = cmd.ExecuteReader();
            string Username = "";
            while (dr.Read())
            {

                Username = dr["firstname"].ToString();
              
            }
            return Username;

        }

        [WebMethod]
        public void LogoutUser()
        {
            HttpCookie userInfo = new HttpCookie("userInfo");
            userInfo["userInfo"] = string.Empty;
            HttpContext.Current.Response.Cookies.Add(userInfo);
      

        }
        [WebMethod]
        public void UpdateUserDetails(String UserName, String Email, String password, String CurPswd)
        {

            UsersDetails uds = new UsersDetails();
            MySqlConnection con = new MySqlConnection("server=localhost;database=test_data2;Uid=sandc_db;Pwd=Sandc@123;");
            con.Open();
            string queryString = ("UPDATE railsfivesample  SET firstname=@UserName, emailid=@Email,password=@password  Where password='" + CurPswd + "' ");
            MySqlCommand cmd = new MySqlCommand(queryString, con);
            cmd.Parameters.AddWithValue("@UserName", UserName);
            if (password == "")
            {
                cmd.Parameters.AddWithValue("@password", CurPswd);
            }
            else    
            {
                cmd.Parameters.AddWithValue("@password", password);
            }
            cmd.Parameters.AddWithValue("@Email", Email);
            cmd.ExecuteNonQuery();
            HttpCookie userInfo = new HttpCookie("userInfo");
            userInfo["firstname"] = UserName;
            userInfo["emailid"] = Email;
            HttpContext.Current.Response.Cookies.Add(userInfo);


        }
       
    }
}

