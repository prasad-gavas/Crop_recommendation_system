using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class frm_adminlogin : System.Web.UI.Page
{
    function f1 = new function();
    DataSet ds = new DataSet();
    int v;
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        if (txtusername.Text == "" && txtpassword.Text == "")
        {
            Response.Write("<script type=\"text/javascript\">alert('Please Enter Username And Password !');</script>");
        }
        else
        {
            ds = f1.getrecord("Select * from tbadministrator where username='" + txtusername.Text + "'");
            v = Convert.ToInt32(ds.Tables[0].Rows.Count.ToString());
            if (v > 0)
            {
                ds = f1.getrecord("Select password from tbadministrator where username='" + txtusername.Text + "'");
                string pass = ds.Tables[0].Rows[0]["password"].ToString();
                if (pass == txtpassword.Text)
                {
                    Session["name"] = txtusername.Text;
                    Session["pwd"] = txtpassword.Text;
                    Response.Redirect("frm_dashboard.aspx");
                }
                else
                {
                    Response.Write("<script type=\"text/javascript\">alert('Password is Invalid !');</script>");
                }
            }
            else
            {
                Response.Write("<script type=\"text/javascript\">alert('Username is Invalid !');</script>");
            }
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