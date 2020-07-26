using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


public partial class frm_checkresponse : System.Web.UI.Page
{
    DataSet ds = new DataSet();
    function f1 = new function();
    string user = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        user=Session["name"].ToString();
        ds = f1.getrecord("Select * from tbqueries where mob_no='"+user+"' ");
        GridView1.DataSource = ds;
        GridView1.DataBind();

    }
}