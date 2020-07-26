using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using System.Data.SqlClient;

public partial class frm_changepassword : System.Web.UI.Page
{
    private function f1 = new function();
    private DataSet ds = new DataSet();
    private string pass;
    private string user;

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
        f1.truncate("truncate table crop_period");
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
                    OleDbCommand command = new OleDbCommand("Select * FROM [Sheet1$]", connection1);

                    connection1.Open();
                    DataSet ds = new DataSet();
                    OleDbDataAdapter oda = new OleDbDataAdapter(command);
                    connection1.Close();
                    oda.Fill(ds);
                    DataTable Exceldt = ds.Tables[0];
                    f1.connect();
                    SqlBulkCopy objbulk = new SqlBulkCopy(con);
                    //assigning Destination table name    
                    objbulk.DestinationTableName = "crop_period";
                    //Mapping Table column    
                    objbulk.ColumnMappings.Add("Crop", "Crop");
                    objbulk.ColumnMappings.Add("Period", "Period");
                    objbulk.ColumnMappings.Add("Pesticide", "Pesticide");
                    objbulk.ColumnMappings.Add("Fertilizer", "Fertilizer");
                    //objbulk.ColumnMappings.Add("urea", "urea");
                    //objbulk.ColumnMappings.Add("n1", "n1");
                    //objbulk.ColumnMappings.Add("p1", "p1");
                    //objbulk.ColumnMappings.Add("k1", "k1");
                    //objbulk.ColumnMappings.Add("urea1", "urea1");
                    //objbulk.ColumnMappings.Add("crop1", "crop1");
                    //objbulk.ColumnMappings.Add("crop2", "crop2");
                    

                    //inserting Datatable Records to DataBase    
                    con.Open();
                    objbulk.WriteToServer(Exceldt);
                    con.Close();
                    Response.Write("<script type=\"text/javascript\">alert('Inserted Successfully');</script>");
                }
            }
        }
    }
}