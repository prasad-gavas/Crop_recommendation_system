using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class frm_soiltypes : System.Web.UI.Page
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
        if (ddlsample.Text != "Select")
        {
            ds = f1.getrecord("select * from tbsoiltypes where sample_id='" + ddlsample.SelectedItem.Text + "'");
            GridView1.DataSource = ds;
            GridView1.DataBind();
            DataSet ds1 = new DataSet();
            ds1 = f1.getrecord("select area from tbsoiltypes where sample_id='" + ddlsample.SelectedItem.Text + "'");
            string area=ds1.Tables[0].Rows[0]["area"].ToString();
            lblnote2.Text = area;
            lblnote.Visible = true;
            lblnote1.Visible = true;
            lblnote2.Visible = true;
        }
        else
        {
            Response.Write("<script type=\"text/javascript\">alert('Please Select Sample !');</script>");
        }
        
    }
}