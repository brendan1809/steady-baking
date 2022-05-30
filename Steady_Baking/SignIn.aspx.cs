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
    public partial class SignIn1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            SqlCommand cmd = new SqlCommand("select count(*) from UserInfo where email = '" + emailBox.Text
                              + "' and password_hash = '" + pwdBox.Text + "'", con);
            int count = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            Response.Write(count.ToString());

            if (count > 0)
            {
                SqlCommand cmdType = new SqlCommand("select user_type from UserInfo where email = '" + emailBox.Text + "'", con);
                SqlCommand getId = new SqlCommand("select Id from UserInfo where email = '" + emailBox.Text + "'", con);
                string type = cmdType.ExecuteScalar().ToString().Replace(" ", "");
                string id = getId.ExecuteScalar().ToString().Replace(" ", "");
                string email = emailBox.Text;
                Session["user_type"] = type;
                Session["email"] = email;
                Session["Id"] = id;
                if (type == "Admin")
                    Response.Redirect("AdminDashbard.aspx");
                else if (type == "Users")
                    Response.Redirect("HomePage1.aspx");
            }
            else
            {
                this.Label8.Visible = true;
                this.Label8.ForeColor = System.Drawing.Color.Red;
                return;
            }
            con.Close();
        }
    }
}