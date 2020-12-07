using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;

namespace tour
{
    public partial class packages : System.Web.UI.Page
    {
        
        string Connection = "Data Source = localhost\\SQLEXPRESS; Initial Catalog=tour; Integrated Security=True; ";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindPackageRepeator();
            }
        }

        private void BindPackageRepeator()
        {
            SqlConnection con = new SqlConnection(Connection);
            con.Open();
            SqlCommand cmd = new SqlCommand("procBindAllPackage", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            cmd.CommandType = CommandType.StoredProcedure;
            DataTable dt = new DataTable();
            sda.Fill(dt);
            rptrpackages.DataSource = dt;
            rptrpackages.DataBind();
                
            
        }

        protected void rptrpackages_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }
    }
}