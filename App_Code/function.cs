using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

/// <summary>
/// Summary description for Class1
/// </summary>
public class function
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataAdapter da = new SqlDataAdapter();


    public function()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public void connect()
    {
        //con = new SqlConnection("Data Source=SEDNA\\SQLEXPRESS;AttachDbFilename=D:\\Soil\\dbsoil.mdf;Integrated Security=True");
        con = new SqlConnection("Data Source=(localdb)\\Projects;Initial catalog=Soil_Final;Integrated Security=True;Connect Timeout=30");
        con.Open();
    }
    public void disconnect()
    {
        con.Close();
    }
    public DataSet getrecord(string str)
    {
        connect();
        SqlDataAdapter da = new SqlDataAdapter(str, con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        disconnect();
        return ds;

    }
    public DataTable getrecord1(string str)
    {
        connect();
        SqlDataAdapter da = new SqlDataAdapter(str, con);
        DataTable ds1 = new DataTable();
        da.Fill(ds1);
        disconnect();
        return ds1;

    }
    public void insert(string str)
    {
        connect();
        cmd = new SqlCommand(str, con);
        cmd.ExecuteNonQuery();
        disconnect();
    }
    public void update(string str)
    {
        connect();
        cmd = new SqlCommand(str, con);
        cmd.ExecuteNonQuery();
        disconnect();
    }
    public void delete(string str)
    {
        connect();
        cmd = new SqlCommand(str, con);
        cmd.ExecuteNonQuery();
        disconnect();
    }
    public void truncate(string str)
    {
        connect();
        cmd = new SqlCommand(str, con);
        cmd.ExecuteNonQuery();
        disconnect();
    }


}