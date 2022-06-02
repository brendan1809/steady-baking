using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;

namespace Steady_Baking
{
    public partial class ProfilePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                con.Open();

                SqlCommand cmd = new SqlCommand("SELECT * FROM UserInfo WHERE Id =" + Session["Id"], con);
                var reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    usernameBox.Text = reader["user_name"].ToString();
                    emailBox.Text = reader["email"].ToString();
                    phoneNoBox.Text = reader["phone_number"].ToString();
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            string query1 = "UPDATE UserInfo SET user_name=@userName, email=@email, phone_number=@phoneNumber WHERE Id=" + Session["Id"];
            SqlCommand cmd1 = new SqlCommand(query1, con);
            cmd1.Parameters.AddWithValue("@userName", usernameBox.Text);
            cmd1.Parameters.AddWithValue("@email", emailBox.Text);
            cmd1.Parameters.AddWithValue("@phoneNumber", phoneNoBox.Text);

            
            cmd1.ExecuteNonQuery();
            Message.Text = "Update Succesfully!!";
        }
    }
}