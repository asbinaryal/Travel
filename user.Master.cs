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
    public partial class user : System.Web.UI.MasterPage
    {
        string Connection = "Data Source = localhost\\SQLEXPRESS; Initial Catalog=tour; Integrated Security=True; ";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uname"] != null)
            {
               // lblSuccess.Text = "Login Success, Welcome" + Session["uname"].ToString();
            }
            else
            {
                Response.Redirect("~/login.aspx");
            }
        }
        protected void btnlogout_Click(object sender, EventArgs e)
        {
            Session["uname"] = null;
            Response.Redirect("~/login.aspx");
        }
    }
}