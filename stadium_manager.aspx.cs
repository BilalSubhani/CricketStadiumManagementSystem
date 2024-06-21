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
    public partial class stadium_manager : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadGrid();
        }
        public void LoadGrid()
        {
            myDAL objMyDal = new myDAL();
            ItemGrid.DataSource = objMyDal.select_from_stadium_manager();
            ItemGrid.DataBind();
        }
        protected void ItemGrid_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            myDAL objMyDal = new myDAL();
            GridViewRow row = (GridViewRow)ItemGrid.Rows[e.RowIndex];
            Label id = (Label)ItemGrid.Rows[e.RowIndex].FindControl("lblid");
            int id_val = Convert.ToInt32(id.Text.ToString());

            int result = objMyDal.delete_stadium(id_val);
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
            TextBox stadium_name = (TextBox)ItemGrid.Rows[e.RowIndex].FindControl("txtstadium_name");
            TextBox capacity = (TextBox)ItemGrid.Rows[e.RowIndex].FindControl("txtcapacity");
            TextBox city = (TextBox)ItemGrid.Rows[e.RowIndex].FindControl("txtcity");
            TextBox country = (TextBox)ItemGrid.Rows[e.RowIndex].FindControl("txtcountry");

            int id_val = Convert.ToInt32(id.Text.ToString());
            int admin_id_val = Convert.ToInt32(admin_id.Text.ToString());
            string stadium_name_val = stadium_name.Text.ToString();
            int capacity_val = Convert.ToInt32(capacity.Text.ToString());
            string city_val = city.Text.ToString();
            string country_val = country.Text.ToString();

            //=====updating the newly entered values in database====
            myDAL objMyDal = new myDAL();
            objMyDal.update_stadium(id_val, admin_id_val, stadium_name_val, capacity_val, city_val, country_val);
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
            string stadium_name_val = insrtstadiumname.Text.ToString();
            int capacity_val = Convert.ToInt32(insrtcapacity.Text.ToString());
            string city_val = insrtcity.Text.ToString();
            string country_val = insrtcountry.Text.ToString();

            //=====updating the newly entered values in database====
            myDAL objMyDal = new myDAL();
            objMyDal.insert_stadium(stadium_name_val, capacity_val, city_val, country_val);
            LoadGrid();

        }

    }
}