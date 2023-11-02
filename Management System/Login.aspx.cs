using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Management_System
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(localdb)\\mssqllocaldb;Initial Catalog=Register;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            /*SELECT DATA FROM THE DATABASE*/
            string query = "select count(*) from Registration where EmailAddress ='" + txtEmail.Text + "' and Password = '" + txtPassword.Text + "'";

            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            int count = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            con.Close();
            if (count > 0)
            {
                Session["@Email"] = txtEmail.Text.Trim();
                Response.Redirect("Dashb.aspx");

            }
            else
            {

                //txtErrorMessage.Text = "Incorrect user credentials!";
                Response.Write("<script>alert('Incorrect credentials')</script>");
            }
        }
    }
}