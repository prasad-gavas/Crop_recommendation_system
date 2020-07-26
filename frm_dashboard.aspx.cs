using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class frm_dashboard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] != null)
        {
            string user = Session["name"].ToString();
            lbluser.Text = "Welcome" + " " + user;
        }
        else
        {
            Response.Redirect("frm_adminlogin.aspx");
        }
    }
 
}