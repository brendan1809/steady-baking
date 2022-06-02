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

// For Image Upload
using System.IO;

namespace Steady_Baking
{
    public partial class AdminAddRecipe : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack) { 
                if (Request.Url.AbsoluteUri.Contains("edit"))
                {
                    string id = Request.QueryString["id"].Replace("/edit", @"");
                    TitleText.Text = "Edit Recipe";
                    DesciptionText.Text = "Edit Recipe";
                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                    con.Open();

                    SqlCommand cmd = new SqlCommand("SELECT* FROM Recipe WHERE Id = @ID", con);
                    cmd.Parameters.AddWithValue("@ID", id);
                    var reader = cmd.ExecuteReader();
                    if (reader.Read())
                    {
                        PageTitle.Text = reader["title"].ToString();
                        Author.Text = reader["author"].ToString();
                        Image1.ImageUrl = reader["image"].ToString();
                        Instructions.Text = reader["instruction"].ToString();
                        IngredientsTools.Text = reader["recipe_details"].ToString();
                        TotalTime.Text = reader["total_time"].ToString();
                        Serving.Text = reader["serving"].ToString();
                    }


                }
                else
                {
                    TitleText.Text = "Add New Recipe";
                    DesciptionText.Text = "Add Recipe";
                }
        } }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {

                if (Request.Url.AbsoluteUri.Contains("edit"))

                {
                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                    con.Open();

                    string id = Request.QueryString["id"].Replace("/edit", @"");
                    string query1 = "UPDATE Recipe SET title=@title, author=@author, image=@image, instruction=@instruction, recipe_details=@recipeDetails, updated_at=@updated, total_time=@TotalTime, serving=@serving WHERE Id=@ID";
                    SqlCommand cmd1 = new SqlCommand(query1, con);
                    cmd1.Parameters.AddWithValue("@title", PageTitle.Text);
                    cmd1.Parameters.AddWithValue("@author", Author.Text);
                    cmd1.Parameters.AddWithValue("@image", Image1.ImageUrl);
                    cmd1.Parameters.AddWithValue("@instruction", Instructions.Text);
                    cmd1.Parameters.AddWithValue("@recipeDetails", IngredientsTools.Text);
                    cmd1.Parameters.AddWithValue("@updated", DateTime.Now.ToString());
                    cmd1.Parameters.AddWithValue("@totalTime", TotalTime.Text);
                    cmd1.Parameters.AddWithValue("@serving", Serving.Text);
                    cmd1.Parameters.AddWithValue("@ID", id);
                    cmd1.ExecuteNonQuery();

                    Response.Redirect("AdminRecipe.aspx");
                }
                else
                {
                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                    con.Open();

                    string query1 = "INSERT INTO Recipe (title, author, image, instruction, recipe_details, created_at, updated_at,total_time,serving) values (@title, @author, @image, @instruction, @recipeDetails, @created, @created,@totalTime,@serving)";
                    SqlCommand cmd1 = new SqlCommand(query1, con);
                    cmd1.Parameters.AddWithValue("@title", PageTitle.Text);
                    cmd1.Parameters.AddWithValue("@author", Author.Text);
                    cmd1.Parameters.AddWithValue("@image", Image1.ImageUrl);
                    cmd1.Parameters.AddWithValue("@instruction", Instructions.Text);
                    cmd1.Parameters.AddWithValue("@recipeDetails", IngredientsTools.Text);
                    cmd1.Parameters.AddWithValue("@created", DateTime.Now.ToString());
                    cmd1.Parameters.AddWithValue("@updated", DateTime.Now.ToString());
                    cmd1.Parameters.AddWithValue("@totalTime", TotalTime.Text);
                    cmd1.Parameters.AddWithValue("@serving", Serving.Text);

                    cmd1.ExecuteNonQuery();
                    Response.Redirect("AdminRecipe.aspx");
                }
            }

        }


        protected void UploadFile(object sender, EventArgs e)
        {
            string folderPath = Server.MapPath("~/Images/");

            //Check whether Directory (Folder) exists.
            if (!Directory.Exists(folderPath))
            {
                //If Directory (Folder) does not exists Create it.
                Directory.CreateDirectory(folderPath);
            }

            //Save the File to the Directory (Folder).
            FileUpload1.SaveAs(folderPath + Path.GetFileName(FileUpload1.FileName));

            //Display the Picture in Image control.
            Image1.ImageUrl = "~/Images/" + Path.GetFileName(FileUpload1.FileName);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }
    }
}