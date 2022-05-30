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
            //  SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            //con.Open();
            //SqlCommand user = new SqlCommand("SELECT * FROM UserInfo", con);
            //SqlDataAdapter sda = new SqlDataAdapter(user);
            //DataTable dt = new DataTable();

            //sda.Fill(dt);
            //GridView1.DataSource = dt;
            //GridView1.DataBind();
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
    }
}