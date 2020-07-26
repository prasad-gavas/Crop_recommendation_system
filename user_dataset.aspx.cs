using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
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
using Accord.MachineLearning.Bayes;
//using Accord.Math.ComplexMatrix;

public partial class frm_changepassword : System.Web.UI.Page
{
    private function f1 = new function();
    private DataSet ds = new DataSet();
    private string pass;
    private string user;
    //Accord.Math.Random.Generator.Seed = 1;
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
        SqlConnection con =
            new SqlConnection(
                "Data Source=(localdb)\\Projects;Initial catalog=Soil_Final;Integrated Security=True;Connect Timeout=30");
        user = Convert.ToString(Session["name"]);
      //  f1.truncate("truncate table user_dataset");
        string ExcelContentType = "application/vnd.ms-excel";
        string Excel2010ContentType = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";
        if (FileUpload1.HasFile)
        {
            //Check the Content Type of the file 
            if (FileUpload1.PostedFile.ContentType == ExcelContentType ||
                FileUpload1.PostedFile.ContentType == Excel2010ContentType)
            {
                //Save file path 
                string path = string.Concat(Server.MapPath("~/TempFiles/"), FileUpload1.FileName);
                //Save File as Temp then you can delete it if you want 
                FileUpload1.SaveAs(path);
                //string path = @"C:\Users\Johnney\Desktop\ExcelData.xls"; 
                //For Office Excel 2010  please take a look to the followng link  http://social.msdn.microsoft.com/Forums/en-US/exceldev/thread/0f03c2de-3ee2-475f-b6a2-f4efb97de302/#ae1e6748-297d-4c6e-8f1e-8108f438e62e 
                string excelConnectionString =
                    string.Format("Provider=Microsoft.ACE.OLEDB.12.0;Data Source={0};Extended Properties=Excel 8.0",
                        path);

                // Create Connection to Excel Workbook 
                using (OleDbConnection connection1 = new OleDbConnection(excelConnectionString))
                {
                    OleDbCommand command = new OleDbCommand("Select * FROM [Sheet2$]", connection1);

                    connection1.Open();
                    DataSet ds = new DataSet();
                    OleDbDataAdapter oda = new OleDbDataAdapter(command);
                    connection1.Close();
                    oda.Fill(ds);
                    DataTable Exceldt = ds.Tables[0];
                    f1.connect();
                    SqlBulkCopy objbulk = new SqlBulkCopy(con);
                    //assigning Destination table name    
                    objbulk.DestinationTableName = "user_dataset";
                    //Mapping Table column    
                    objbulk.ColumnMappings.Add("userid", "userid");
                    objbulk.ColumnMappings.Add("n", "n");
                    objbulk.ColumnMappings.Add("p", "p");
                    objbulk.ColumnMappings.Add("k", "k");
                    objbulk.ColumnMappings.Add("ph", "ph");
                    objbulk.ColumnMappings.Add("ec", "ec");
                    objbulk.ColumnMappings.Add("crop_suggestion", "crop_suggestion");

                    //inserting Datatable Records to DataBase    
                    con.Open();
                    objbulk.WriteToServer(Exceldt);
                    con.Close();
                    Response.Write("<script type=\"text/javascript\">alert('Inserted Successfully');</script>");
                }
            }
        }
    }
    protected void btnchangepassword0_Click(object sender, EventArgs e)
    {
        DataTable data = new DataTable();
        data = f1.getrecord1("select * from dataset");
        if (data.Rows.Count > 0)
        {
            double[][] inputs = data.ToJagged<double>("n", "p", "k", "ph", "ec");
            string[] labels = new string[data.Rows.Count];
            for (int i = 0; i < data.Rows.Count; i++)
            {
                labels[i] = data.Rows[i]["fertility"].ToString();
            }
            var codebook = new Codification("fertility", labels);
            // With the codebook, we can convert the labels:
            int[] outputs = codebook.Translate("fertility", labels);
            C45Learning teacher = new C45Learning();
            var tree = teacher.Learn(inputs, outputs);
            int[] predicted = tree.Decide(inputs);
            DecisionSet rules = tree.ToRules();
            string ruleText = rules.ToString(codebook, "fertility", System.Globalization.CultureInfo.InvariantCulture);
            var cm1 = new GeneralConfusionMatrix(classes: 3, expected: outputs, predicted: predicted);
            //int[,] matrix = cm.Matrix;
            double cm = cm1.Accuracy;
            double cm2 = cm * 100;
            Label1.Text = cm2.ToString();
        }
    }
}