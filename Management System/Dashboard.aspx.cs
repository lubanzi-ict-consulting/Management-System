using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Management_System
{
    public partial class Dashboard : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(localdb)\\mssqllocaldb;Initial Catalog=CreateProject;Integrated Security=True;");
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void HyperLink1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Reload");
        }
        protected void HyperLink2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Project.aspx");
        }
        protected void HyperLink3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Employee.aspx");
        }
        protected void HyperLink4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Capture Timesheet.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM ProjectName",con);
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}