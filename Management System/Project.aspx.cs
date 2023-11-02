using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Text;
using System.Windows;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.Expressions;

namespace Management_System
{
    public partial class Project : System.Web.UI.Page
    {
        //public Project()
        //{
        //    InitializeCulture();
        //}
        SqlConnection con = new SqlConnection("Data Source=(localdb)\\mssqllocaldb;Initial Catalog=Assessment;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            //SqlDataAdapter sda = new SqlDataAdapter("select * from ProjectName where StartDate between '" + DateTime.MinValue.ToString() + "' and '" + DateTime.MaxValue.ToString() + "'", con);
            //DataTable dataTable = new DataTable();
            //sda.Fill(dataTable);
            //GridView1.DataSource = dataTable;
            //Label1.Text = "Registered Succesfully!";

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            /*INSERT DATA INTO THE DATABASE*/
            string conn = "insert into CreateProject ([ProjectName], [StartDate], [EndDate], [ClientName]) values ('" + txtProjectName.Text + "','" + StartDate.Text + "', '" + endDate.Text + "', '" + txtClientName.Text + "')";

            /*SqlCommand allow the user to query and send the command to the database*/
            SqlCommand cmd = new SqlCommand(conn, con);
            con.Open();

            /*ExecuteNonQuery for insert, update, and delete commands. it is the method that is best for the different commands*/
            cmd.ExecuteNonQuery();

            /*Once the operation is completed successfully, then close the connection to the databasez*/
            con.Close();
            //Label2.Text = "Succesfully created!";
            //MessageBox.Show("Successfully created");

            Response.Write("<script>alert('Project successfully created')</script>");
            //Response.Redirect("Dashb.aspx");
        }
        

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Dashb.aspx");
        }
    }
}