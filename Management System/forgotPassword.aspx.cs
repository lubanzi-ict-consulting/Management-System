using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace Management_System
{
    public partial class forgotPassword : System.Web.UI.Page
    {
        //Check if email exists in database
        //SqlConnection con = new SqlConnection("Data Source=(localdb)\\mssqllocaldb;Initial Catalog=Register;Integrated Security=True;");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string userEmail = txtEmail.Text;

            //generate OTP or token
            string otp = GenerateOTP();

            //store the otp and email in the database with an expiration time
            StoreOTPInAssessment(userEmail, otp);

            //send the otp or the reset link
            SendOTPEmail(userEmail, otp);

            lblStatus.Text = "An email with a reset link/otp has been sent to your registered email address.";

            private string GenerateOTP()
            {
                Random rnd = new Random();
                return rnd.Next(100000, 999999).ToString();
            } } } }

            //Check if email exists in database
            //string connectionString = "your_connection_string_here";
            //using (SqlConnection conn = new SqlConnection(connectionString)
            
            //    SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM Registration WHERE EmailAddress=@Email", con);
            //    cmd.Parameters.AddWithValue("@Email", userEmail);
            //    con.Open();
            //    int count = (int)cmd.ExecuteScalar();
            //    if (count == 0)
            //    {
            //        lblStatus.Text = "Email not found!";
            //        return;
            //    }
            //    //Generate a unique code
            //    string uniqueCode = Guid.NewGuid().ToString().Substring(0, 8);

            //    //Save the unique code to the database for verification later (you can add expiration logic if you want)
            //    cmd = new SqlCommand("UPDATE Registration SET ResetCode=@ResetCode WHERE EmailAddress=@Email", con);
            //    cmd.Parameters.AddWithValue("@ResetCode", uniqueCode);
            //    cmd.Parameters.AddWithValue("@Email", userEmail);
            //    //cmd.ExecuteNonQuery();

            //    //Send the unique code to the user's email (consider using a library like SendGrid or SMTP)
            //    //This is a very basic example, you should handle sending emailin a secure and scalable way.

            //    lblStatus.Text = "A reset code has been sent to your email!";
            //}
    //    }
    //}
