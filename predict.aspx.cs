using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using ProbabilityFunctions;
using System.Data.SqlClient;
using Accord;
using Accord.IO;
using Accord.MachineLearning.DecisionTrees;
using Accord.MachineLearning.DecisionTrees.Learning;
using Accord.Math;
using Accord.Statistics.Analysis;
using AForge;
using Accord.MachineLearning.DecisionTrees.Rules;
using Accord.Statistics.Filters;

public partial class frm_rainfall : System.Web.UI.Page
{
    private function f1 = new function();
    private DataSet ds = new DataSet();
    public static double n, p, k, ph, ec;
    public string month;
    public string predict;
    public static string[] aar;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] != null)
        {
            if (!IsPostBack)
            {
                SqlConnection con = new SqlConnection("Data Source=(localdb)\\Projects;Initial catalog=Soil_Final;Integrated Security=True;Connect Timeout=30");
                SqlCommand cmd = new SqlCommand("Select DISTINCT month from rainfall", con);
                //cmd.Parameters.AddWithValue("islands", ddstate.SelectedValue);
                SqlDataAdapter adpt = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                adpt.Fill(dt);
                DropDownList1.DataSource = dt;
                DropDownList1.DataBind();
                DropDownList1.DataTextField = "month";
                DropDownList1.DataValueField = "month";
                DropDownList1.DataBind();
                lblstate.Text = Session["state"].ToString();
                lbldistrict.Text = Session["district"].ToString();

                SqlCommand cmd1 = new SqlCommand("select * from  [dbo].[user_dataset] where userid=@userid", con);
                cmd1.Parameters.AddWithValue("@userid", Session["userid"].ToString());
                SqlDataAdapter adpt1 = new SqlDataAdapter(cmd1);
                DataTable dt1 = new DataTable();
                adpt1.Fill(dt1);
                if (dt1.Rows.Count > 0)
                {
                    txtN.Text = dt1.Rows[0]["n"].ToString();
                    txtP.Text = dt1.Rows[0]["p"].ToString();
                    txtK.Text = dt1.Rows[0]["k"].ToString();
                    txtPh.Text = dt1.Rows[0]["ph"].ToString();
                    txtec.Text = dt1.Rows[0]["ec"].ToString();

                    string a = dt1.Rows[0]["crop_suggestion"].ToString();
                    aar = a.Split(',', '\n');
                }





            }
        }

        else
        {
            Response.Redirect("frm_userlogin.aspx");
        }

    }

    protected void btnshow_Click(object sender, EventArgs e)
    {
        quality.Visible = true;
        DataTable _dataTable = new DataTable();
        Panel1.Visible = true;
        n = Convert.ToDouble(txtN.Text);
        p = Convert.ToDouble(txtP.Text);
        k = Convert.ToDouble(txtK.Text);
        ph = Convert.ToDouble(txtPh.Text);
        ec = Convert.ToDouble(txtec.Text);
        _dataTable = f1.getrecord1("select * from dataset");

        double[][] inputs = _dataTable.ToJagged<double>("n", "p", "k", "ph", "ec");
        string[] labels = new string[_dataTable.Rows.Count];
        for (int i = 0; i < _dataTable.Rows.Count; i++)
        {
            labels[i] = _dataTable.Rows[i]["fertility"].ToString();
        }
        var codebook = new Codification("fertility", labels);
        // With the codebook, we can convert the labels:
        int[] outputs = codebook.Translate("fertility", labels);
        C45Learning teacher = new C45Learning();
        var tree = teacher.Learn(inputs, outputs);
        double[][] input_test =
        {
            new double[] {n,p,k,ph,ec},
        };

        

        int[] val = tree.Decide(input_test);

        if (val[0] == 0)
        {
            quality.Text = "Low";
        }
        else if (val[0] == 1)
        {
            quality.Text = "Medium";
        }
        else
        {
            quality.Text = "High";
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {

        Label7.Visible = true;
        SqlConnection conn =
            new SqlConnection(
                "Data Source=(localdb)\\Projects;Initial catalog=Soil_Final;Integrated Security=True;Connect Timeout=30");
        using (
            SqlCommand cmd1 =
                new SqlCommand(
                    "select month,avg(rain) as rain from dbo.rainfall where state=@islands and district=@place and month =@month group by month",
                    conn))
        {

            DataTable dt1 = new DataTable();
            cmd1.Parameters.AddWithValue("@islands", Session["state"]);
            cmd1.Parameters.AddWithValue("@place", Session["district"]);
            cmd1.Parameters.AddWithValue("@month", DropDownList1.SelectedValue);
            //cmd1.Parameters.AddWithValue("@c_ward_id", DropDownList1.SelectedValue);
            using (SqlDataAdapter adp1 = new SqlDataAdapter(cmd1))
            {
                adp1.Fill(dt1);
            }
            month = dt1.Rows[0]["month"].ToString();
            predict = dt1.Rows[0]["rain"].ToString();
            Label7.Text = predict.ToString();
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        int value;
        if (quality.Text == "Low")
        {
            value = 0;
        }
        else if (quality.Text == "Medium")
        {
            value = 1;
        }
        else
        {
            value = 2;
        }
        SqlConnection con = new SqlConnection("Data Source=(localdb)\\Projects;Initial catalog=Soil_Final;Integrated Security=True;Connect Timeout=30");
        SqlCommand cmd = new SqlCommand("select distinct(crop),min_rainfall,max_rainfall,fertility from rainwise_crop where fertility=@fertility", con);
        cmd.Parameters.AddWithValue("@fertility", value);
        SqlDataAdapter adpt = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        adpt.Fill(dt);
        double c = Convert.ToDouble(Label7.Text);
        DataTable table = new DataTable();
        DataTable table1 = new DataTable();// New data table.
        table.Columns.Add("Crops", typeof(string));
        table1.Columns.Add("Crop", typeof(string));
        table1.Columns.Add("Period", typeof(string));
        table1.Columns.Add("Pesticide", typeof(string));
        table1.Columns.Add("Fertilizer", typeof(string));

        foreach (DataRow dr in dt.Rows)
        {
            if ((dr["min_rainfall"] != DBNull.Value) && (dr["max_rainfall"] != DBNull.Value))
            {
                double a = Convert.ToDouble(dr["min_rainfall"]);
                double b = Convert.ToDouble(dr["max_rainfall"]);

                if (a <= c && c <= b)
                {
                    table.Rows.Add(dr["crop"]);
                }
            }

        }
        //for (int i = 1; i < aar.Length; i++)
        //{
        //    table.Rows.Add(aar[i]);
        //}


        for (int j = 0; j < table.Rows.Count;j++ )
        {
            string crop = table.Rows[j]["Crops"].ToString();
            using(SqlCommand cmd1= new SqlCommand("select * from crop_period where crop=@crop",con))
            {
                cmd1.Parameters.AddWithValue("@crop", crop);
                using(SqlDataAdapter adp1= new SqlDataAdapter(cmd1))
                {
                    DataTable dt1 = new DataTable();
                    adp1.Fill(dt1);
                    if(dt1.Rows.Count>0)
                    {
                       table1.Merge(dt1);
                    }
                    else
                    {
                        DataRow row = table1.NewRow();
                        row["Crop"] = crop;
                        row["Period"] = "-";
                        row["Pesticide"] = "-";
                        row["Fertilizer"] = "-";

                        table1.Rows.Add(row);
                    }
                }
            }
        }

        GridView1.DataSource = table1;
        GridView1.DataBind();

    }
}