using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_data2 : System.Web.UI.Page
{
    private function f1 = new function();
    private DataSet ds = new DataSet();
    private string pass;
    private string user;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] != null)
        {
            if(!IsPostBack)
            {

            
            SqlConnection con =
            new SqlConnection(
                "Data Source=(localdb)\\Projects;Initial catalog=Soil_Final;Integrated Security=True;Connect Timeout=30");
             using(SqlCommand cmd = new SqlCommand("select farmer_id,name from tbfarmer",con))
             {
                 using(SqlDataAdapter adp = new SqlDataAdapter(cmd))
                 {
                     DataTable dt = new DataTable();
                     adp.Fill(dt);
                     if(dt.Rows.Count>0)
                     {
                         DropDownList1.DataSource = dt;
                         DropDownList1.DataTextField = "name";
                         DropDownList1.DataValueField = "farmer_id";
                         DropDownList1.DataBind();
                         DropDownList1.Items.Insert(0, "--SELECT--");
                     }
                 }
             }
        }
    }

        else
        {
            Response.Redirect("frm_adminlogin.aspx");
        }
    }
    protected void btnshow_Click(object sender, EventArgs e)
    {
        SqlConnection con =
            new SqlConnection(
                "Data Source=(localdb)\\Projects;Initial catalog=Soil_Final;Integrated Security=True;Connect Timeout=30");
        user = Convert.ToString(Session["name"]);
        using(SqlCommand cmd = new SqlCommand("select * from user_dataset where userid=@userid",con))
        {
            cmd.Parameters.AddWithValue("@userid", DropDownList1.SelectedValue);
            using (SqlDataAdapter adp = new SqlDataAdapter(cmd))
            {
                DataTable dt = new DataTable();
                adp.Fill(dt);
                if(dt.Rows.Count>0)
                {
                    Response.Write("<script type=\"text/javascript\">alert('Data Already Present !');</script>");
                }
                else
                {
                    using(SqlCommand cmd1= new SqlCommand("insert into user_dataset(userid,n,p,k,ph,ec) values(@id,@n,@p,@k,@ph,@ec)",con))
                    {
                        cmd1.Parameters.AddWithValue("@id", DropDownList1.SelectedValue);
                        cmd1.Parameters.AddWithValue("@n", txtN.Text);
                        cmd1.Parameters.AddWithValue("@p", txtP.Text);
                        cmd1.Parameters.AddWithValue("@k", txtK.Text);
                        cmd1.Parameters.AddWithValue("@ph", txtPh.Text);
                        cmd1.Parameters.AddWithValue("@ec", txtec.Text);
                        con.Open();
                        cmd1.ExecuteNonQuery();
                        con.Close();
                        Response.Write("<script type=\"text/javascript\">alert('Data Added Successfully !');</script>");
                        txtN.Text = "";
                        txtP.Text = "";
                        txtK.Text = "";
                        txtPh.Text = "";
                        txtec.Text = "";




                    

                    }
                    using(SqlCommand cmd3 = new SqlCommand("update tbfarmer set soil_types=@type where farmer_id=@id ",con))
                    {
                        cmd3.Parameters.AddWithValue("type", ddlsoiltypes.SelectedItem.Text);
                        cmd3.Parameters.AddWithValue("id", DropDownList1.SelectedValue);
                        con.Open();
                        cmd3.ExecuteNonQuery();
                        con.Close();

                    }
                }
            }
        }

       


    }
}