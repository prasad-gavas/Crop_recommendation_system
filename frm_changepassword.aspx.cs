using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class frm_changepassword : System.Web.UI.Page
{
    function f1=new function();
    DataSet ds = new DataSet();
    string pass;
    string user;

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
 
    protected void btnchangepassword_Click(object sender, EventArgs e)
    {
        user = Convert.ToString(Session["name"]);
        ds = f1.getrecord("select * from tbadministrator where password='" + txtoldpassword.Text + "' And username='" + user + "'");
        pass = ds.Tables[0].Rows[0]["password"].ToString();
        if (ds.Tables.Count == 1)
        {
            if (pass == txtoldpassword.Text)
            {
                if (txtnewpassword.Text == txtconfirmpassword.Text)
                {
                    if (txtnewpassword.Text.Length >= 6)
                    {
                        f1.update("update tbadministrator set password='" + txtnewpassword.Text + "' where password='" + txtoldpassword.Text + "'");
                        Response.Write("<script type=\"text/javascript\">alert('Password Changed Successfully !');</script>");
                    }
                    else
                    {
                        Response.Write("<script type=\"text/javascript\">alert('Password Should be Minimum 6 Characters  !');</script>");
                    }
                }
                else
                {
                    Response.Write("<script type=\"text/javascript\">alert('Password Mismatch !');</script>");
                }
            }
            else
            {
                Response.Write("<script type=\"text/javascript\">alert('Old Password Is Incorrect!');</script>");
            }
        }
        else
        {
            Response.Write("<script type=\"text/javascript\">alert('Invalid User!');</script>");
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