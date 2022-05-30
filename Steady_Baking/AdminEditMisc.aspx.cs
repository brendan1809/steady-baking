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
    public partial class AdminMisc : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            SqlCommand cmd = new SqlCommand("SELECT * FROM Miscellaneous WHERE Id = 1", con);
            var reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                AboutUs.Text = reader["about_us"].ToString();
                Email.Text = reader["email"].ToString();
                FbName.Text = reader["facebook_name"].ToString();
                FbURL.Text = reader["facebook_url"].ToString();
                InstaName.Text = reader["instagram_name"].ToString();
                InstaURL.Text = reader["instagram_url"].ToString();
            }
        }

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            string query1 = "UPDATE Miscellaneous SET email=@email, facebook_name=@fbName, facebook_url=@fb_url, instagram_name=@insta_name, instagram_url=@insta_url WHERE Id=1";
            SqlCommand cmd1 = new SqlCommand(query1, con);

            cmd1.Parameters.AddWithValue("@email", Email.Text);
            cmd1.Parameters.AddWithValue("@fbName", FbName.Text);
            cmd1.Parameters.AddWithValue("@fb_url", FbURL.Text);
            cmd1.Parameters.AddWithValue("@insta_name", InstaName.Text);
            cmd1.Parameters.AddWithValue("@insta_url", InstaURL.Text);
            ContactUsLabel.Text = "Update Success";
            cmd1.ExecuteNonQuery();
        }

        protected void SaveChanges0_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            string query1 = "UPDATE Miscellaneous SET about_us=@aboutUs WHERE Id=1";
            SqlCommand cmd1 = new SqlCommand(query1, con);

            cmd1.Parameters.AddWithValue("@aboutUs", AboutUs.Text);
            AboutUsLabel.Text = "Update Success";
            cmd1.ExecuteNonQuery();
        }
    }
}