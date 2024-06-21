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
    public partial class sms_subscriber_manager : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadGrid();
        }
        public void LoadGrid()
        {
            myDAL objMyDal = new myDAL();
            ItemGrid.DataSource = objMyDal.select_from_sms_subscriber();
            ItemGrid.DataBind();
        }
        protected void ItemGrid_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            myDAL objMyDal = new myDAL();
            GridViewRow row = (GridViewRow)ItemGrid.Rows[e.RowIndex];
            Label id = (Label)ItemGrid.Rows[e.RowIndex].FindControl("lblid");
            int id_val = Convert.ToInt32(id.Text.ToString());

            int result = objMyDal.delete_sms(id_val);

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
            TextBox fname = (TextBox)ItemGrid.Rows[e.RowIndex].FindControl("txtfname_id");
            TextBox lname = (TextBox)ItemGrid.Rows[e.RowIndex].FindControl("txtlname_id");
            TextBox cell = (TextBox)ItemGrid.Rows[e.RowIndex].FindControl("txtcell_id");

            int id_val = Convert.ToInt32(id.Text.ToString());
            int admin_id_val = Convert.ToInt32(admin_id.Text.ToString());
            string fname_val = fname.Text.ToString();
            string lname_val = lname.Text.ToString();

            long cell_val = Convert.ToInt64(cell.Text.ToString());



            //=====updating the newly entered values in database====
            myDAL objMyDal = new myDAL();
            objMyDal.update_sms(id_val, admin_id_val, fname_val, lname_val, cell_val);
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
            string lname_val = insrtlname.Text.ToString();

            long cell_val = Convert.ToInt64(insertcell.Text.ToString());


            //=====updating the newly entered values in database====
            myDAL objMyDal = new myDAL();
            objMyDal.insert_sms(fname_val, lname_val, cell_val);
            LoadGrid();


        }

    }
}