using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class frm_userdashboard : System.Web.UI.Page
{
    function f1 = new function();
    DataSet ds = new DataSet();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] != null)
        {
            string user = Session["name"].ToString();
            ds=f1.getrecord("select name from tbfarmer where mobile_no='"+user+"' Or aadhar='"+user+"' ");
            string username = ds.Tables[0].Rows[0][0].ToString();
            lbluser.Text = "Welcome" + " " + username;


        }
        else
        {
            Response.Redirect("frm_userlogin.aspx");
        }

    }
}