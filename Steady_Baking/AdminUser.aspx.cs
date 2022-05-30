using System;
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
        }

        protected void AddUser_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminAddUser.aspx");
        }

        protected void ViewButton_Click(object sender, EventArgs e)
        {
            
        }

        protected void EditButton_Click(object sender, EventArgs e)
        {

        }

        protected void DeleteButton_Click(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName.ToString() == "Del")
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                con.Open();
                SqlCommand cmd1 = new SqlCommand("DELETE FROM UserInfo WHERE Id =" + e.CommandArgument, con);
                cmd1.ExecuteNonQuery();

                int index = Convert.ToInt32(e.CommandArgument);
                GridView1.DeleteRow(index);

            }
            else if (e.CommandName.ToString() == "EditUser")
            {
                Response.Redirect("AdminAddUser.aspx" + "/Edit/id?=" + e.CommandArgument);
            }
        }
    }
}