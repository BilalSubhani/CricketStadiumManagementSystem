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
    public partial class expense_manager : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadGrid();
        }
        public void LoadGrid()
        {
            myDAL objMyDal = new myDAL();
            ItemGrid.DataSource = objMyDal.select_from_expense();
            ItemGrid.DataBind();
        }
        protected void ItemGrid_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            myDAL objMyDal = new myDAL();
            GridViewRow row = (GridViewRow)ItemGrid.Rows[e.RowIndex];
            Label id = (Label)ItemGrid.Rows[e.RowIndex].FindControl("lblid");
            int id_val = Convert.ToInt32(id.Text.ToString());

            int result = objMyDal.delete_expense(id_val);
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
            Label match_id = (Label)ItemGrid.Rows[e.RowIndex].FindControl("txtmatch_id");
            TextBox securities = (TextBox)ItemGrid.Rows[e.RowIndex].FindControl("txtsecurities");
            TextBox food = (TextBox)ItemGrid.Rows[e.RowIndex].FindControl("txtfood");
            TextBox labor = (TextBox)ItemGrid.Rows[e.RowIndex].FindControl("txtlabor");
            TextBox game_accessories = (TextBox)ItemGrid.Rows[e.RowIndex].FindControl("txtgame_accessories");

            int id_val = Convert.ToInt32(id.Text.ToString());
            int admin_id_val = Convert.ToInt32(admin_id.Text.ToString());
            int match_id_val = Convert.ToInt32(match_id.Text.ToString());
            int securities_val = Convert.ToInt32(securities.Text.ToString());
            int food_val = Convert.ToInt32(food.Text.ToString());
            int labor_val = Convert.ToInt32(labor.Text.ToString());
            int game_accessories_val = Convert.ToInt32(game_accessories.Text.ToString());

            //=====updating the newly entered values in database====
            myDAL objMyDal = new myDAL();
            objMyDal.update_expense(id_val, admin_id_val, match_id_val, securities_val, food_val, labor_val, game_accessories_val);
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
            int match_id_val = Convert.ToInt32(insrtmatchid.Text.ToString());
            int securities_val = Convert.ToInt32(insrtsecurity.Text.ToString());
            int food_val = Convert.ToInt32(insrtfood.Text.ToString());
            int labor_val = Convert.ToInt32(insrtlabor.Text.ToString());
            int game_accessories_val = Convert.ToInt32(insrtaccessories.Text.ToString());

            //=====updating the newly entered values in database====
            myDAL objMyDal = new myDAL();
            int check_one = objMyDal.check_insert_expense_for_existence(match_id_val);
            int check_two = objMyDal.check_insert_expense_for_duplicity(match_id_val);
            if (check_one == 1 && check_two == 1)
            {
                objMyDal.insert_expense(match_id_val, securities_val, food_val, labor_val, game_accessories_val);
                LoadGrid();
            }
            else if (check_one == 1 && check_two == 0)
            {
                message.InnerHtml = Convert.ToString("This Match ID already exists in expense table. Add a valid Match ID");
            }
            else
            {
                message.InnerHtml = Convert.ToString("It is not a valid Match ID. There is no such match having this ID");
            }
        }

    }
}