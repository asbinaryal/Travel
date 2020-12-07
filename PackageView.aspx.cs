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
    public partial class PackageView : System.Web.UI.Page
    {
        string Connection = "Data Source = localhost\\SQLEXPRESS; Initial Catalog=tour; Integrated Security=True; ";

        protected void Page_Load(object sender, EventArgs e)
        {
           
                if (!IsPostBack)
                {
                    BindPackageImage();
                    BindPackageDetails();
                }

                else
                {
                    Response.Redirect("~/packages.aspx");
                }
            }
        

        private void BindPackageDetails()
        {
            //Int64 Pid = Convert.ToInt64(Request.QueryString["Pid"]);
            SqlConnection con = new SqlConnection(Connection);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from package  ", con);
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();

            adp.Fill(dt);
            rptrpackagedetails.DataSource = dt;
            rptrpackagedetails.DataBind();
                
            }
        

        private void BindPackageImage()
        {
           // Int64 Pid = Convert.ToInt64(Request.QueryString["Pid"]);
            //SqlConnection con = new SqlConnection(Connection);
            //con.Open();
            //SqlCommand cmd = new SqlCommand("select * from packageimage ", con);
            //SqlDataAdapter adp = new SqlDataAdapter(cmd);
            //DataTable dt = new DataTable();

            //adp.Fill(dt);
            //rptrImage.DataSource = dt;
            //rptrImage.DataBind();
                
            
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

        protected void btnaddtocart_Click(object sender, EventArgs e)
        {

        }
    }
}