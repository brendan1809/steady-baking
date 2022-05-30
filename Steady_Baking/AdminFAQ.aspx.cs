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
    public partial class AdminFAQ1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            SqlCommand total = new SqlCommand("SELECT COUNT (*) FROM FAQ", con);

            object totalFAQ = total.ExecuteScalar();

            TotalFAQ.Text = "Total FAQ:" + Convert.ToString(totalFAQ);
        }

        protected void AddFAQ_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminAddFAQ.aspx");
        }

        protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName.ToString() == "Del")
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                con.Open();
                SqlCommand cmd1 = new SqlCommand("DELETE FROM FAQ WHERE Id =" + e.CommandArgument, con);
                cmd1.ExecuteNonQuery();
            }
            if (e.CommandName.ToString() == "EditFAQ")
            {
                Response.Redirect("AdminAddFAQ.aspx?id=" + e.CommandArgument + "/edit");
            }

        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}