using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Management_System
{
    public partial class Registration : System.Web.UI.Page
    {
        /*set connection string, 
        create the connection to the SQL server database
       The connection string needs needs to be specified correctly for C# to understand the connection string
       Data source - this is the name of the server on which the database resides,
       The Initial Catalog is used to specify the name of the database*/
        SqlConnection con = new SqlConnection("Data Source=(localdb)\\mssqllocaldb;Initial Catalog=Register;Integrated Security=True;");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            /*INSERT DATA INTO THE DATABASE*/
            string conn = "insert into Registration ([Fname], [Lname], [EmailAddress], [Gender],[PhoneNumber], [Password]) values ('" + txtFname.Text + "','" + txtLname.Text + "', '" + txtEmail.Text + "', '" + Gender.Text + "', '" + txtPhone.Text + "' , '" + txtPassword.Text + "' )";

            /*SqlCommand allow the user to query and send the command to the database*/
            SqlCommand cmd = new SqlCommand(conn, con);
            con.Open();

            /*ExecuteNonQuery for insert, update, and delete commands. it is the method that is best for the different commands*/
            cmd.ExecuteNonQuery();

            /*Once the operation is completed successfully, then close the connection to the database*/
            con.Close();
            lblMessage.Text = "Registered Succesfully!";

        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
    }