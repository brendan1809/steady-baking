using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Steady_Baking
{
    public partial class ProfilePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label5.Text = Session["Id"].ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}