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
    public partial class AdminAddUser1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Url.AbsoluteUri.Contains("edit"))
            {
                string id = Request.QueryString["id"].Replace("/edit", @"");
                TitleText.Text = "Edit User";
                DesciptionText.Text = "Edit User";
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                con.Open();

                SqlCommand cmd = new SqlCommand("SELECT* FROM UserInfo WHERE Id = @ID",con);
                cmd.Parameters.AddWithValue("@ID", id);
                var reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    Name.Text = reader["user_name"].ToString();
                    Email.Text = reader["email"].ToString();
                    Password.Text = reader["password_hash"].ToString();
                    ConfirmPassword.Text = reader["password_hash"].ToString();
                    PhoneNumber.Text = reader["phone_number"].ToString();
                    DropDownList1.SelectedValue = reader["user_type"].ToString();
                }


            } else
            {
                TitleText.Text = "Add New User";
                DesciptionText.Text = "Add New User";
            }
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            if (Request.Url.AbsoluteUri.Contains("edit"))
            {

                string id = Request.QueryString["id"].Replace("/edit", @"");
                string query1 = "UPDATE UserInfo SET user_name=@username, user_type=@userType, email=@email, phone_number=@phoneNumber, password_hash=@password,updated_at=@updated WHERE Id=@ID";
                SqlCommand cmd1 = new SqlCommand(query1, con);
                cmd1.Parameters.AddWithValue("@userName", Name.Text);
                cmd1.Parameters.AddWithValue("@userType", DropDownList1.SelectedItem.ToString());
                cmd1.Parameters.AddWithValue("@email", Email.Text);
                cmd1.Parameters.AddWithValue("@phoneNumber", PhoneNumber.Text);
                cmd1.Parameters.AddWithValue("@password", ConfirmPassword.Text);
                cmd1.Parameters.AddWithValue("@updated", DateTime.Now.ToString());
                cmd1.Parameters.AddWithValue("@ID", id);
                cmd1.ExecuteNonQuery();
                Response.Redirect("AdminUser.aspx");
            }
            else
            {
                string query2 = "INSERT INTO UserInfo (user_name, user_type, email, phone_number, password_hash, created_at, updated_at) values (@userName, @userType, @email, @phoneNumber, @password, @created, @updated)";
                SqlCommand cmd2 = new SqlCommand(query2, con);
                cmd2.Parameters.AddWithValue("@userName", Name.Text);
                cmd2.Parameters.AddWithValue("@userType", DropDownList1.SelectedItem.ToString());
                cmd2.Parameters.AddWithValue("@email", Email.Text);
                cmd2.Parameters.AddWithValue("@phoneNumber", PhoneNumber.Text);
                cmd2.Parameters.AddWithValue("@password", ConfirmPassword.Text);
                cmd2.Parameters.AddWithValue("@created", DateTime.Now.ToString());
                cmd2.Parameters.AddWithValue("@updated", DateTime.Now.ToString());

                cmd2.ExecuteNonQuery();
                Response.Redirect("AdminUser.aspx");
            }
        }
    }
}