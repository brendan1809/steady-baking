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
    public partial class ContactUsPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Image1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("FeedbackPage.aspx");
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            SqlCommand cmd = new SqlCommand("SELECT email FROM Miscellaneous WHERE Id = 1", con);
            var reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                Response.Redirect("mailto:" + reader["email"].ToString());
            }
            
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            SqlCommand cmd = new SqlCommand("SELECT facebook_url FROM Miscellaneous WHERE Id = 1", con);
            var reader = cmd.ExecuteReader();
            if (reader.Read())
            {

                System.Diagnostics.Process.Start("https://" + reader["facebook_url"].ToString());
            }
        }
        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            SqlCommand cmd = new SqlCommand("SELECT instagram_url FROM Miscellaneous WHERE Id = 1", con);
            var reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                System.Diagnostics.Process.Start("https://"+reader["instagram_url"].ToString());
            }
        }

    }
}