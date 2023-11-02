using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;

namespace Management_System
{
    public partial class Dashb : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(localdb)\\mssqllocaldb;Initial Catalog=Assessment;Integrated Security=True;");
        //string connectionstring = @"Data Source=(localdb)\\mssqllocaldb;Initial Catalog=CreateProject;Integrated Security=True;";
        //protected void Page_Load(object sender, EventArgs e)
        //{
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
            //using (SqlConnection con = new SqlConnection(connectionstring))
            //{
            //    con.Open();
            //    SqlDataAdapter sqlDataAdapter = new SqlDataAdapter("select * from CreateProject", con);
            //    DataTable dt = new DataTable();
            //    sqlDataAdapter.Fill(dt);
            //    GridView1.DataSource = dt;
            //    GridView1.DataBind();
            //}

            //SqlCommand cmd = new SqlCommand("SELECT * FROM ProjectName", con);
            //SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            //DataTable dt = new DataTable();
            //adapter.Fill(dt);
            //GridView1.DataSource = dt;
            //GridView1.DataBind();
        //}

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM ProjectName", con);
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            //adapter.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        //protected void lnkSelect_Click(object sender, EventArgs e)
        //{
        //    int CreateProject = Convert.ToInt32((sender as LinkButton).CommandArgument);
        //}
    }
}