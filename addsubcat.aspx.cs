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
    
    public partial class addsubcat : System.Web.UI.Page
    {
        string Connection = "Data Source = localhost\\SQLEXPRESS;Initial Catalog=tour;Integrated Security=True ";
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                BindData();
                Bindmaincat();
                clear();
             
            }

        }
        public void clear()
        {
            txtsubcat.Text = "";
            txtsubcatid.Text = "";
            ddlmaincat.SelectedValue = "";

        }

        protected void btnsubcategory_Click(object sender, EventArgs e)
        {
            {
                SqlConnection con = new SqlConnection(Connection);

                con.Open();
                string query = "insert into subcategory(subcatname,maincatid) values('" + txtsubcat.Text + "','" + ddlmaincat.SelectedItem.Value + "')";
                SqlCommand cmd = new SqlCommand(query, con);

                cmd.ExecuteNonQuery();

                Response.Write("<script>alert('Sub-Category added successfully ');</script>");
                //clear();
                con.Close();
                lblMsg.Text = "Sub-Category added succesfully done";
                lblMsg.ForeColor = System.Drawing.Color.Black;
                
            }
            BindData();
        }
        private void Bindmaincat()
        {
            SqlConnection con = new SqlConnection(Connection);
            con.Open();
            string query = "select *from category";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.CommandType = CommandType.Text;
            cmd.ExecuteNonQuery();

            DataTable dt = new DataTable();
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            adp.Fill(dt);
            if(dt.Rows.Count!=0)
            {
                ddlmaincat.DataSource = dt;
                ddlmaincat.DataTextField = "catname";
                ddlmaincat.DataValueField = "catid";
                ddlmaincat.DataBind();
                ddlmaincat.Items.Insert(0, new ListItem("-Select-", "0"));
            }
        }
       
         public void BindData()
        {
            SqlConnection con = new SqlConnection(Connection);
            con.Open();
            string query = "Select A.*,B.* from subcategory A inner join category B on B.catid = A.maincatid";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.CommandType = CommandType.Text;
            cmd.ExecuteNonQuery();

            DataTable dt = new DataTable();
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            adp.Fill(dt);
            gvReport.DataSource = dt;
            gvReport.DataBind();
        }



        protected void btnupdate_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(Connection);
                con.Open();
                string query = "update subcategory set subcatname='" + txtsubcat.Text + "' where subcatid='" + txtsubcatid.Text + "'";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.CommandType = CommandType.Text;
                cmd.ExecuteNonQuery();
                BindData();
                clear();
            }
            catch (Exception ex)
            {
            }
        }       

        protected void btnedit_Click(object sender, EventArgs e)
        {
            {
                Button btnEdit = (Button)sender;
                GridViewRow row = (GridViewRow)btnEdit.NamingContainer;
                string subcatid = row.Cells[0].Text;
                DataTable dt = new DataTable();
                SqlConnection con = new SqlConnection(Connection);
                con.Open();
                string query = "select * from subcategory where subcatid='" + subcatid + "'";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.CommandType = CommandType.Text;
                cmd.ExecuteNonQuery();


                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                adp.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    if (dt.Rows[0]["subcatid"].ToString() != "")
                        txtsubcatid.Text = dt.Rows[0]["subcatid"].ToString();
                    if (dt.Rows[0]["subcatname"].ToString() != "")
                        txtsubcat.Text = dt.Rows[0]["subcatname"].ToString();
                }

                BindData();
            }
        }

        protected void btndelete_Click(object sender, EventArgs e)
        {
            Button btndel = (Button)sender;
            GridViewRow row = (GridViewRow)btndel.NamingContainer;
            string subcatid = row.Cells[0].Text;

            SqlConnection con = new SqlConnection(Connection);
            con.Open();
            string query = "delete from subcategory where subcatid='" + subcatid + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.CommandType = CommandType.Text;
            cmd.ExecuteNonQuery();
            BindData();
        }

       
    }
    
}