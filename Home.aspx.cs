using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using DBProject.DAL;

namespace DBProject
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void userbutton_Click(object sender, EventArgs e)
        {
            Response.Redirect("user_login.aspx", false);
        }

        protected void adminbutton_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin_login.aspx", false);
        }
    }
}