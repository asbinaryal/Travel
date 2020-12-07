using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;
using System.Net;

namespace tour
{
    public partial class forgotpass : System.Web.UI.Page
    {
        string Connection = "Data Source = localhost\\SQLEXPRESS; Initial Catalog=tour; Integrated Security=True; ";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnResetPass_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(Connection);
            con.Open();
            string query = ("select * FROM users WHERE Email='"+txtEmailId.Text+"'");
            SqlCommand cmd = new SqlCommand(query, con);


            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adp.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                String myGuid = Guid.NewGuid().ToString();
                int uid = Convert.ToInt32(dt.Rows[0][0]);
                string query1 = ("Insert into ForgetPass(Id,uid,RequestDateTime) values ('" + myGuid + "','" + uid + "',GETDATE())");
                SqlCommand cmd1 = new SqlCommand(query1, con);
                cmd1.ExecuteNonQuery();

                // send email address via email
                string ToEmailAddress = dt.Rows[0][3].ToString();
                string username = dt.Rows[0][1].ToString();
                string EmailBody = "Hi, " + username + ",<br/><br/> Click the link below to reset your password <br/> <br/> https://localhost:44397/RecoverPassword.aspx?uid=" + myGuid;

                MailMessage PassRecMail = new MailMessage("asbinaryal1@gmail.com", ToEmailAddress);

                PassRecMail.Body = EmailBody;
                PassRecMail.IsBodyHtml = true;
                PassRecMail.Subject = "Password Recovery";

                using (SmtpClient client=new SmtpClient())
                {
                    client.EnableSsl = true;
                    client.UseDefaultCredentials = false;
                    client.Credentials = new NetworkCredential("asbinaryal1@gmail.com", "12aeroplane12");
                    client.Host = "smtp.gmail.com";
                    client.Port = 587;
                    client.DeliveryMethod = SmtpDeliveryMethod.Network;
                    client.Send(PassRecMail);

                }


                //SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
                //smtp.Credentials = new NetworkCredential()
                //{
                //    UserName = "asbinaryal1@gmail.com",
                //Password ="12aeroplane12"
                //};
                //smtp.EnableSsl = true;
                //smtp.Send(PassRecMail);

                //


                lblResetPassMsg.Text = "Reset link sent! Please check your email for password recovery";
                lblResetPassMsg.ForeColor = System.Drawing.Color.Green;
                txtEmailId.Text = string.Empty;

            }
            else
            {
                lblResetPassMsg.Text = "Email address doesnot exist!!";
                lblResetPassMsg.ForeColor = System.Drawing.Color.Red;
                txtEmailId.Focus();
            }
        }
    }
}