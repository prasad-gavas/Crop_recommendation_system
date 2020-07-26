using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class frmRegistration : System.Web.UI.Page
{
    function f1 = new function();
    DataSet ds = new DataSet();

    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        ds = f1.getrecord("select Max(farmer_id) from tbfarmer");
        int mem_id;
        String a = ds.Tables[0].Rows[0][0].ToString();
        if (a == "")
        {
            mem_id = 1;
        }
        else
        {
            int b = Convert.ToInt32(a);
            mem_id = b + 1;
        }
        string area = txtarea.Text + " " + ddlarea.SelectedItem.Text;
        ds =
            f1.getrecord("select * from tbfarmer where name='" + txtname.Text + "' and birthdate='" + txtbirth.Text +
                         "' and mobile_no='" + txtmob.Text + "' and location='" + txtlocation.Text + "' and district='" +
                         ddlvillage.SelectedItem.Text + "' and state='" + ddldistrict.Text + "' and pincode='" +
                         txtpin.Text + "' and aadhar='" + txtaadhar.Text + "' and soil_types ='" + ddlsoiltypes.Text +
                         "' and area='" + area + "' ");
        int count = ds.Tables[0].Rows.Count;

        if (txtname.Text != "" && txtbirth.Text != "" && txtmob.Text != "" && txtlocation.Text != "" &&
            ddlvillage.SelectedItem.Text != "Select" && ddldistrict.SelectedItem.Text != "Select" && txtpin.Text != "" &&
            txtaadhar.Text != "" && ddlsoiltypes.SelectedItem.Text != "Select" && txtarea.Text != "")
        {
            if (count != 1)
            {
                f1.insert("insert into tbfarmer values('" + mem_id + "','" + txtname.Text + "','" + txtbirth.Text +
                          "','" + txtmob.Text + "','" + txtlocation.Text + "','" + ddlvillage.SelectedItem.Text + "','" +
                          ddldistrict.SelectedItem.Text + "','" + txtpin.Text + "','" + txtaadhar.Text + "','" +
                          ddlsoiltypes.SelectedItem.Text + "','" + area + "')");
                Response.Write("<script type=\"text/javascript\">alert('Record Inserted Successfully !');</script>");
            }
            else
            {
                Response.Write("<script type=\"text/javascript\">alert('Duplicate Entry is not allowed !');</script>");
            }
        }
        else
        {
            Response.Write("<script type=\"text/javascript\">alert('Please Fill all the Fields !');</script>");
        }

        foreach (Control control in Form.Controls)
        {
            if (control is TextBox)
            {
                TextBox txt = (TextBox)control;
                txt.Text = "";
            }
        }
        ddldistrict.ClearSelection();
        ddlsoiltypes.ClearSelection();
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
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
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

    }
}