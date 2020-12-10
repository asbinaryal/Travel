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
    public partial class receipt : System.Web.UI.Page
    {

        string Connection = "Data Source = localhost\\SQLEXPRESS; Initial Catalog=tour; Integrated Security=True; ";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //   Bindbuypac();
                BindPackageDetails();
            }
        }

        private void BindPackageDetails()
        {
            {
                Int64 Pid = Convert.ToInt64(Request.QueryString["Pid"]);
                SqlConnection con = new SqlConnection(Connection);
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from package where Pid='" + Pid + "'  ", con);
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();

                adp.Fill(dt);
                rptrpackagedetails.DataSource = dt;
                rptrpackagedetails.DataBind();

            }
        }
        protected string GetActiveImgClass(int ItemIndex)
        {
            if (ItemIndex == 0)
            {
                return "active";
            }
            else
            {
                return "";
            }
        }
    }
}