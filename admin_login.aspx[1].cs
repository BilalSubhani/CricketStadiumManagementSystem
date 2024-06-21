using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using DBProject.DAL;
using System.Web.Services.Description;

namespace DBProject
{
    public partial class admin_login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Admin_Submit_Click(object sender, EventArgs e)
        {
            String admin_login_id = txtUserName.Text;
            String admin_password = txtPWD.Text;

            DataTable DT = new DataTable();

            myDAL objMyDal = new myDAL();

            string admin_designation;

            admin_designation = objMyDal.admin_login_check(admin_login_id, admin_password, ref DT);


            if (admin_designation == "Cricket Board Official")
            {
                Response.Redirect("match_manager.aspx");
            }
            else if (admin_designation == "Normal User Manager")
            {
                Response.Redirect("normal_user_manager.aspx");
            }
            else if (admin_designation == "SMS Subscriber Manager")
            {
                Response.Redirect("sms_subscriber_manager.aspx");
            }
            else if (admin_designation == "Expense Manager")
            {
                Response.Redirect("expense_manager.aspx");
            }
            else if (admin_designation == "Stadium Manager")
            {
                Response.Redirect("stadium_manager.aspx");
            }
            else if (admin_designation == "Match Manager")
            {
                Response.Redirect("match_manager.aspx");
            }
            else
            {
                message.InnerHtml = Convert.ToString("Incorrect Login");
            }
        }
    }
}