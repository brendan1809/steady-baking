﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

// For Query 
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;

namespace Steady_Baking
{
    public partial class AdminUser : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            SqlCommand total = new SqlCommand("SELECT COUNT (*) FROM UserInfo",con);

            object totalUser = total.ExecuteScalar();

            TotalUser.Text = "Total User:" + Convert.ToString(totalUser);
            con.Close();
        }

        protected void AddUser_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminAddUser.aspx");
        }

        protected void UserGridView_RowCommand(object sender, GridViewCommandEventArgs e)
        {   
            if (e.CommandName.ToString() == "Del")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                con.Open();
                SqlCommand deleteUser = new SqlCommand("DELETE FROM UserInfo WHERE Id = "+index, con);

                deleteUser.ExecuteNonQuery();

                UserGridView.DeleteRow(index);
            }
            else if (e.CommandName.ToString() == "EditUser")
            {
                Response.Redirect("AdminAddUser.aspx?id=" + e.CommandArgument + "/edit" );
            }
        }

        protected void SearchButton_Click(object sender, EventArgs e)
        {
        }
    }
}