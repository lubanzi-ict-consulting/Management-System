using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Runtime.InteropServices.ComTypes;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.ComponentModel;
using System.Threading.Tasks;
using System.Windows;
using System.Windows;

namespace Management_System
{
    public partial class Employee : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(localdb)\\mssqllocaldb;Initial Catalog=Assessment;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string connectionString = "Data Source=(localdb)\\mssqllocaldb;Initial Catalog=Assessment;Integrated Security=True";
                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("SELECT  Id,ProjectName FROM CreateProject", con);
                    SqlDataReader reader = cmd.ExecuteReader();
                    Roles.DataSource = reader;
                    Roles.DataTextField = "ProjectName";

                    Roles.DataValueField = "Id";
                    Roles.DataBind();
                    reader.Close();
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            /*INSERT DATA INTO THE DATABASE*/
            string conn = "insert into CreateEmployee ([CreateEmployee], [Role]) values ('" + txtCreateEmployee.Text + "','" + Roles.Text + "')";

            /*SqlCommand allow the user to query and send the command to the database*/
            SqlCommand cmd = new SqlCommand(conn, con);
            con.Open();

            /*ExecuteNonQuery for insert, update, and delete commands. it is the method that is best for the different commands*/
            cmd.ExecuteNonQuery();

            /*Once the operation is completed successfully, then close the connection to the databasez*/
            con.Close();
            Label3.Text = "Created Succesfully!";
            //MessageBox.Show("Successfully created");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Dashb.aspx");
        }
    }
}