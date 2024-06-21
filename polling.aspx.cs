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
    public partial class polling : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadGrid();
        }

        public void LoadGrid()
        {
            myDAL objMyDal = new myDAL();
            ItemGrid1.DataSource = objMyDal.select_from_polling();
            ItemGrid1.DataBind();
        }
        protected void insert_tuple_click(object sender, EventArgs e)
        {
            string question_val = insrtquestion.Text.ToString();
            string option_a_val = insrtoption_a.Text.ToString();
            string option_b_val = insrtoption_b.Text.ToString();
            string option_c_val = insrtoption_c.Text.ToString();



            //=====updating the newly entered values in database====
            myDAL objMyDal = new myDAL();
            objMyDal.insert_polling(question_val, option_a_val, option_b_val, option_c_val);
            LoadGrid();

        }
    }
}