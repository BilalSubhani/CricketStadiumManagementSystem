using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace DBProject.DAL
{
    public partial class myDAL
    {
        private static readonly string connString =
            System.Configuration.ConfigurationManager.ConnectionStrings["sqlCon1"].ConnectionString;

        public DataSet view_of_open_one_day_match() //to get the values of all the items from table Items and return the Dataset
        {

            DataSet ds = new DataSet(); //declare and instantiate new dataset
            SqlConnection con = new SqlConnection(connString); //declare and instantiate new SQL connection
            con.Open(); // open sql Connection
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("select odm.team_one,'vs' as vs,odm.team_two,odm.overs_played_one, odm.overs_left_one,	odm.runs_one,odm.wickets_one,odm.overs_played_two,odm.overs_left_two,odm.runs_two,odm.wickets_two from matches m inner join one_day_match odm on m.id=odm.match_id where match_status='open'", con);  //instantiate SQL command 
                cmd.CommandType = CommandType.Text; //set type of sqL Command
                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    da.Fill(ds); //Add the result  set  returned from SQLCommand to ds
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }

            return ds; //return the dataset
        }
        public DataSet view_of_open_test_match() //to get the values of all the items from table Items and return the Dataset
        {

            DataSet ds = new DataSet(); //declare and instantiate new dataset
            SqlConnection con = new SqlConnection(connString); //declare and instantiate new SQL connection
            con.Open(); // open sql Connection
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("select day_number,team_one,'vs' as vs,team_two,runs_one,wickets_one,runs_two,wickets_two,innings from matches m inner join test_match tm on m.id=tm.match_id where match_status='open'", con);  //instantiate SQL command 
                cmd.CommandType = CommandType.Text; //set type of sqL Command
                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    da.Fill(ds); //Add the result  set  returned from SQLCommand to ds
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }

            return ds; //return the dataset
        }
        public DataSet select_from_tickets()
        {

            DataSet ds = new DataSet(); //declare and instantiate new dataset
            SqlConnection con = new SqlConnection(connString); //declare and instantiate new SQL connection
            con.Open(); // open sql Connection
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("select *from tickets", con);  //instantiate SQL command 
                cmd.CommandType = CommandType.Text; //set type of sqL Command
                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    da.Fill(ds); //Add the result  set  returned from SQLCommand to ds
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }

            return ds; //return the dataset
        }
        public DataSet select_from_registerd_users()
        {

            DataSet ds = new DataSet(); //declare and instantiate new dataset
            SqlConnection con = new SqlConnection(connString); //declare and instantiate new SQL connection
            con.Open(); // open sql Connection
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("select *from registered_users", con);  //instantiate SQL command 
                cmd.CommandType = CommandType.Text; //set type of sqL Command
                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    da.Fill(ds); //Add the result  set  returned from SQLCommand to ds
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }

            return ds; //return the dataset
        }
        public string admin_login_check(String admin_login_id, String admin_password, ref DataTable DT)
        {

            string admin_designation;
            DataSet ds = new DataSet();
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;

            cmd = new SqlCommand("admin_login ", con); //name of your procedure
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@login_id", SqlDbType.VarChar, 50);
            cmd.Parameters.Add("@pasword", SqlDbType.VarChar, 50);
            cmd.Parameters.Add("@Found", SqlDbType.VarChar, 50).Direction = ParameterDirection.Output;

            // set parameter values
            cmd.Parameters["@login_id"].Value = admin_login_id;
            cmd.Parameters["@pasword"].Value = admin_password;

            cmd.ExecuteNonQuery();

            // read output value 
            admin_designation = (string)(cmd.Parameters["@Found"].Value); //convert to output parameter to interger format

            con.Close();

            return admin_designation;
        }
        public int user_login_check(String user_email_id, String user_password, ref DataTable DT)
        {

            int user_registered;
            DataSet ds = new DataSet();
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;

            cmd = new SqlCommand("user_login ", con); //name of your procedure
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@email", SqlDbType.VarChar, 50);
            cmd.Parameters.Add("@pasword", SqlDbType.VarChar, 50);
            cmd.Parameters.Add("@Found", SqlDbType.Int).Direction = ParameterDirection.Output;

            // set parameter values
            cmd.Parameters["@email"].Value = user_email_id;
            cmd.Parameters["@pasword"].Value = user_password;

            cmd.ExecuteNonQuery();

            // read output value 
            user_registered = Convert.ToInt32(cmd.Parameters["@Found"].Value); //convert to output parameter to interger format

            con.Close();

            return user_registered;
        }
        public DataSet select_from_polling()
        {

            DataSet ds = new DataSet(); //declare and instantiate new dataset
            SqlConnection con = new SqlConnection(connString); //declare and instantiate new SQL connection
            con.Open(); // open sql Connection
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("select question,choice_a,choice_b,choice_c from poll order by question", con);
                cmd.CommandType = CommandType.Text; //set type of sqL Command
                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    da.Fill(ds); //Add the result  set  returned from SQLCommand to ds
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }

            return ds; //return the dataset
        }
        public DataSet sum_of_polling() //to get the values of all the items from table Items and return the Dataset
        {

            DataSet ds = new DataSet(); //declare and instantiate new dataset
            SqlConnection con = new SqlConnection(connString); //declare and instantiate new SQL connection
            con.Open(); // open sql Connection
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("select question,selected_option,count(selected_option) as selected_option_count from poll p  inner join polling_track pt on p.id=poll_id group by question,selected_option order by question", con);  //instantiate SQL command 
                cmd.CommandType = CommandType.Text; //set type of sqL Command
                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    da.Fill(ds); //Add the result  set  returned from SQLCommand to ds
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }

            return ds; //return the dataset
        }


        /////////////////////////////// EXPENSE TABLE VIEW, INSERTION, UPDATION, DELETION ///////////////////////////////
        public DataSet select_from_expense()
        {

            DataSet ds = new DataSet(); //declare and instantiate new dataset
            SqlConnection con = new SqlConnection(connString); //declare and instantiate new SQL connection
            con.Open(); // open sql Connection
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("select * from expense", con);  //instantiate SQL command 
                cmd.CommandType = CommandType.Text; //set type of sqL Command
                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    da.Fill(ds); //Add the result  set  returned from SQLCommand to ds
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }

            return ds; //return the dataset
        }
        public int update_expense(int id, int admin_id, int match_id, int securities, int food, int labor, int game_accessories)
        {
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            int result = 0;
            try
            {
                cmd = new SqlCommand("update_expense", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@id", SqlDbType.Int).Value = id;
                cmd.Parameters.Add("@admin_id", SqlDbType.Int).Value = admin_id;
                cmd.Parameters.Add("@match_id", SqlDbType.Int).Value = match_id;
                cmd.Parameters.Add("@securities", SqlDbType.Int).Value = securities;
                cmd.Parameters.Add("@food", SqlDbType.Int).Value = food;
                cmd.Parameters.Add("@labor", SqlDbType.Int).Value = labor;
                cmd.Parameters.Add("@game_accessories", SqlDbType.Int).Value = game_accessories;
                result = cmd.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return result;
        }
        public int check_insert_expense_for_existence(int match_id)
        {

            int found;
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;

            cmd = new SqlCommand("check_insert_expense_for_existence", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@match_id", SqlDbType.Int);
            cmd.Parameters.Add("@Found", SqlDbType.Int).Direction = ParameterDirection.Output;

            // set parameter values
            cmd.Parameters["@match_id"].Value = match_id;

            cmd.ExecuteNonQuery();

            // read output value 
            found = Convert.ToInt32(cmd.Parameters["@Found"].Value); //convert to output parameter to interger format

            con.Close();

            return found;
        }
        public int check_insert_expense_for_duplicity(int match_id)
        {

            int found;
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;

            cmd = new SqlCommand("check_insert_expense_for_duplicity", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@match_id", SqlDbType.Int);
            cmd.Parameters.Add("@Found", SqlDbType.Int).Direction = ParameterDirection.Output;

            // set parameter values
            cmd.Parameters["@match_id"].Value = match_id;

            cmd.ExecuteNonQuery();

            // read output value 
            found = Convert.ToInt32(cmd.Parameters["@Found"].Value); //convert to output parameter to interger format

            con.Close();

            return found;
        }
        public int insert_expense(int match_id, int securities, int food, int labor, int game_accessories)
        {
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            int result = 0;
            try
            {
                cmd = new SqlCommand("insert_expense", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@id", SqlDbType.Int).Value = 0;
                cmd.Parameters.Add("@admin_id", SqlDbType.Int).Value = 1103;
                cmd.Parameters.Add("@match_id", SqlDbType.Int).Value = match_id;
                cmd.Parameters.Add("@securities", SqlDbType.Int).Value = securities;
                cmd.Parameters.Add("@food", SqlDbType.Int).Value = food;
                cmd.Parameters.Add("@labor", SqlDbType.Int).Value = labor;
                cmd.Parameters.Add("@game_accessories", SqlDbType.Int).Value = game_accessories;
                result = cmd.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return result;
        }
        public int delete_expense(int id)
        {
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            int result = 0;
            try
            {
                cmd = new SqlCommand("delete_expense", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@id", SqlDbType.Int).Value = id;
                result = cmd.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return result;
        }

        /////////////////////////// END OF EXPENSE TABLE VIEW, INSERTION, UPDATION, DELETION ///////////////////////////////


        /////////////////////////////// STADIUM TABLE VIEW, INSERTION, UPDATION, DELETION ///////////////////////////////
        public DataSet select_from_stadium_manager()
        {

            DataSet ds = new DataSet(); //declare and instantiate new dataset
            SqlConnection con = new SqlConnection(connString); //declare and instantiate new SQL connection
            con.Open(); // open sql Connection
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("select *from stadium", con);  //instantiate SQL command 
                cmd.CommandType = CommandType.Text; //set type of sqL Command
                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    da.Fill(ds); //Add the result  set  returned from SQLCommand to ds
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }

            return ds; //return the dataset
        }
        public int update_stadium(int id, int admin_id, string stadium_name, int capacity, string city, string country)
        {
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            int result = 0;
            try
            {
                cmd = new SqlCommand("update_stadium", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@id", SqlDbType.Int).Value = id;
                cmd.Parameters.Add("@admin_id", SqlDbType.Int).Value = admin_id;
                cmd.Parameters.Add("@stadium_name", SqlDbType.VarChar, 100).Value = stadium_name;
                cmd.Parameters.Add("@capacity", SqlDbType.Int).Value = capacity;
                cmd.Parameters.Add("@city", SqlDbType.VarChar, 50).Value = city;
                cmd.Parameters.Add("@country", SqlDbType.VarChar, 50).Value = country;
                result = cmd.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return result;
        }
        public int insert_stadium(string stadium_name, int capacity, string city, string country)
        {
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            int result = 0;
            try
            {
                cmd = new SqlCommand("insert_stadium", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@id", SqlDbType.Int).Value = 0;
                cmd.Parameters.Add("@admin_id", SqlDbType.Int).Value = 1104;
                cmd.Parameters.Add("@stadium_name", SqlDbType.VarChar, 100).Value = stadium_name;
                cmd.Parameters.Add("@capacity", SqlDbType.Int).Value = capacity;
                cmd.Parameters.Add("@city", SqlDbType.VarChar, 50).Value = city;
                cmd.Parameters.Add("@country", SqlDbType.VarChar, 50).Value = country;
                result = cmd.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return result;
        }
        public int delete_stadium(int id)
        {
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            int result = 0;
            try
            {
                cmd = new SqlCommand("delete_stadium", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@id", SqlDbType.Int).Value = id;
                result = cmd.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return result;
        }

        /////////////////////////// END OF STADIUM TABLE VIEW, INSERTION, UPDATION, DELETION ///////////////////////////////


        /////////////////////////////// SMS_SUBSCRIBER TABLE VIEW, INSERTION, UPDATION, DELETION ///////////////////////////////
        public DataSet select_from_sms_subscriber()
        {

            DataSet ds = new DataSet(); //declare and instantiate new dataset
            SqlConnection con = new SqlConnection(connString); //declare and instantiate new SQL connection
            con.Open(); // open sql Connection
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("select*from sms_subscriber", con);  //instantiate SQL command 
                cmd.CommandType = CommandType.Text; //set type of sqL Command
                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    da.Fill(ds); //Add the result  set  returned from SQLCommand to ds
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }

            return ds; //return the dataset
        }
        public int delete_sms(int id)
        {
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            int result = 0;
            try
            {
                cmd = new SqlCommand("delete_sms", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@id", SqlDbType.Int).Value = id;
                result = cmd.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return result;
        }
        public int insert_sms(string fname, string lname, long cell)
        {
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            int result = 0;
            try
            {
                cmd = new SqlCommand("dbo.insert_sms", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@id", SqlDbType.Int).Value = 0;
                cmd.Parameters.Add("@admin_id", SqlDbType.Int).Value = 1102;
                cmd.Parameters.Add("@fname", SqlDbType.VarChar, 50).Value = fname;
                cmd.Parameters.Add("@lname", SqlDbType.VarChar, 50).Value = lname;
                cmd.Parameters.Add("@cell", SqlDbType.BigInt).Value = cell;

                result = cmd.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return result;
        }
        public int update_sms(int id, int admin_id, string fname, string lname, long cell)
        {
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            int result = 0;
            try
            {
                cmd = new SqlCommand("update_sms", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@id", SqlDbType.Int).Value = id;
                cmd.Parameters.Add("@admin_id", SqlDbType.Int).Value = admin_id;
                cmd.Parameters.Add("@fname", SqlDbType.VarChar, 50).Value = fname;
                cmd.Parameters.Add("@lname", SqlDbType.VarChar, 50).Value = lname;
                cmd.Parameters.Add("@cell", SqlDbType.BigInt).Value = cell;

                result = cmd.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return result;
        }

        /////////////////////////// END OF SMS_SUBSCRIBER TABLE VIEW, INSERTION, UPDATION, DELETION ///////////////////////////////



        /////////////////////////////// NORMAL_USER TABLE VIEW, INSERTION, UPDATION, DELETION ///////////////////////////////
        public DataSet select_from_normal_manager()
        {

            DataSet ds = new DataSet(); //declare and instantiate new dataset
            SqlConnection con = new SqlConnection(connString); //declare and instantiate new SQL connection
            con.Open(); // open sql Connection
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("select *from normal_users", con);  //instantiate SQL command 
                cmd.CommandType = CommandType.Text; //set type of sqL Command
                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    da.Fill(ds); //Add the result  set  returned from SQLCommand to ds
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }

            return ds; //return the dataset
        }
        public int update_normal_user(int id, string fname, string lname, int ticket_id, int admin_id)
        {
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            int result = 0;
            try
            {
                cmd = new SqlCommand("update_normal", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@id", SqlDbType.Int).Value = id;
                cmd.Parameters.Add("@admin_id", SqlDbType.Int).Value = admin_id;
                cmd.Parameters.Add("@fname", SqlDbType.VarChar, 50).Value = fname;
                cmd.Parameters.Add("@ticket_id", SqlDbType.Int).Value = ticket_id;
                cmd.Parameters.Add("@lname", SqlDbType.VarChar, 50).Value = lname;

                result = cmd.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return result;
        }
        public int insert_normal_user(string fname, string lname, int ticket_id)
        {
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            int result = 0;
            try
            {
                cmd = new SqlCommand("insert_normal", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@id", SqlDbType.Int).Value = 0;
                cmd.Parameters.Add("@admin_id", SqlDbType.Int).Value = 1101;
                cmd.Parameters.Add("@fname", SqlDbType.VarChar, 50).Value = fname;
                cmd.Parameters.Add("@ticket_id", SqlDbType.Int).Value = ticket_id;
                cmd.Parameters.Add("@lname", SqlDbType.VarChar, 50).Value = lname;
                result = cmd.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return result;
        }
        public int delete_normal(int id)
        {
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            int result = 0;
            try
            {
                cmd = new SqlCommand("delete_normal", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@id", SqlDbType.Int).Value = id;
                result = cmd.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return result;
        }

        /////////////////////////////// END OF NORMAL_USER TABLE VIEW, INSERTION, UPDATION, DELETION ///////////////////////////////




        /////////////////////////////// MATCHES TABLE VIEW, INSERTION, UPDATION, DELETION ///////////////////////////////
        public DataSet select_from_match_manager()
        {

            DataSet ds = new DataSet(); //declare and instantiate new dataset
            SqlConnection con = new SqlConnection(connString); //declare and instantiate new SQL connection
            con.Open(); // open sql Connection
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("select *from matches", con);  //instantiate SQL command 
                cmd.CommandType = CommandType.Text; //set type of sqL Command
                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    da.Fill(ds); //Add the result  set  returned from SQLCommand to ds
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }

            return ds; //return the dataset
        }
        public int delete_match(int id)
        {
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            int result = 0;
            try
            {
                cmd = new SqlCommand("delete_match", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@id", SqlDbType.Int).Value = id;
                result = cmd.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return result;
        }
        public int update_match(int id, string match_status, int admin_id, int stadium_id)
        {
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            int result = 0;
            try
            {
                cmd = new SqlCommand("update_match", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@id", SqlDbType.Int).Value = id;
                cmd.Parameters.Add("@match_status", SqlDbType.VarChar, 30).Value = match_status;
                cmd.Parameters.Add("@admin_id", SqlDbType.Int).Value = admin_id;
                cmd.Parameters.Add("@stadium_id", SqlDbType.Int).Value = stadium_id;

                result = cmd.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return result;
        }
        public int insert_match(string match_status, int stadium_id)
        {
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            int result = 0;
            try
            {
                cmd = new SqlCommand("insert_match", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@id", SqlDbType.Int).Value = 0;
                cmd.Parameters.Add("@match_status", SqlDbType.VarChar, 30).Value = match_status;
                cmd.Parameters.Add("@admin_id", SqlDbType.Int).Value = 1105;
                cmd.Parameters.Add("@stadium_id", SqlDbType.Int).Value = stadium_id;
                result = cmd.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return result;
        }

        /////////////////////////////// END OF MATCHES TABLE VIEW, INSERTION, UPDATION, DELETION ///////////////////////////////



        /////////////////////////////// ONE DAY MATCH TABLE VIEW, INSERTION, UPDATION, DELETION ///////////////////////////////
        public DataSet select_from_one_day_match()
        {

            DataSet ds = new DataSet(); //declare and instantiate new dataset
            SqlConnection con = new SqlConnection(connString); //declare and instantiate new SQL connection
            con.Open(); // open sql Connection
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("select * from one_day_match", con);  //instantiate SQL command 
                cmd.CommandType = CommandType.Text; //set type of sqL Command
                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    da.Fill(ds); //Add the result  set  returned from SQLCommand to ds
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }

            return ds; //return the dataset
        }
        public int update_one_day_match(int id, float overs_played_one, float overs_left_one, int runs_one, int wickets_one, float overs_played_two, float overs_left_two, int runs_two, int wickets_two)
        {
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            int result = 0;
            try
            {
                cmd = new SqlCommand("update_one_day_match", con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@id", SqlDbType.Int).Value = id;
                cmd.Parameters.Add("@overs_played_one", SqlDbType.Float).Value = overs_played_one;
                cmd.Parameters.Add("@overs_left_one", SqlDbType.Float).Value = overs_left_one;
                cmd.Parameters.Add("@runs_one", SqlDbType.Int).Value = runs_one;
                cmd.Parameters.Add("@wickets_one", SqlDbType.Int).Value = wickets_one;
                cmd.Parameters.Add("@overs_played_two", SqlDbType.Float).Value = overs_played_two;
                cmd.Parameters.Add("@overs_left_two", SqlDbType.Float).Value = overs_left_two;
                cmd.Parameters.Add("@runs_two", SqlDbType.Int).Value = runs_two;
                cmd.Parameters.Add("@wickets_two", SqlDbType.Int).Value = wickets_two;

                result = cmd.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return result;
        }
        public int insert_one_day_match(int match_id, string team_one, string team_two, float overs_played_one, float overs_left_one, int runs_one, int wickets_one, float overs_played_two, float overs_left_two, int runs_two, int wickets_two)
        {
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            int result = 0;
            try
            {
                cmd = new SqlCommand("insert_one_day_match", con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@id", SqlDbType.Int).Value = 0;
                cmd.Parameters.Add("@match_id", SqlDbType.Int).Value = match_id;
                cmd.Parameters.Add("@team_one", SqlDbType.VarChar, 30).Value = team_one;
                cmd.Parameters.Add("@team_two", SqlDbType.VarChar, 30).Value = team_two;
                cmd.Parameters.Add("@overs_played_one", SqlDbType.Float).Value = overs_played_one;
                cmd.Parameters.Add("@overs_left_one", SqlDbType.Float).Value = overs_left_one;
                cmd.Parameters.Add("@runs_one", SqlDbType.Int).Value = runs_one;
                cmd.Parameters.Add("@wickets_one", SqlDbType.Int).Value = wickets_one;
                cmd.Parameters.Add("@overs_played_two", SqlDbType.Float).Value = overs_played_two;
                cmd.Parameters.Add("@overs_left_two", SqlDbType.Float).Value = overs_left_two;
                cmd.Parameters.Add("@runs_two", SqlDbType.Int).Value = runs_two;
                cmd.Parameters.Add("@wickets_two", SqlDbType.Int).Value = wickets_two;
                result = cmd.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return result;
        }

        /////////////////////////////// END OF ONE DAY MATCH TABLE VIEW, INSERTION, UPDATION, DELETION ///////////////////////////////



        /////////////////////////////// TEST MATCH TABLE VIEW, INSERTION, UPDATION, DELETION ///////////////////////////////
        public DataSet select_from_test_match()
        {

            DataSet ds = new DataSet(); //declare and instantiate new dataset
            SqlConnection con = new SqlConnection(connString); //declare and instantiate new SQL connection
            con.Open(); // open sql Connection
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("select * from test_match", con);  //instantiate SQL command 
                cmd.CommandType = CommandType.Text; //set type of sqL Command
                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    da.Fill(ds); //Add the result  set  returned from SQLCommand to ds
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }

            return ds; //return the dataset
        }
        public int update_test_match(int id, int day_number, int runs_one, int wickets_one, int runs_two, int wickets_two, string innings)
        {
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            int result = 0;
            try
            {
                cmd = new SqlCommand("update_test_match", con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@id", SqlDbType.Int).Value = id;
                cmd.Parameters.Add("@day_number", SqlDbType.Int).Value = day_number;
                cmd.Parameters.Add("@runs_one", SqlDbType.Int).Value = runs_one;
                cmd.Parameters.Add("@wickets_one", SqlDbType.Int).Value = wickets_one;
                cmd.Parameters.Add("@runs_two", SqlDbType.Int).Value = runs_two;
                cmd.Parameters.Add("@wickets_two", SqlDbType.Int).Value = wickets_two;
                cmd.Parameters.Add("@innings", SqlDbType.VarChar, 30).Value = innings;

                result = cmd.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return result;
        }
        public int insert_test_match(int day_number, int match_id, string team_one, string team_two, int runs_one, int wickets_one, int runs_two, int wickets_two, string innings)
        {
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            int result = 0;
            try
            {
                cmd = new SqlCommand("insert_test_match", con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@id", SqlDbType.Int).Value = 0;
                cmd.Parameters.Add("@day_number", SqlDbType.Int).Value = day_number;
                cmd.Parameters.Add("@match_id", SqlDbType.Int).Value = match_id;
                cmd.Parameters.Add("@team_one", SqlDbType.VarChar, 30).Value = team_one;
                cmd.Parameters.Add("@team_two", SqlDbType.VarChar, 30).Value = team_two;
                cmd.Parameters.Add("@runs_one", SqlDbType.Int).Value = runs_one;
                cmd.Parameters.Add("@wickets_one", SqlDbType.Int).Value = wickets_one;
                cmd.Parameters.Add("@runs_two", SqlDbType.Int).Value = runs_two;
                cmd.Parameters.Add("@wickets_two", SqlDbType.Int).Value = wickets_two;
                cmd.Parameters.Add("@innings", SqlDbType.VarChar, 10).Value = innings;
                result = cmd.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return result;
        }

        /////////////////////////////// END OF ONE DAY MATCH TABLE VIEW, INSERTION, UPDATION, DELETION ///////////////////////////////

        public int insert_polling(string question, string option_a, string option_b, string option_c)
        {
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            int result = 0;
            try
            {
                cmd = new SqlCommand("dbo.insert_polling", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@id", SqlDbType.Int).Value = 0;
                cmd.Parameters.Add("@normal_user_id", SqlDbType.Int).Value = 107;
                cmd.Parameters.Add("@question", SqlDbType.VarChar, 200).Value = question;
                cmd.Parameters.Add("@choice_a", SqlDbType.VarChar, 100).Value = option_a;
                cmd.Parameters.Add("@choice_b", SqlDbType.VarChar, 100).Value = option_b;
                cmd.Parameters.Add("@choice_c", SqlDbType.VarChar, 100).Value = option_c;

                result = cmd.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return result;
        }

    }

}