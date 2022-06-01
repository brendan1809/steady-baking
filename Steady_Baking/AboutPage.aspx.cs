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
    public partial class AboutPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            SqlCommand aboutUs = new SqlCommand("SELECT about_us FROM Miscellaneous WHERE Id=1",con);
 
            var reader = aboutUs.ExecuteReader();
            if (reader.Read())
            {
                Label1.Text = reader["about_us"].ToString();
            }
        }
    }
}