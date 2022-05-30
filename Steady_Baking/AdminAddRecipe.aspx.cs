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
    public partial class AdminAddRecipe : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            string query1 = "INSERT INTO Recipe (title, author, image, insruction, recipe_details, created_at, updated_at) values (@title, @author, @image, @instruction, @recipeDetails, @created, @created)";
            SqlCommand cmd1 = new SqlCommand(query1, con);
            cmd1.Parameters.AddWithValue("@title", PageTitle.Text);
            cmd1.Parameters.AddWithValue("@author", Author.Text);
            cmd1.Parameters.AddWithValue("@instruction", Instructions.Text);
            cmd1.Parameters.AddWithValue("@recipeDetails", IngredientsTools.Text);
            cmd1.Parameters.AddWithValue("@created", DateTime.Now.ToString());
            cmd1.Parameters.AddWithValue("@updated", DateTime.Now.ToString());

            cmd1.ExecuteNonQuery();
            Response.Redirect("AdminRecipe.aspx");

        }


        protected void UploadFile(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }
    }
}