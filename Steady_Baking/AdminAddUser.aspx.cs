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

        }

        protected void AddUser_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            string query1 = "INSERT INTO UserInfo (user_name, user_type, email, phone_number, password_hash, created_at, updated_at) values (@userName, @userType, @email, @phoneNumber, @password, @created, @created)";
            SqlCommand cmd1 = new SqlCommand(query1, con);
            cmd1.Parameters.AddWithValue("@userName", Name.Text);
            cmd1.Parameters.AddWithValue("@userType", DropDownList1.SelectedItem.ToString());
            cmd1.Parameters.AddWithValue("@email", Email.Text);
            cmd1.Parameters.AddWithValue("@phoneNumber", PhoneNumber.Text);
            cmd1.Parameters.AddWithValue("@password", ConfirmPassword.Text);
            cmd1.Parameters.AddWithValue("@created", DateTime.Now.ToString());
            cmd1.Parameters.AddWithValue("@updated", DateTime.Now.ToString());

            cmd1.ExecuteNonQuery();
            Response.Redirect("AdminUser.aspx");
        }
    }
}