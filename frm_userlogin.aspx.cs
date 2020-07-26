using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class frm_userlogin : System.Web.UI.Page
{
    function f1 = new function();
    DataSet ds = new DataSet();
    int v;


    protected void btnlogin_Click(object sender, EventArgs e)
    {

        if (txtmobile.Text == "" && txtbirth.Text == "")
        {
            Response.Write("<script type=\"text/javascript\">alert('Please Enter Mobile  And D.O.B. !');</script>");
        }
        else
        {
           // ds = f1.getrecord("Select * from tbfarmer where mobile_no='" + txtmobile.Text + "' Or aadhar='" + txtmobile.Text + "'");
            ds = f1.getrecord("Select * from tbfarmer where mobile_no='" + txtmobile.Text + "' Or aadhar='" + txtmobile.Text + "'");
            v = Convert.ToInt32(ds.Tables[0].Rows.Count.ToString());
            if (v > 0)
            {
                string pass = ds.Tables[0].Rows[0]["birthdate"].ToString();
                string state = ds.Tables[0].Rows[0]["state"].ToString();
                string district = ds.Tables[0].Rows[0]["district"].ToString();
                
               // if (pass == txtbirth.Text)
                {
                    Session["userid"] = ds.Tables[0].Rows[0]["farmer_id"].ToString();
                    Session["name"] = txtmobile.Text;
                    Session["pwd"] = txtbirth.Text;
                    Session["state"] = state;
                    Session["district"] = district;

                    Response.Redirect("frm_userdashboard.aspx");
                }
           //     else
                {
                    Response.Write("<script type=\"text/javascript\">alert('D.O.B is Invalid !');</script>");
                }
            }
            else
            {
                Response.Write("<script type=\"text/javascript\">alert('Mobile Or Aadhar No is Invalid !');</script>");
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


