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

            string query1 = "INSERT INTO UserInfo (user_name,user_type, email, phone_number, password_hash,created_at,updated_at) values (@userName,@userType, @email, @phoneNumber, @password,@created,@updated)";
            SqlCommand cmd1 = new SqlCommand(query1, con);
            cmd1.Parameters.AddWithValue("@userName", name.Text);
            cmd1.Parameters.AddWithValue("@userType", "Users");
            cmd1.Parameters.AddWithValue("@email", email.Text);
            cmd1.Parameters.AddWithValue("@phoneNumber", phoneNo.Text);
            cmd1.Parameters.AddWithValue("@password", confirmPwd.Text);
            cmd1.Parameters.AddWithValue("@created", DateTime.Now.ToString());
            cmd1.Parameters.AddWithValue("@updated", DateTime.Now.ToString());

            cmd1.ExecuteNonQuery();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Inserted Successfully')", true);
            Response.Redirect("SignIn.aspx");
        }
    }
}