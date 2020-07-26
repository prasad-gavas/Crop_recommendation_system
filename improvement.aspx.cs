using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class frm_queriesnresponse : System.Web.UI.Page
{
    DataSet ds1 = new DataSet();
    DataSet ds2 = new DataSet();
    function f1 = new function();
    public static string[] arr = new string[2];

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ds1 = f1.getrecord("Select n,p,k,urea,crop1 from fertilizer_dataset where userid='" + Session["userid"] + "'");
            arr[0] = ds1.Tables[0].Rows[0]["crop1"].ToString();
            //GridView1.DataSource = ds1;
            //GridView1.DataBind();

            ds2 = f1.getrecord("Select n1,p1,k1,urea1,crop2 from fertilizer_dataset where userid='" + Session["userid"] + "'");
            arr[1] = ds2.Tables[0].Rows[0]["crop2"].ToString();
            //GridView2.DataSource = ds2;
            //GridView2.DataBind();

            for (int i = 0; i < arr.Length; i++)
            {
                DropDownList1.Items.Add(new ListItem(arr[i], arr[i]));
            }
        }
            


    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedValue == arr[0])
        {
            GridView2.Visible = false;
            GridView1.Visible = true;
            ds1 = f1.getrecord("Select n,p,k,urea,crop1 from fertilizer_dataset where userid='" + Session["userid"] + "'");
            //arr[1] = ds2.Tables[0].Rows[0]["crop2"].ToString();
            GridView1.DataSource = ds1;
            GridView1.DataBind();
        }
        else if (DropDownList1.SelectedValue == arr[1])
        {
            GridView1.Visible = false;
            GridView2.Visible = true;
            ds2 = f1.getrecord("Select n1,p1,k1,urea1,crop2 from fertilizer_dataset where userid='" + Session["userid"] + "'");
            //arr[1] = ds2.Tables[0].Rows[0]["crop2"].ToString();
            GridView2.DataSource = ds2;
            GridView2.DataBind();
        }
    }
}