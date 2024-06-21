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
    public partial class normal_user_manager : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadGrid();
        }
        public void LoadGrid()
        {
            myDAL objMyDal = new myDAL();
            ItemGrid.DataSource = objMyDal.select_from_normal_manager();
            ItemGrid.DataBind();
            ItemGrid1.DataSource = objMyDal.select_from_tickets();
            ItemGrid1.DataBind();
            ItemGrid2.DataSource = objMyDal.select_from_registerd_users();
            ItemGrid2.DataBind();
        }


        protected void ItemGrid_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            myDAL objMyDal = new myDAL();
            GridViewRow row = (GridViewRow)ItemGrid.Rows[e.RowIndex];
            Label id = (Label)ItemGrid.Rows[e.RowIndex].FindControl("lblid");
            int id_val = Convert.ToInt32(id.Text.ToString());

            int result = objMyDal.delete_normal(id_val);
            if (result == -1)
            {
                LoadGrid();
            }
            else
            {
                string message = "No row deleted";
                ClientScript.RegisterOnSubmitStatement(this.GetType(), "alert", message.ToString());
            }
        }

        protected void ItemGrid_RowEditing(object sender, GridViewEditEventArgs e)
        {
            ItemGrid.EditIndex = e.NewEditIndex;
            LoadGrid();
        }


        protected void ItemGrid_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = (GridViewRow)ItemGrid.Rows[e.RowIndex];
            //==== getting the value from the respective controls=====
            Label id = (Label)ItemGrid.Rows[e.RowIndex].FindControl("txtid");
            Label admin_id = (Label)ItemGrid.Rows[e.RowIndex].FindControl("txtadmin_id");
            TextBox lname = (TextBox)ItemGrid.Rows[e.RowIndex].FindControl("txtlname");
            TextBox fname = (TextBox)ItemGrid.Rows[e.RowIndex].FindControl("txtfname");
            TextBox ticket_id = (TextBox)ItemGrid.Rows[e.RowIndex].FindControl("txtticketid");

            int id_val = Convert.ToInt32(id.Text.ToString());
            int admin_id_val = Convert.ToInt32(admin_id.Text.ToString());
            string fname_val = fname.Text.ToString();
            int ticketid_val = Convert.ToInt32(ticket_id.Text.ToString());
            string lname_val = lname.Text.ToString();

            //=====updating the newly entered values in database====
            myDAL objMyDal = new myDAL();
            objMyDal.update_normal_user(id_val, fname_val, lname_val, ticketid_val, admin_id_val);
            //======================================================
            ItemGrid.EditIndex = -1;
            LoadGrid();
        }


        protected void ItemGrid_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            ItemGrid.EditIndex = -1;
            LoadGrid();
        }


        protected void insert_tuple_click(object sender, EventArgs e)
        {
            string fname_val = insrtfname.Text.ToString();
            int ticketid_val = Convert.ToInt32(insrticketid.Text.ToString());
            string lname_val = insrtlname.Text.ToString();


            //=====updating the newly entered values in database====
            myDAL objMyDal = new myDAL();
            objMyDal.insert_normal_user(fname_val, lname_val, ticketid_val);
            LoadGrid();

        }


    }
}