using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class frm_rainfall : System.Web.UI.Page
{
    function f1 = new function();
    DataSet ds = new DataSet();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] != null)
        {
            int rain;
            int total = 0;
            string district = Session["district"].ToString();
            string Month = DateTime.Now.ToString("MMMM");
            ds = f1.getrecord("select [Total RainFall] from tbrainfall$ where District='"+district+"' and month='"+Month+"' ");
            for (int i = 0; i <= ds.Tables[0].Rows.Count - 1; i++)
            {
                 rain = Convert.ToInt16(ds.Tables[0].Rows[i][0]);
                 total = total + rain;
                 //lblvalue.Text = total.ToString();
            }
            int count=Convert.ToInt16(ds.Tables[0].Rows.Count);
            int final = total / count;
            lblvalue.Text = final.ToString();
        }
        else
        {
            Response.Redirect("frm_userlogin.aspx");
        }
     
    }
    protected void btnshow_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        if (ddldistrict.Text != "Select" && ddlyear.Text != "Select" && ddlmonth.Text != "Select")
        {
            ds = f1.getrecord("select * from tbrainfall$ where District='"+ ddldistrict.SelectedItem.Text +"' and year='"+ ddlyear.SelectedItem.Text +"' and month='"+ ddlmonth.SelectedItem.Text +"'");
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        else
        {
            Response.Write("<script type=\"text/javascript\">alert('Select district month and year !');</script>");
        }
        ddldistrict.ClearSelection();
        ddlyear.ClearSelection();
        ddlmonth.ClearSelection();
    }

    protected void ddldistrict_SelectedIndexChanged(object sender, EventArgs e)
    {
        lbldistrict.Text ="Selected District :" + " " + ddldistrict.SelectedItem.Text;
    }
    protected void ddlyear_SelectedIndexChanged(object sender, EventArgs e)
    {
        lblyear.Text = "Selected Year :" + " " + ddlyear.SelectedItem.Text;
    }
    protected void ddlmonth_SelectedIndexChanged(object sender, EventArgs e)
    {
        lblmonth.Text = "Selected Month :" + " " + ddlmonth.SelectedItem.Text;
    }
}