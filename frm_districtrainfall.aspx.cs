using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class frm_districtrainfall : System.Web.UI.Page
{
    function f1 = new function();
    DataSet ds = new DataSet();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] != null)
        {

        }
        else
        {
            Response.Redirect("frm_adminlogin.aspx");
        }

    }
    protected void btnshow_Click(object sender, EventArgs e)
    {
        if (ddldistrict.Text != "Select" && ddlyear.Text != "Select")
        {
            ds = f1.getrecord("select * from tbrainfall$ where District='" + ddldistrict.SelectedItem.Text + "' and year='" + ddlyear.SelectedItem.Text + "'");
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        else
        {
            Response.Write("<script type=\"text/javascript\">alert('Select district month and year !');</script>");
        }
        ddldistrict.ClearSelection();
        ddlyear.ClearSelection();
    }
    protected void ddldistrict_SelectedIndexChanged(object sender, EventArgs e)
    {
        lbldistrict.Text = "Selected District :" + " " + ddldistrict.SelectedItem.Text;
    }
    protected void ddlyear_SelectedIndexChanged(object sender, EventArgs e)
    {
        lblyear.Text = "Selected Year :" + " " + ddlyear.SelectedItem.Text;
    }
}