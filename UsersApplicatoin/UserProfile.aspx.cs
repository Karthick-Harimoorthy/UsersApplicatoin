using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UsersApplicatoin
{
    public partial class UserProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UserName.InnerHtml = Request.Cookies["userInfo"]["firstname"].ToString();
            Email.InnerHtml = Request.Cookies["userInfo"]["emailid"].ToString();

        }
    }
}