using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class frm_addfarm : System.Web.UI.Page
{
    DataSet ds = new DataSet();
    function f1 = new function();
    string mobile = "";


    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        { 
        if (Session["name"] != null)
        {
            mobile = Session["name"].ToString();
            ddldistrict.Items.Clear();
            //txtvillage.Visible = false;
            //ddlvillage.Visible = true;
            ddldistrict.Items.Insert(0, new ListItem("Select", ""));
            ds = f1.getrecord("select distinct(state) from rainfall");
            ddldistrict.DataSource = ds;
            ddldistrict.DataTextField = "state";
            ddldistrict.DataValueField = "state";
            ddldistrict.DataBind();
        }
        else
        {
            Response.Redirect("frm_userlogin.aspx");
        }
        }
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        SqlConnection con =
           new SqlConnection(
               "Data Source=(localdb)\\Projects;Initial catalog=Soil_Final;Integrated Security=True;Connect Timeout=30");
        //ds = f1.getrecord("select area from tbfarmer where mobile_no='"+mobile+"'");
        //string soiltype=ds.Tables[0].Rows[0]["soil_types"].ToString();
       // string area = ds.Tables[0].Rows[0]["area"].ToString();
        string area1 = txtarea.Text + " " + ddlarea.SelectedItem.Text;
        string loc = txtlocation.Text;
        string pin = txtpin.Text;

        //string soilt = ddlsoiltypes.SelectedItem.Text +","+ soiltype;
        //string area2 = area1+ ","+ area;
        string area2 = area1;
        //f1.update("update tbfarmer set state='" + ddldistrict.SelectedItem.Text + "' ,district='" + ddlvillage.SelectedItem.Text + "',location='" + loc + "',pincode='" + pin + "'  area='" + area2 + "' where mobile_no='" + mobile + "'");
        using (SqlCommand cmd1 = new SqlCommand("update tbfarmer set state='" + ddldistrict.SelectedItem.Text + "' ,district='" + ddlvillage.SelectedItem.Text + "',location='" + loc + "',pincode='" + pin + "' , area='" + area2 + "' where mobile_no='" + Session["name"].ToString() + "'", con))
        {
            con.Open();
            cmd1.ExecuteNonQuery();
            con.Close();
            Response.Write("<script type=\"text/javascript\">alert('Farm Added Successfully !');</script>");
        }
       

    }
    protected void ddldistrict_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddlvillage.Items.Clear();
        //txtvillage.Visible = false;
        //ddlvillage.Visible = true;
        ddlvillage.Items.Insert(0, new ListItem("Select", ""));
        ds = f1.getrecord("select distinct(district) from rainfall where state='" + ddldistrict.SelectedItem.Text + "'");
        ddlvillage.DataSource = ds;
        ddlvillage.DataTextField = "district";
        ddlvillage.DataValueField = "district";
        ddlvillage.DataBind();
    }
}