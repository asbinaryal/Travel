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
    public partial class addcategory : System.Web.UI.Page
    {
       
        string Connection = "Data Source = localhost\\SQLEXPRESS;Initial Catalog=tour;Integrated Security=True ";
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                BindData();
                clear();
            }

        }
        public void clear()
        {
            txtaddcat.Text = "";
            txtcatid.Text = "";

        }
        public void BindData()
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
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
               
        
       
        protected void btnaddcat_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(Connection);

            con.Open();

            string query = "insert into category(catname) values('" + txtaddcat.Text + "')";
            SqlCommand cmd = new SqlCommand(query, con);

            cmd.ExecuteNonQuery();

            Response.Write("<script>alert('Category added successfully ');</script>");
            //clear();
            con.Close();
            lblMsg.Text = "Category added succesfully done";
            lblMsg.ForeColor = System.Drawing.Color.Black;
        }

        protected void btnedit_Click1(object sender, EventArgs e)
        {
            {
                Button btnEdit = (Button)sender;
                GridViewRow row = (GridViewRow)btnEdit.NamingContainer;
                string catid = row.Cells[0].Text;
                DataTable dt = new DataTable();
                SqlConnection con = new SqlConnection(Connection);
                con.Open();
                string query = "select * from category where catid='" + catid + "'";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.CommandType = CommandType.Text;
                cmd.ExecuteNonQuery();


                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                adp.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    if (dt.Rows[0]["catid"].ToString() != "")
                        txtcatid.Text = dt.Rows[0]["catid"].ToString();
                    if (dt.Rows[0]["catname"].ToString() != "")
                        txtaddcat.Text = dt.Rows[0]["catname"].ToString();
                }

                BindData();
            }
        }

        protected void btnupdate_Click1(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(Connection);
                con.Open();
                string query = "update category set catname='" + txtaddcat.Text + "' where catid='" + txtcatid.Text + "'";
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

        protected void btndelete_Click1(object sender, EventArgs e)
        {
            Button btndel = (Button)sender;
            GridViewRow row = (GridViewRow)btndel.NamingContainer;
            string catid = row.Cells[0].Text;

            SqlConnection con = new SqlConnection(Connection);
            con.Open();
            string query = "delete from category where catid='" + catid + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.CommandType = CommandType.Text;
            cmd.ExecuteNonQuery();
            BindData();
        }

    }
}
