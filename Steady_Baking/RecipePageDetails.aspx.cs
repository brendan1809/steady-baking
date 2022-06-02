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
    public partial class RecipePageDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string id = Request.QueryString["id"];
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                con.Open();

                SqlCommand cmd = new SqlCommand("SELECT * FROM Recipe WHERE Id =" + id, con);
                var reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    HeaderTitle.Text = reader["title"].ToString();
                    Image1.ImageUrl = reader["image"].ToString();
                    Recipe.Text = reader["recipe_details"].ToString();
                    Details.Text = reader["instruction"].ToString();
                }
            }
        }
    }
}