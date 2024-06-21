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
    public partial class match_manager : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadGrid();
            LoadGrid1();
            LoadGrid2();
        }

        ///////////////////////////////////////////// MATCH //////////////////////////////////////////////////
        public void LoadGrid()
        {
            myDAL objMyDal = new myDAL();
            ItemGrid.DataSource = objMyDal.select_from_match_manager();
            ItemGrid.DataBind();
        }
        protected void ItemGrid_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            myDAL objMyDal = new myDAL();
            GridViewRow row = (GridViewRow)ItemGrid.Rows[e.RowIndex];
            Label id = (Label)ItemGrid.Rows[e.RowIndex].FindControl("lblid");
            int id_val = Convert.ToInt32(id.Text.ToString());

            int result = objMyDal.delete_match(id_val);
            if (result == -1)
            {
                LoadGrid();
                LoadGrid1();
                LoadGrid2();
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
            TextBox match_status = (TextBox)ItemGrid.Rows[e.RowIndex].FindControl("txtmatch_status");
            Label admin_id = (Label)ItemGrid.Rows[e.RowIndex].FindControl("txtadmin_id");
            Label stadium_id = (Label)ItemGrid.Rows[e.RowIndex].FindControl("txtstadium_id");

            int id_val = Convert.ToInt32(id.Text.ToString());
            string match_status_val = match_status.Text.ToString();
            int admin_id_val = Convert.ToInt32(admin_id.Text.ToString());
            int stadium_id_val = Convert.ToInt32(stadium_id.Text.ToString());

            //=====updating the newly entered values in database====
            myDAL objMyDal = new myDAL();
            objMyDal.update_match(id_val, match_status_val, admin_id_val, stadium_id_val);
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
            string match_status_val = insrtmatchstatus.Text.ToString();
            int stadium_id_val = Convert.ToInt32(insrtstadiumid.Text.ToString());

            //=====updating the newly entered values in database====
            myDAL objMyDal = new myDAL();
            objMyDal.insert_match(match_status_val, stadium_id_val);
            LoadGrid();
        }

        ///////////////////////////////////////// END OF  MATCH ///////////////////////////////////////////////



        ///////////////////////////////////////////// ONE DAY MATCH //////////////////////////////////////////////////
        public void LoadGrid1()
        {
            myDAL objMyDal = new myDAL();
            ItemGrid1.DataSource = objMyDal.select_from_one_day_match();
            ItemGrid1.DataBind();
        }
        protected void ItemGrid_RowEditing1(object sender, GridViewEditEventArgs e)
        {
            ItemGrid1.EditIndex = e.NewEditIndex;
            LoadGrid1();
        }
        protected void ItemGrid_RowUpdating1(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = (GridViewRow)ItemGrid1.Rows[e.RowIndex];
            //==== getting the value from the respective controls=====
            Label id = (Label)ItemGrid1.Rows[e.RowIndex].FindControl("txtid");
            TextBox overs_played_one = (TextBox)ItemGrid1.Rows[e.RowIndex].FindControl("txtovers_played_one");
            TextBox overs_left_one = (TextBox)ItemGrid1.Rows[e.RowIndex].FindControl("txtovers_left_one");
            TextBox runs_one = (TextBox)ItemGrid1.Rows[e.RowIndex].FindControl("txtruns_one");
            TextBox wickets_one = (TextBox)ItemGrid1.Rows[e.RowIndex].FindControl("txtwickets_one");
            TextBox overs_played_two = (TextBox)ItemGrid1.Rows[e.RowIndex].FindControl("txtovers_played_two");
            TextBox overs_left_two = (TextBox)ItemGrid1.Rows[e.RowIndex].FindControl("txtovers_left_two");
            TextBox runs_two = (TextBox)ItemGrid1.Rows[e.RowIndex].FindControl("txtruns_two");
            TextBox wickets_two = (TextBox)ItemGrid1.Rows[e.RowIndex].FindControl("txtwickets_two");


            int id_val = Convert.ToInt32(id.Text.ToString());
            float overs_played_one_val = float.Parse(overs_played_one.Text.ToString());
            float overs_left_one_val = float.Parse(overs_left_one.Text.ToString());
            int runs_one_val = int.Parse(runs_one.Text.ToString());
            int wickets_one_val = int.Parse(wickets_one.Text.ToString());
            float overs_played_two_val = float.Parse(overs_played_two.Text.ToString());
            float overs_left_two_val = float.Parse(overs_left_two.Text.ToString());
            int runs_two_val = int.Parse(runs_two.Text.ToString());
            int wickets_two_val = int.Parse(wickets_two.Text.ToString());

            //=====updating the newly entered values in database====
            myDAL objMyDal = new myDAL();
            objMyDal.update_one_day_match(id_val, overs_played_one_val, overs_left_one_val, runs_one_val, wickets_one_val, overs_played_two_val, overs_left_two_val, runs_two_val, wickets_two_val);
            //======================================================
            ItemGrid1.EditIndex = -1;
            LoadGrid1();
        }
        protected void ItemGrid_RowCancelingEdit1(object sender, GridViewCancelEditEventArgs e)
        {
            ItemGrid1.EditIndex = -1;
            LoadGrid1();
        }
        protected void insert_tuple_click1(object sender, EventArgs e)
        {
            int match_id = int.Parse(insrtmatchid.Text.ToString());
            string team_one = insrtteamone.Text.ToString();
            string team_two = insrtteamtwo.Text.ToString();
            float overs_played_one = float.Parse(insrtoversplayedone.Text.ToString());
            float overs_left_one = float.Parse(insrtoversleftone.Text.ToString());
            int runs_one = int.Parse(insrtrunsone.Text.ToString());
            int wickets_one = int.Parse(insrtwicketone.Text.ToString());
            float overs_played_two = float.Parse(insrtoversplayedtwo.Text.ToString());
            float overs_left_two = float.Parse(insrtlefttwo.Text.ToString());
            int runs_two = int.Parse(insrtrunstwo.Text.ToString());
            int wickets_two = int.Parse(insrtwicketstwo.Text.ToString());

            //=====updating the newly entered values in database====
            myDAL objMyDal = new myDAL();
            objMyDal.insert_one_day_match(match_id, team_one, team_two, overs_played_one, overs_left_one, runs_one, wickets_one, overs_played_two, overs_left_two, runs_two, wickets_two);
            LoadGrid1();


        }

        ///////////////////////////////////////// END OF ONE DAY MATCH ///////////////////////////////////////////////



        ///////////////////////////////////////////// TEST MATCH //////////////////////////////////////////////////
        public void LoadGrid2()
        {
            myDAL objMyDal = new myDAL();
            ItemGrid2.DataSource = objMyDal.select_from_test_match();
            ItemGrid2.DataBind();
        }
        protected void ItemGrid_RowEditing2(object sender, GridViewEditEventArgs e)
        {
            ItemGrid2.EditIndex = e.NewEditIndex;
            LoadGrid2();
        }
        protected void ItemGrid_RowUpdating2(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = (GridViewRow)ItemGrid2.Rows[e.RowIndex];
            //==== getting the value from the respective controls=====
            Label id = (Label)ItemGrid2.Rows[e.RowIndex].FindControl("txtid");
            Label day_number = (Label)ItemGrid2.Rows[e.RowIndex].FindControl("txtday_number");
            TextBox runs_one = (TextBox)ItemGrid2.Rows[e.RowIndex].FindControl("txtruns_one");
            TextBox wickets_one = (TextBox)ItemGrid2.Rows[e.RowIndex].FindControl("txtwickets_one");
            TextBox runs_two = (TextBox)ItemGrid2.Rows[e.RowIndex].FindControl("txtruns_two");
            TextBox wickets_two = (TextBox)ItemGrid2.Rows[e.RowIndex].FindControl("txtwickets_two");
            TextBox innings = (TextBox)ItemGrid2.Rows[e.RowIndex].FindControl("txtinnings");


            int id_val = Convert.ToInt32(id.Text.ToString());
            int day_number_val = Convert.ToInt32(day_number.Text.ToString());
            int runs_one_val = int.Parse(runs_one.Text.ToString());
            int wickets_one_val = int.Parse(wickets_one.Text.ToString());
            int runs_two_val = int.Parse(runs_two.Text.ToString());
            int wickets_two_val = int.Parse(wickets_two.Text.ToString());
            string innings_val = innings.Text.ToString();
            //=====updating the newly entered values in database====
            myDAL objMyDal = new myDAL();
            objMyDal.update_test_match(id_val, day_number_val, runs_one_val, wickets_one_val, runs_two_val, wickets_two_val, innings_val);
            //======================================================
            ItemGrid2.EditIndex = -1;
            LoadGrid2();
        }
        protected void ItemGrid_RowCancelingEdit2(object sender, GridViewCancelEditEventArgs e)
        {
            ItemGrid2.EditIndex = -1;
            LoadGrid2();
        }
        protected void insert_tuple_click2(object sender, EventArgs e)
        {
            int day_number = int.Parse(insrttestdaynumber.Text.ToString());
            int match_id = int.Parse(insrttestmatchid.Text.ToString());
            string team_one = insrttestteamone.Text.ToString();
            string team_two = insrttestteamtwo.Text.ToString();
            int runs_one = int.Parse(insrttestrunsone.Text.ToString());
            int wickets_one = int.Parse(insrttestwicketone.Text.ToString());
            int runs_two = int.Parse(insrttestrunstwo.Text.ToString());
            int wickets_two = int.Parse(insrttestwicketstwo.Text.ToString());
            string innings = insrtinnings.Text.ToString();

            //=====updating the newly entered values in database=====//
            myDAL objMyDal = new myDAL();
            objMyDal.insert_test_match(day_number, match_id, team_one, team_two, runs_one, wickets_one, runs_two, wickets_two, innings);
            LoadGrid2();
        }

        ///////////////////////////////////////// END OF TEST MATCH ///////////////////////////////////////////////
    }
}