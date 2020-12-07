using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace tour
{
    public partial class SignUp : System.Web.UI.Page
    {
        string Connection = "Data Source = localhost\\SQLEXPRESS; Initial Catalog=tour; Integrated Security=True; ";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                
            } 
        }


      
        protected void btnsignup_Click1(object sender, EventArgs e)
        {

            if (isformvalid())
            {

                SqlConnection con = new SqlConnection(Connection);
                {
                    con.Open();
                    string query = "insert into users(uname,Password,Email,Name,Usertype) values('" + txtUname.Text + "','" + txtPass.Text + "','" + txtEmail.Text + "','" + txtname.Text + "','user')";
                    SqlCommand cmd = new SqlCommand(query, con);

                    cmd.ExecuteNonQuery();

                    Response.Write("<script>alert('Registration done successfully ');</script>");
                    //clear();
                    con.Close();
                    lblMsg.Text = "Registration succesfully done";
                    lblMsg.ForeColor = System.Drawing.Color.Black;
                }
               
            }


            else
            {
                Response.Write("<script>alert('Registration Failed ');</script>");
                lblMsg.Text = "Fields are mandatory";
                lblMsg.ForeColor = System.Drawing.Color.Red;
                clear();
            }


        }

        private bool isformvalid()
        {
            if (txtUname.Text == "")
            {
                Response.Write("<script> alert('Invalid Username ');</script>");
                txtUname.Focus();
                return false;
            }
            else if (txtPass.Text != txtCpass.Text)
            {
                Response.Write("<script>alert('Password doesn't match ');</script>");
                txtCpass.Focus();
                return false;
            }
            else if (txtEmail.Text == "")
            {
                Response.Write("<script>alert('Invalid Email ');</script>");
                txtEmail.Focus();
                return false;
            }
            else if (txtname.Text == "")
            {
                Response.Write("<script>alert('Invalid Name ');</script>");
                txtname.Focus();
                return false;
            }
            return true;
        }
        private void clear()
        {
            txtUname.Text = string.Empty;
            txtPass.Text = string.Empty;
            txtCpass.Text = string.Empty;
            txtEmail.Text = string.Empty;
            txtname.Text = string.Empty;
        }

    }
}


