using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;


namespace tour
{
    public partial class agaddpac : System.Web.UI.Page
    {
        string Connection = "Data Source = localhost\\SQLEXPRESS; Initial Catalog=tour; Integrated Security=True; ";


        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uname"] != null)
            {
                txtaname.Text = Session["uname"].ToString();
            }
            else
            {
                Response.Write("not entered inside page");
            }


            if (!Page.IsPostBack)
            {
                ddlsubcategory.Enabled = false;
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
        //private void Bindusers()
        //{
        //    SqlConnection con = new SqlConnection(Connection);
        //    con.Open();
        //    string query = "select *from users";
        //    SqlCommand cmd = new SqlCommand(query, con);
        //    cmd.CommandType = CommandType.Text;
        //    cmd.ExecuteNonQuery();

        //    DataTable dt = new DataTable();
        //    SqlDataAdapter adp = new SqlDataAdapter(cmd);
        //    adp.Fill(dt);
        //    if (dt.Rows.Count != 0)
        //    {
        //        ddlaname.DataSource = dt;
        //        ddlaname.DataTextField = "uname";
        //        ddlaname.DataValueField = "uid";
        //        ddlaname.DataBind();
        //        ddlaname.Items.Insert(0, new ListItem("-Select-", "0"));
        //    }
        //}
        public void BindData()
        {
            SqlConnection con = new SqlConnection(Connection);
            con.Open();
            

            string query = "SELECT pname,Pprice,discounted_price,NoOfPeople,Pcategory,Psubcategory,PDescription,Ppackagedetails,requestdatetime,agency FROM users RIGHT JOIN package ON users.uname = package.agency where agency='"+txtaname.Text+"' ";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.CommandType = CommandType.Text;
            cmd.ExecuteNonQuery();

            DataTable dt = new DataTable();
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            adp.Fill(dt);
            gvReport.DataSource = dt;
            gvReport.DataBind();
        }

        protected void btnadd_Click1(object sender, EventArgs e)
        {
            {
                {
                    SqlConnection con = new SqlConnection(Connection);

                    con.Open();

                    //string query = "insert into package(pname,Pprice,NoOfPeople,Pcategory,Psubcategory,PDescription,Ppackagedetails,requestdatetime,agency) values('" + txtpackagename.Text + "','" + txtprice.Text + "','" + txtnoofpeople.Text + "','" + ddlcategory.SelectedItem.Value + "','" + ddlsubcategory.SelectedItem.Value + "','" + txtdescription.Text + "','" + txtpackagedetails.Text + "','" + DateTime.Now + "','" + txtaname.Text + "')";


                    //SqlCommand cmd = new SqlCommand(query, con);


                    //int Pid = (int)cmd.ExecuteScalar();
                    SqlCommand cmd = new SqlCommand("sp_InsertPackage", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@pname", txtpackagename.Text);
                    cmd.Parameters.AddWithValue("@Pprice", txtprice.Text);
                    cmd.Parameters.AddWithValue("@discounted_price", txtdeductedprice.Text);
                    cmd.Parameters.AddWithValue("@NoOfPeople", txtnoofpeople.Text);
                    cmd.Parameters.AddWithValue("@Pcategory", ddlcategory.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@Psubcategory", ddlsubcategory.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@PDescription", txtdescription.Text);
                    cmd.Parameters.AddWithValue("@Ppackagedetails", txtpackagedetails.Text);
                    cmd.Parameters.AddWithValue("@requestdatetime", DateTime.Now);
                    cmd.Parameters.AddWithValue("@agency", txtaname.Text);

                    int Pid = Convert.ToInt32(cmd.ExecuteScalar());


                    //txtaname.Text = dt.Rows[0]["agency"].ToString();


                    //Images


                    if (fuimg01.HasFile)
                    {


                        string SavePath = Server.MapPath("~/icon/PackageImages/") + Pid;
                        if (!Directory.Exists(SavePath))
                        {
                            Directory.CreateDirectory(SavePath);
                        }
                        string Extension = Path.GetExtension(fuimg01.PostedFile.FileName);
                        fuimg01.SaveAs(SavePath + "\\" + txtpackagename.Text.ToString().Trim() + "01" + Extension);
                        SqlCommand cmd1 = new SqlCommand("Insert into packageimage (Pid,Iname) values ('" + Pid + "','" + txtpackagename.Text.ToString().Trim() + "01" + "')", con);
                        cmd1.ExecuteNonQuery();
                    }

                    if (fuimg02.HasFile)
                    {
                        string SavePath = Server.MapPath("~/icon/PackageImages/") + Pid;
                        if (!Directory.Exists(SavePath))
                        {
                            Directory.CreateDirectory(SavePath);
                        }
                        string Extension = Path.GetExtension(fuimg02.PostedFile.FileName);
                        fuimg02.SaveAs(SavePath + "\\" + txtpackagename.Text.ToString().Trim() + "02" + Extension);
                        SqlCommand cmd2 = new SqlCommand("Insert into packageimage (Pid,Iname) values ('" + Pid + "','" + txtpackagename.Text.ToString().Trim() + "02" + "')", con);
                        cmd2.ExecuteNonQuery();
                    }


                    if (fuimg03.HasFile)
                    {
                        string SavePath = Server.MapPath("~/icon/PackageImages/") + Pid;
                        if (!Directory.Exists(SavePath))
                        {
                            Directory.CreateDirectory(SavePath);
                        }
                        string Extension = Path.GetExtension(fuimg03.PostedFile.FileName);
                        fuimg03.SaveAs(SavePath + "\\" + txtpackagename.Text.ToString().Trim() + "03" + Extension);
                        SqlCommand cmd3 = new SqlCommand("Insert into packageimage (Pid,Iname) values ('" + Pid + "','" + txtpackagename.Text.ToString().Trim() + "03" + "',)", con);
                        cmd3.ExecuteNonQuery();
                    }

                    if (fuimg04.HasFile)
                    {
                        string SavePath = Server.MapPath("~/icon/PackageImages/") + Pid;
                        if (!Directory.Exists(SavePath))
                        {
                            Directory.CreateDirectory(SavePath);
                        }
                        string Extension = Path.GetExtension(fuimg04.PostedFile.FileName);
                        fuimg04.SaveAs(SavePath + "\\" + txtpackagename.Text.ToString().Trim() + "04" + Extension);
                        SqlCommand cmd4 = new SqlCommand("Insert into packageimage (Pid,Iname) values ('" + Pid + "','" + txtpackagename.Text.ToString().Trim() + "04" + "')", con);
                        cmd4.ExecuteNonQuery();
                    }


                    if (fuimg05.HasFile)
                    {
                        string SavePath = Server.MapPath("~/icon/PackageImages/") + Pid;
                        if (!Directory.Exists(SavePath))
                        {
                            Directory.CreateDirectory(SavePath);
                        }
                        string Extension = Path.GetExtension(fuimg05.PostedFile.FileName);
                        fuimg05.SaveAs(SavePath + "\\" + txtpackagename.Text.ToString().Trim() + "05" + Extension);
                        SqlCommand cmd5 = new SqlCommand("Insert into packageimage (Pid,Iname) values ('" + Pid + "','" + txtpackagename.Text.ToString().Trim() + "05" + "')", con);
                        cmd5.ExecuteNonQuery();
                    }


                    Response.Write("<script>alert('Package added successfully ');</script>");

                    con.Close();

                }



                BindData();
            }
        }

        protected void btnupdate1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(Connection);
                con.Open();
                string query = "update package set pname='" + txtpackagename.Text + "' where Pid='" + txtpackageid.Text + "'";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.CommandType = CommandType.Text;
                cmd.ExecuteNonQuery();
                BindData();

            }
            catch (Exception ex)
            {
            }
        }

        protected void btnedit_Click(object sender, EventArgs e)
        {
            Button btnEdit = (Button)sender;
            GridViewRow row = (GridViewRow)btnEdit.NamingContainer;
            string Pid = row.Cells[0].Text;
            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection(Connection);
            con.Open();
            string query = "select * from package where Pid='" + Pid + "'";
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
                //if (dt.Rows[0]["requestdatetime"].ToString() != "")
                //    Timer1.Now = dt.Rows[0]["requestdatetime"].ToLongDateString();

            }

            BindData();
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
                string query = "select * from package where Pid='" + txtpackageid.Text + "' OR pname='" + txtpackagename.Text + "'";
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
                        ddlcategory.SelectedValue = dt.Rows[0]["Pcategory"].ToString();
                    if (dt.Rows[0]["Psubcategory"].ToString() != "")
                        ddlsubcategory.SelectedValue = dt.Rows[0]["Psubcategory"].ToString();
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

        protected void txtaname_TextChanged(object sender, EventArgs e)
        {
            Session["uname"] = txtaname.Text;

        }

        protected void ddlcategory_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddlsubcategory.Enabled = true;
            SqlConnection con = new SqlConnection(Connection);
            con.Open();
            string query = "select *from subcategory where maincatid='" + ddlcategory.SelectedItem.Value + "'";
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
    }
}