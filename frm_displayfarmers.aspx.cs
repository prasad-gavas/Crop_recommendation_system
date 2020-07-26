using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class frm_displayfarmers : System.Web.UI.Page
{
    function f1 = new function();
    DataSet ds = new DataSet();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] != null)
        {
            ds = f1.getrecord("select * from tbfarmer");
            GridView1.DataSource = ds;
            GridView1.DataBind();

        }
        else
        {
            Response.Redirect("frm_adminlogin.aspx");
        }

    }
}