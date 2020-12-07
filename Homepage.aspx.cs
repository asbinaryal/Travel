using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace tour
{
    public partial class Homepage : System.Web.UI.Page
    {
        string Connection = "Data Source = localhost\\SQLEXPRESS; Initial Catalog=tour; Integrated Security=True; ";
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["uname"]!=null)
            {
                btnlogout.Visible = true;
                lblSuccess.Text = "Login Success, Welcome"  + Session["uname"].ToString();
            }
            else
            {
                btnlogout.Visible = false;
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