using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Globalization;

public partial class frm_raisequery : System.Web.UI.Page
{
    function f1 = new function();
    DataSet ds = new DataSet();
    string user;
    string response;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] != null)
        {

        }
        else
        {
            Response.Redirect("frm_userlogin.aspx");
        }
    }
 
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        user = Session["name"].ToString();
        response = "-";
        ds = f1.getrecord("select Max(Id) from tbqueries");
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
        string time = DateTime.Now.ToString("hh:mm:ss tt");    
        if (txtname.Text != "" && txtquery.Text != "" && txtdate.Text != "")
        {
            f1.insert("insert into tbqueries values('" + mem_id + "','" + txtname.Text + "','" + user + "','" + txtquery.Text + "','" + txtdate.Text + "','" + time + "','"+response+"')");
            Response.Write("<script type=\"text/javascript\">alert('Query Submitted Successfully !');</script>");
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
    }
}