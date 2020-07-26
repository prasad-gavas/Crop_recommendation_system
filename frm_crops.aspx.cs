using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class frm_crops : System.Web.UI.Page
{
    function f1 = new function();
    DataSet ds = new DataSet();

    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["name"] != null)
        //{

        //}
        //else
        //{
        //    Response.Redirect("frm_adminlogin.aspx");
        //}
    }

    protected void btnshow_Click(object sender, EventArgs e)
    {
        if (ddlcrop.Text != "Select")
        {
            ds = f1.getrecord("select * from tbcrop where crop_name='" + ddlcrop.SelectedItem.Text + "'");
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        else
        {
            Response.Write("<script type=\"text/javascript\">alert('Please Select Crop Name !');</script>");
        }

        ddlcrop.ClearSelection();
    }
}