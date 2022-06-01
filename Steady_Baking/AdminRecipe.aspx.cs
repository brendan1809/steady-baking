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
    public partial class AdminRecipe : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            SqlCommand total = new SqlCommand("SELECT COUNT (*) FROM Recipe", con);

            object totalRecipe = total.ExecuteScalar();

            TotalUser.Text = "Total Recipe:" + Convert.ToString(totalRecipe);
        }

        protected void AddRecipe_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminAddRecipe.aspx");
        }
        protected void SearchButton_Click(object sender, EventArgs e)
        {
        }
 

        protected void GridView1_RowCommand1(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName.ToString() == "Del")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                con.Open();
                SqlCommand deleteUser = new SqlCommand("DELETE FROM Recipe WHERE Id = " + index, con);

                deleteUser.ExecuteNonQuery();

                GridView1.DeleteRow(index);
            }
            else if (e.CommandName.ToString() == "EditRecipe")
            {
                Response.Redirect("AdminAddRecipe.aspx?id=" + e.CommandArgument + "/edit");
            }
        }
    }
}