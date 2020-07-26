using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class frm_checkquery : System.Web.UI.Page
{
    function f1 = new function();
    DataSet ds = new DataSet();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] != null)
        {
            ds = f1.getrecord("select * from tbqueries");
            GridView1.DataSource = ds;
            GridView1.DataBind();

        }
        else
        {
            Response.Redirect("frm_adminlogin.aspx");
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            if (GridView1.SelectedIndex == i)
            {
                String name = GridView1.Rows[i].Cells[1].Text; //Gets the data value in the grid; 
                Session["Value"] = name;
            }
        }

        string url = "frm_response.aspx";
        string s = "window.open('" + url + "', 'popup_window', 'width=550,height=350,left=100,top=100,resizable=yes');";
        ClientScript.RegisterStartupScript(this.GetType(), "script", s, true);
    }
}