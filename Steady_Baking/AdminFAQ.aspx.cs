using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Steady_Baking
{
    public partial class AdminFAQ1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AddFAQ_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminAddFAQ.aspx");
        }
    }
}