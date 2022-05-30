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
            Label5.Text = Session["Id"].ToString();
            emailBox.Text = Session["email"].ToString();
            phoneNoBox.Text = Session["phone_number"].ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}