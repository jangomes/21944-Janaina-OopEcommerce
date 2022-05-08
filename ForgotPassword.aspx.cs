//21944 Janaina Gomes da Silva
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Net.Mail;
using System.Net;

public partial class ForgotPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnResetPass_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyEcommerceDB"].ConnectionString))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from tblUsers where Email=@Email", con);
            cmd.Parameters.AddWithValue("@Email", txtEmailID.Text);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if(dt.Rows.Count != 0)
            {
                String myGUID = Guid.NewGuid().ToString();
                int Uid = Convert.ToInt32(dt.Rows[0][0]);

                SqlCommand cmd1 = new SqlCommand("Insert into ForgotPass(Id,Uid,RequestDateTime) values ('" + myGUID + "','" + Uid + "',GETDATE())", con);
                cmd1.ExecuteNonQuery();

                String ToEmailAddress = dt.Rows[0][2].ToString();
                String Username = dt.Rows[0][1].ToString();
                String EmailBody = "Hello, " + Username + ", <br/><br/>Click the link below to reset your password<br/> <br/>http://localhost:1288/RecorPassword.aspx?id=" + myGUID;
            
                
                MailMessage PassRecMail = new MailMessage("janaina@gmail.com",ToEmailAddress);
                PassRecMail.Body = EmailBody;
                PassRecMail.IsBodyHtml = true;
                PassRecMail.Subject = "Reset Password";

                using (SmtpClient cliente = new SmtpClient())
                {
                    cliente.EnableSsl = true;
                    cliente.UseDefaultCredentials = false;
                    cliente.Credentials = new NetworkCredential("janaina@gmail.com", "12345");
                    cliente.Host = "smtp.gmail.com";
                    cliente.Port = 587;
                    cliente.DeliveryMethod = SmtpDeliveryMethod.Network;

                    cliente.Send(PassRecMail);
                }

                lblResetPassMsg.Text = "A reset link was sent to your email";
                lblResetPassMsg.ForeColor = System.Drawing.Color.Green;
                txtEmailID.Text = string.Empty;
            }
            else
            {
                lblResetPassMsg.Text = "This email does not exist";
                lblResetPassMsg.ForeColor = System.Drawing.Color.Red;
                txtEmailID.Text = string.Empty;
                txtEmailID.Focus();
            }
        }
       
    }
}