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
    public partial class registrationPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            string query1 = "INSERT INTO UserInfo (user_name, email, phone_number, password_hash) values (@userName, @email, @phoneNumber, @password)";
            SqlCommand cmd1 = new SqlCommand(query1, con);
            cmd1.Parameters.AddWithValue("@userName", name.Text);
            cmd1.Parameters.AddWithValue("@email", email.Text);
            cmd1.Parameters.AddWithValue("@phoneNumber", phoneNo.Text);
            cmd1.Parameters.AddWithValue("@password", confirmPwd.Text);

            cmd1.ExecuteNonQuery();
            Response.Redirect("ProfilePage.aspx");
        }
    }
}