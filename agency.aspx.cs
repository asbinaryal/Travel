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
    public partial class agency : System.Web.UI.Page
    {
        string Connection = "Data Source = localhost\\SQLEXPRESS; Initial Catalog=tour; Integrated Security=True; ";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
               
                BindData();
               
                //Bindusers();

            }

        }

       
            public void BindData()
            {
                SqlConnection con = new SqlConnection(Connection);
                con.Open();
                string query = "Select *from users where usertype='agency' ORDER By Name";
            SqlCommand cmd = new SqlCommand(query, con);
                cmd.CommandType = CommandType.Text;
                cmd.ExecuteNonQuery();

                DataTable dt = new DataTable();
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                adp.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }

        

      
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(Connection);
            con.Open();
            string query = "select *from users where usertype='agency'";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.CommandType = CommandType.Text;
            cmd.ExecuteNonQuery();

            //DataTable dt = new DataTable();
            //SqlDataAdapter adp = new SqlDataAdapter(cmd);
            //adp.Fill(dt);
            //if (dt.Rows.Count != 0)
            //{
            //    ddlsubcategory.DataSource = dt;
            //    ddlsubcategory.DataTextField = "subcatname";
            //    ddlsubcategory.DataValueField = "subcatid";
            //    ddlsubcategory.DataBind();
            //    ddlsubcategory.Items.Insert(0, new ListItem("-Select-", "0"));
            //}
        }

       


             

       

        

        protected void btnupdate_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(Connection);
            con.Open();
            string query = "update users set uname='" + txtuname.Text + "',Password='" + Password.Text + "',Email='" + txtemail.Text + "',Name='" + txtadda.Text + "' where uid='" + txtaid.Text + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.CommandType = CommandType.Text;
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Edited successfully ');</script>");
            BindData();


        }


        protected void btnedit_Click(object sender, EventArgs e)
        {
            {
                Button btnEdit = (Button)sender;
                GridViewRow row = (GridViewRow)btnEdit.NamingContainer;
                string uid = row.Cells[0].Text;
                DataTable dt = new DataTable();
                SqlConnection con = new SqlConnection(Connection);
                con.Open();
                string query = "select * from users where uid='" + uid + "'";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.CommandType = CommandType.Text;
                cmd.ExecuteNonQuery();


                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                adp.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    if (dt.Rows[0]["uid"].ToString() != "")
                        txtaid.Text = dt.Rows[0]["uid"].ToString();
                    if (dt.Rows[0]["uname"].ToString() != "")
                        txtuname.Text = dt.Rows[0]["uname"].ToString();
                    if (dt.Rows[0]["Password"].ToString() != "")
                        Password.Text = dt.Rows[0]["Password"].ToString();
                    if (dt.Rows[0]["Email"].ToString() != "")
                        txtemail.Text = dt.Rows[0]["Email"].ToString();
                    if (dt.Rows[0]["Name"].ToString() != "")
                        txtadda.Text = dt.Rows[0]["Name"].ToString();
                }

                BindData();
            }
        }

        protected void btndelete_Click(object sender, EventArgs e)
        {
            Button btndel = (Button)sender;
            GridViewRow row = (GridViewRow)btndel.NamingContainer;
            string uid = row.Cells[0].Text;

            SqlConnection con = new SqlConnection(Connection);
            con.Open();
            string query = "delete from users where uid='" + uid + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.CommandType = CommandType.Text;
            cmd.ExecuteNonQuery();
            BindData();
        }

        protected void btnadda_Click(object sender, EventArgs e)
        
        {
            SqlConnection con = new SqlConnection(Connection);
            {
             con.Open();
             string query = "insert into users(uname,Password,Email,Name,Usertype) values('" + txtuname.Text + "','" + Password.Text + "','" + txtemail.Text + "','" + txtadda.Text + "','agency')";
             SqlCommand cmd = new SqlCommand(query, con);

              cmd.ExecuteNonQuery();

             Response.Write("<script>alert('Added successfully ');</script>");
                //clear();
             con.Close();

            }
}

        protected void btnsearchs_Click(object sender, EventArgs e)
        {
            {
                Button btnsearchs = (Button)sender;
               
                DataTable dt = new DataTable();
                SqlConnection con = new SqlConnection(Connection);
                con.Open();
                string query = "select * from users where Name='" + txtadda.Text + "'   AND Usertype='agency'";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.CommandType = CommandType.Text;
                cmd.ExecuteNonQuery();


                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                adp.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    if (dt.Rows[0]["uid"].ToString() != "")
                        txtaid.Text = dt.Rows[0]["uid"].ToString();
                    if (dt.Rows[0]["uname"].ToString() != "")
                        txtuname.Text = dt.Rows[0]["uname"].ToString();
                    if (dt.Rows[0]["Password"].ToString() != "")
                        Password.Text = dt.Rows[0]["Password"].ToString();
                    if (dt.Rows[0]["Email"].ToString() != "")
                        txtemail.Text = dt.Rows[0]["Email"].ToString();
                    if (dt.Rows[0]["Name"].ToString() != "")
                        txtadda.Text = dt.Rows[0]["Name"].ToString();
                }

                BindData();
            }
        }
    }
}
