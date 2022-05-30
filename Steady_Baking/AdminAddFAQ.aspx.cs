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
    public partial class AdminFAQ : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AddFAQ_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            string query1 = "INSERT INTO FAQ (question,answer, created_at, updated_at) values (@question, @answer, @created, @created)";
            SqlCommand cmd1 = new SqlCommand(query1, con);
            cmd1.Parameters.AddWithValue("@question", Question.Text);
            cmd1.Parameters.AddWithValue("@answer", Answer.Text);
            cmd1.Parameters.AddWithValue("@created", DateTime.Now.ToString());
            cmd1.Parameters.AddWithValue("@updated", DateTime.Now.ToString());

            cmd1.ExecuteNonQuery();
            Response.Redirect("AdminFAQ.aspx");
        }
    }
}