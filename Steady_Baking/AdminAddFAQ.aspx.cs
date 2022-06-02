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
    public partial class AdminFAQ : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Request.Url.AbsoluteUri.Contains("edit"))
                {
                    string id = Request.QueryString["id"].Replace("/edit", @"");
                    TitleText.Text = "Edit FAQ";
                    DesciptionText.Text = "Edit FAQ";
                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                    con.Open();

                    SqlCommand cmd = new SqlCommand("SELECT * FROM FAQ WHERE Id = @ID", con);
                    cmd.Parameters.AddWithValue("@ID", id);
                    var reader = cmd.ExecuteReader();
                    if (reader.Read())
                    {
                        Answer.Text = reader["answer"].ToString();
                        Question.Text = reader["question"].ToString();
                    }
                }
                else
                {
                    TitleText.Text = "Add New FAQ";
                    DesciptionText.Text = "Add New FAQ";
                }
            }
        }

        protected void AddFAQ_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                con.Open();

                if (Request.Url.AbsoluteUri.Contains("edit"))
                {
                    string id = Request.QueryString["id"].Replace("/edit", @"");
                    string query1 = "UPDATE FAQ SET question=@question, answer=@answer, updated_at=@update WHERE Id=@ID";
                    SqlCommand cmd1 = new SqlCommand(query1, con);
                    cmd1.Parameters.AddWithValue("@question", Question.Text);
                    cmd1.Parameters.AddWithValue("@answer", Answer.Text);
                    cmd1.Parameters.AddWithValue("@updated", DateTime.Now.ToString());
                    cmd1.Parameters.AddWithValue("@ID", id);

                    cmd1.ExecuteNonQuery();
                    Response.Redirect("AdminFAQ.aspx");
                }
                else
                {

                    string query1 = "INSERT INTO FAQ (question,answer, created_at, updated_at) values (@question, @answer, @created, @created)";
                    SqlCommand cmd1 = new SqlCommand(query1, con);
                    cmd1.Parameters.AddWithValue("@question", Question.Text);
                    cmd1.Parameters.AddWithValue("@answer", Answer.Text);
                    cmd1.Parameters.AddWithValue("@created", DateTime.Now.ToString());
                    cmd1.Parameters.AddWithValue("@updated", DateTime.Now.ToString());

                    cmd1.ExecuteNonQuery();
                    Response.Redirect("AdminFAQ.aspx");
                }
            }
        }
    }
}