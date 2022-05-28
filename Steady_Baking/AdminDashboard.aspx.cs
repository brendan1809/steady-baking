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
    public partial class AdminDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            SqlCommand daily = new SqlCommand("SELECT COUNT (*) FROM UserInfo WHERE CONVERT (DATE, createdAt) = CONVERT (DATE, GETDATE())");
            SqlCommand weekly = new SqlCommand("SELECT COUNT (*) FROM UserInfo WHERE CONVERT (DATE, createdAt) >= DATEADD(DAY, -7, GETDATE())");

            daily.Connection = con;
            weekly.Connection = con;

            object dailyUser = daily.ExecuteScalar();
            object weeklyUser = weekly.ExecuteScalar();

            DailyUser.Text = Convert.ToString(dailyUser);
            WeeklyUser.Text = Convert.ToString(weeklyUser);
        }
    }
}