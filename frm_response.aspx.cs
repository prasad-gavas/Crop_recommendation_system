using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class frm_response : System.Web.UI.Page
{
    DataSet ds = new DataSet();
    function f1 = new function();
    string id = "";

   
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        if (txtresponse.Text != "")
        {
            id = Session["Value"].ToString();
            f1.update("update tbqueries set response='" + txtresponse.Text + "' where id='" + id + "'");
            Response.Write("<script type=\"text/javascript\">alert('Response Added Successfully !');</script>");
        }
        else
        {
            Response.Write("<script type=\"text/javascript\">alert('Please Give Response First !');</script>");
        }
        txtresponse.Text = "";

    }
}