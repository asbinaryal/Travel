using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace tour
{
    public partial class RecoverPassword : System.Web.UI.Page
    {

        String GUIDvalue;
        int uid;
        DataTable dt = new DataTable();
        string Connection = "Data Source = localhost\\SQLEXPRESS; Initial Catalog=tour; Integrated Security=True; ";

        protected void Page_Load(object sender, EventArgs e)
        {

            GUIDvalue = Request.QueryString["uid"];
            if (GUIDvalue != null)
            {
                SqlConnection con = new SqlConnection(Connection);

                con.Open();
                SqlCommand cmd = new SqlCommand("select* from ForgetPass where Id=@Id", con);
                cmd.Parameters.AddWithValue("@Id", GUIDvalue);

                SqlDataAdapter adp = new SqlDataAdapter(cmd);

                adp.Fill(dt);
                if(dt.Rows.Count!=0)
                { 
                uid = Convert.ToInt32(dt.Rows[0][1]);
                }
                else
                {
                    lblMsg.Text = "Your Password Reset link is Expired or Invalid....try again";
                    lblMsg.ForeColor = System.Drawing.Color.Red;
                }


            }
            else
            {
                Response.Redirect("~/WebForm1.aspx");
            }


            if (!IsPostBack)
            {
                if (dt.Rows.Count != 0)
                {
                    txtConfirmPass.Visible = true;
                    txtNewPass.Visible = true;
                    lblNewPassword.Visible = true;
                    Label1.Visible = true;
                    txtConfirmPass.Visible = true;
                    btnResetPass.Visible = true;
                }
                else
                {
                    lblMsg.Text = "Your Password Reset link is Expired or Invalid....try again";
                    lblMsg.ForeColor = System.Drawing.Color.Red;
                }

            }


        }

        protected void btnResetPass_Click(object sender, EventArgs e)
        {
            if(txtNewPass.Text!="" && txtConfirmPass.Text!="" && txtNewPass.Text==txtConfirmPass.Text)
            { 
            SqlConnection con = new SqlConnection(Connection);
            con.Open();
            string query = ("update dbo.users set Password='" + txtNewPass.Text + "' where uid='" + uid + "'");
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();

            string query2 = ("delete from Forgetpass where uid='" + uid + "'");
            SqlCommand cmd2 = new SqlCommand(query2, con);
            cmd2.ExecuteNonQuery();

            Response.Write("<script> alert ('Password Reset Successfuly done');</script>");
            Response.Redirect("~/login.aspx");
            }
            
        }
        
    }
}