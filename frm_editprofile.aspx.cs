using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class frm_editprofile : System.Web.UI.Page
{
    function f1 = new function();
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["name"] != null)
            {
                string user = Session["name"].ToString();
                ds = f1.getrecord("select * from tbfarmer where mobile_no='" + user + "'");
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
            else
            {
                Response.Redirect("frm_userlogin.aspx");
            }
        }
        else
        {
        }
    }
    protected void BindGridView()
    {
        string user = Session["name"].ToString();
        ds = f1.getrecord("select * from tbfarmer where mobile_no='" + user + "'");
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {

        GridView1.EditIndex = e.NewEditIndex;
        BindGridView();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
         GridView1.Visible = false;
        // find student id of edit row
        string id = GridView1.DataKeys[e.RowIndex].Value.ToString();
        // find updated values for update
        TextBox name = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtname");
        TextBox birth = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtbirth");
        TextBox mob = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtmob");
        TextBox location = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtlocation");
        //TextBox village = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtvillage");
        TextBox district = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtdistrict");
        TextBox pin = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtpincode");
        TextBox aadhar = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtaadhar");
        TextBox soil = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtsoil");
        TextBox area = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtarea");





        f1.update("update tbfarmer set name='" + name.Text + "',birthdate='" + birth.Text + "',mobile_no='" + mob.Text + "',location='" + location.Text + "',district='" + district.Text + "',pincode='" + pin.Text + "',aadhar='" + aadhar.Text + "',soil_types='" + soil.Text + "',area='" + area.Text + "' where farmer_id='" + id + "' ");
        Response.Write("<script LANGUAGE='JavaScript' >alert('Record Updated Successfully !')</script>");
        GridView1.EditIndex = -1;
        BindGridView();
        GridView1.Visible = true;

    }

    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        BindGridView();
    }
}