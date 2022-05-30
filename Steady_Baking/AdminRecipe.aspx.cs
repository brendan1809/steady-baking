using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Steady_Baking
{
    public partial class AdminRecipe : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AddRecipe_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminAddRecipe.aspx");
        }
    }
}