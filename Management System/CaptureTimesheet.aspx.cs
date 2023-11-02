using Microsoft.Build.Framework.XamlTypes;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Management_System
{
    public partial class Capture_Timesheet : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(localdb)\\mssqllocaldb;Initial Catalog=Assessment;Integrated Security=True");
        //SqlDataAdapter da;
        //DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {

            //filldrop();
            //filldrop2();
            //filldrop3();
            //filldrop4();

            if (!IsPostBack)
            {
                string connectionString = "Data Source=(localdb)\\mssqllocaldb;Initial Catalog=Assessment;Integrated Security=True";
                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("SELECT  Id,ProjectName FROM CreateProject", con);
                    SqlDataReader reader = cmd.ExecuteReader();
                    txtProjectName.DataSource = reader;
                    txtProjectName.DataTextField = "ProjectName";

                    txtProjectName.DataValueField = "Id";
                    txtProjectName.DataBind();
                    reader.Close();
                }
                
                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("SELECT  Id,ClientName FROM CreateProject", con);
                    SqlDataReader reader = cmd.ExecuteReader();
                    txtEmployee.DataSource = reader;
                    txtEmployee.DataTextField = "ClientName";

                    txtEmployee.DataValueField = "Id";
                    txtEmployee.DataBind();
                    reader.Close();
                }

            }
        }
        //protected void filldrop()
        //{
        //    txtProjectName.DataSource = getuserdata();
        //    txtProjectName.DataTextField = "Project_Name";
        //    txtProjectName.DataValueField = "Id";
        //    txtProjectName.DataBind();
        //    txtProjectName.Items.Insert(0, new ListItem("--Select Project--", "0"));
        //} 
        //protected void filldrop2()
        //{

        //} protected void filldrop3()
        //{

        //} protected void filldrop4()
        //{

        //}

        protected void Button1_Click(object sender, EventArgs e)
        {
            /*INSERT DATA INTO THE DATABASE*/
            //string conn = "Select count(*) from ProjectName where (ProjectName], [Employee], [StartDate], [EndDate]) values ('" + txtProjectName.Text + "','" + txtEmployee.Text + "', '" + txtStartDate.Text + "', '" + txtEndDate.Text + "')";
            string conn = "select * from ProjectName where ProjectName ='" + txtProjectName.Text + "'", Employee = "'" + txtEmployee.Text + "'", StartDate = "'" + txtStartDate.Text + "', EndDate = '" + txtEndDate.Text + "'";

            /*SqlCommand allow the user to query and send the command to the database*/
            SqlCommand cmd = new SqlCommand(conn, con);
            con.Open();
            int count = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            /*ExecuteNonQuery for insert, update, and delete commands. it is the method that is best for the different commands*/
            cmd.ExecuteNonQuery();

            /*Once the operation is completed successfully, then close the connection to the database*/
            con.Close();
        }

        protected void txtProjectName_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                
                //Establish a database connection
                string connectionString = "YourConnectionString";
                using(SqlConnection con = new SqlConnection(connectionString)) { 
                    con.Open();
                    //Create a sql command
                    SqlCommand cmd = new SqlCommand("Select ProjectName, Employee, StarDate, EndDate FROM CreateProject, CreateEmployee", con);
                    //Execute the command and get a datareader
                    SqlDataReader reader = cmd.ExecuteReader();
                    //Bind the Data to the DropDownList
                    txtProjectName.DataSource = reader;
                    txtProjectName.DataTextField = "ProjectName"; //Display text
                    //txtProjectName.DataTextField = "Employee"; //Display text
                    //txtProjectName.DataTextField = "StartDate"; //Display text
                    //txtProjectName.DataTextField = "EndDate"; //Display text
                   // txtProjectName.DataValueField = "Name"; //Value
                   txtProjectName.DataBind();
                    //close the DataRaeder and Connection
                    reader.Close();
                    con.Close();
                }
            }
        }
    }
}