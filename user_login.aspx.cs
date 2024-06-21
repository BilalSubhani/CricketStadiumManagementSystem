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
    public partial class user_login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadGrid1();
           // LoadGrid2();
            LoadGrid3();
        }
        public void LoadGrid1()
        {
            myDAL objMyDal = new myDAL();
            ItemGrid1.DataSource = objMyDal.view_of_open_one_day_match();
            ItemGrid1.DataBind();
        }

        public void LoadGrid2()
        {
            myDAL objMyDal = new myDAL();
            ItemGrid2.DataSource = objMyDal.view_of_open_test_match();
            ItemGrid2.DataBind();
        }


        public void LoadGrid3()
        {
            myDAL objMyDal = new myDAL();
            ItemGrid3.DataSource = objMyDal.sum_of_polling();
            ItemGrid3.DataBind();
        }





        protected void User_Submit_Click(object sender, EventArgs e)
        {
            String user_email_id = txtUserName.Text;
            String user_password = txtPWD.Text;

            DataTable DT = new DataTable();

            myDAL objMyDal = new myDAL();

            int user_registered;

            user_registered = objMyDal.user_login_check(user_email_id, user_password, ref DT);

            if (user_registered == 1)
            {

                Response.Redirect("polling.aspx");
            }
            else
            {
                message.InnerHtml = Convert.ToString("Incorrect Login");
            }
        }
    }
}