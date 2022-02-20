using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UsersApplicatoin
{
    public partial class EditProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            Name.Value = Request.Cookies["userInfo"]["firstname"].ToString();
            Email.Value = Request.Cookies["userInfo"]["emailid"].ToString();

        }
    }
}