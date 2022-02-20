using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;

namespace UsersApplicatoin
{
    public class UsersDetails
    {

     
      
        public void StorUserDetails(string firstname, string password, string emailid)
        {
            string connectionString = "server=localhost;database=test_data2;Uid=sandc_db;Pwd=Sandc@123;";

            MySqlConnection con = new MySqlConnection(connectionString);
            con.Open();
            MySqlCommand cmd = new MySqlCommand("INSERT into railsfivesample(firstname, password,emailid) VALUES (@firstname, @password, @emailid)", con);
            cmd.Parameters.AddWithValue("@firstname", firstname);
            cmd.Parameters.AddWithValue("@password", password);
            cmd.Parameters.AddWithValue("@emailid", emailid);
            cmd.ExecuteNonQuery();

            HttpCookie userInfo = new HttpCookie("userInfo");
            userInfo["firstname"] = firstname;
            userInfo["emailid"] = emailid;
            HttpContext.Current.Response.Cookies.Add(userInfo);



        }
    }
}