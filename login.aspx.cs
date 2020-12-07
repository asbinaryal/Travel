using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace tour
{
    public partial class login : System.Web.UI.Page
    {
        string Connection = "Data Source = localhost\\SQLEXPRESS;Initial Catalog=tour;Integrated Security=True ";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Request.Cookies["uname"] != null && Request.Cookies["Password"] != null)
                {
                    txtusername.Text = Request.Cookies["uname"].Value;
                    txtpassword.Text = Request.Cookies["Password"].Value;
                    CheckBox1.Checked = true;
                }
            }
        }




        protected void btnlogin_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(Connection);
            con.Open();
            string query = ("select * FROM users WHERE uname='" + txtusername.Text + "' and Password='" + txtpassword.Text + "'");
            SqlCommand cmd = new SqlCommand(query, con);


            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adp.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                if (CheckBox1.Checked)
                {
                    Response.Cookies["uname"].Value = txtusername.Text;
                    Response.Cookies["Password"].Value = txtpassword.Text;

                    Response.Cookies["uname"].Expires = DateTime.Now.AddDays(-1);
                    Response.Cookies["Password"].Expires = DateTime.Now.AddDays(-1);


                }
                else
                {


                    Response.Cookies["uname"].Expires = DateTime.Now.AddDays(-1);
                    Response.Cookies["Password"].Expires = DateTime.Now.AddDays(-1);

                }

                string utype;
                utype = dt.Rows[0][5].ToString().Trim();

                if (utype == "user")
                {

                    Session["uname"] = txtusername.Text;
                    Response.Redirect("~/Homepage.aspx");
                }

                if (utype == "admin")
                {

                    Session["uname"] = txtusername.Text;
                    Response.Redirect("~/adminhp.aspx");
                }
                if (utype == "agency")
                {

                    Session["uname"] = txtusername.Text;
                    Response.Redirect("~/agencyhp.aspx");
                }


            }
            else
            {
                Label3.Text = "Invalid Username and Password";

            }


            // Response.Write("<script>alert('Login done successfully ');</script>");

            // lblMsg.Text = "Registration succesfully done";
            //lblMsg.ForeColor = System.Drawing.Color.Black;

            clear();
            con.Close();
        }
        private void clear()
        {
            txtusername.Text = string.Empty;
            txtpassword.Text = string.Empty;
            txtusername.Focus();
        }
    }
}
