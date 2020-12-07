using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.EnterpriseServices;


namespace tour
{
    public partial class viewallpackage : System.Web.UI.Page
    {
        string Connection = "Data Source = localhost\\SQLEXPRESS; Initial Catalog=tour; Integrated Security=True; ";

        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Session["uname"] != null)
            //{
            //    txtaname.Text = Session["uname"].ToString();
            //}
            //else
            //{
            //    Response.Write("not entered inside page");
            //}


            if (!Page.IsPostBack)
            {
              
                BindData();
                Bindcat();
                Bindsubcat();
                //Bindusers();

            }
        }
        //private void clear()

        //{

        //    txtpackagename.Text = "";
        //    txtpackageid.Text = "";
        //    ddlcategory.SelectedValue = "";
        //    ddlsubcategory.SelectedValue = "";
        //    txtaname.Text = "";


        //}
        private void Bindcat()
        {
            SqlConnection con = new SqlConnection(Connection);
            con.Open();
            string query = "Select *from category";

            SqlCommand cmd = new SqlCommand(query, con);
            cmd.CommandType = CommandType.Text;
            cmd.ExecuteNonQuery();

            DataTable dt = new DataTable();
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            adp.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                ddlcategory.DataSource = dt;
                ddlcategory.DataTextField = "catname";
                ddlcategory.DataValueField = "catid";
                ddlcategory.DataBind();
                ddlcategory.Items.Insert(0, new ListItem("-Select-", "0"));
            }
        }

        private void Bindsubcat()
        {
            SqlConnection con = new SqlConnection(Connection);
            con.Open();
            string query = "select *from subcategory";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.CommandType = CommandType.Text;
            cmd.ExecuteNonQuery();

            DataTable dt = new DataTable();
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            adp.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                ddlsubcategory.DataSource = dt;
                ddlsubcategory.DataTextField = "subcatname";
                ddlsubcategory.DataValueField = "subcatid";
                ddlsubcategory.DataBind();
                ddlsubcategory.Items.Insert(0, new ListItem("-Select-", "0"));
            }
        }
       
        public void BindData()
        {
            SqlConnection con = new SqlConnection(Connection);
            con.Open();
            string query = "Select *from package  ";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.CommandType = CommandType.Text;
            cmd.ExecuteNonQuery();

            DataTable dt = new DataTable();
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            adp.Fill(dt);
            gvReport.DataSource = dt;
            gvReport.DataBind();
        }





        protected void btndelete_Click(object sender, EventArgs e)
        {
            Button btndel = (Button)sender;
            GridViewRow row = (GridViewRow)btndel.NamingContainer;
            string Pid = row.Cells[0].Text;

            SqlConnection con = new SqlConnection(Connection);
            con.Open();
            string query = "delete from package where Pid='" + Pid + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.CommandType = CommandType.Text;
            cmd.ExecuteNonQuery();
            BindData();
        }

        protected void btnsearch_Click(object sender, EventArgs e)
        {
            {
                Button btnsearchs = (Button)sender;

                DataTable dt = new DataTable();
                SqlConnection con = new SqlConnection(Connection);
                con.Open();
                string query = "select * from package where pname='" +txtpackagename.Text + "' OR Pid='" + txtpackageid.Text + "'";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.CommandType = CommandType.Text;
                cmd.ExecuteNonQuery();


                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                adp.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    if (dt.Rows[0]["Pid"].ToString() != "")
                        txtpackageid.Text = dt.Rows[0]["Pid"].ToString();
                    if (dt.Rows[0]["pname"].ToString() != "")
                        txtpackagename.Text = dt.Rows[0]["pname"].ToString();
                    if (dt.Rows[0]["Pprice"].ToString() != "")
                        txtprice.Text = dt.Rows[0]["Pprice"].ToString();
                    if (dt.Rows[0]["discounted_price"].ToString() != "")
                        txtdeductedprice.Text = dt.Rows[0]["discounted_price"].ToString();
                    if (dt.Rows[0]["NoOfPeople"].ToString() != "")
                        txtnoofpeople.Text = dt.Rows[0]["NoOfPeople"].ToString();
                    if (dt.Rows[0]["Pcategory"].ToString() != "")
                        ddlcategory.SelectedItem.Value = dt.Rows[0]["Pcategory"].ToString();
                    if (dt.Rows[0]["Psubcategory"].ToString() != "")
                        ddlsubcategory.SelectedItem.Value = dt.Rows[0]["Psubcategory"].ToString();
                    if (dt.Rows[0]["PDescription"].ToString() != "")
                        txtdescription.Text = dt.Rows[0]["PDescription"].ToString();
                    if (dt.Rows[0]["Ppackagedetails"].ToString() != "")
                        txtpackagedetails.Text = dt.Rows[0]["Ppackagedetails"].ToString();
                    if (dt.Rows[0]["agency"].ToString() != "")
                        txtaname.Text = dt.Rows[0]["agency"].ToString();
                }
              



                BindData();
            }
        }
    }
}