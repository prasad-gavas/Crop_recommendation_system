using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Net;
using System.Web.Script.Serialization;

public class WeatherInfo
{
    public City city { get; set; }
    public List<List> list { get; set; }
}
public class City
{
    public string name { get; set; }
    public string country { get; set; }
}
public class Temp
{
    public double day { get; set; }
    public double min { get; set; }
    public double max { get; set; }
    public double night { get; set; }
}
public class Weather
{
    public string description { get; set; }
    public string icon { get; set; }
}
public class List
{
    public Temp temp { get; set; }
    public int humidity { get; set; }
    public List<Weather> weather { get; set; }
}

public partial class frm_suggestion : System.Web.UI.Page
{
    DataSet ds = new DataSet();
    function f1 = new function();
    string min, max, day, night;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] != null)
        {
            if (!IsPostBack)
            {
                ddlcrop.Items.Insert(0, new ListItem("Select", ""));
                ds = f1.getrecord("select crop from tbrequirements");
                ddlcrop.DataSource = ds;
                ddlcrop.DataTextField = "crop";
                ddlcrop.DataValueField = "crop";
                ddlcrop.DataBind();
            }

            string district = Session["district"].ToString();
            string appId = "7fa452992a30a1b2f7e9fa05b06a33a2";
            string url = string.Format("http://api.openweathermap.org/data/2.5/forecast/daily?q={0}&units=metric&cnt=1&APPID={1}", district.Trim(), appId);
            using (WebClient client = new WebClient())
            {
                string json = client.DownloadString(url);
                WeatherInfo weatherInfo = (new JavaScriptSerializer()).Deserialize<WeatherInfo>(json);
                lblCity_Country.Text = weatherInfo.city.name + "," + weatherInfo.city.country;
                imgCountryFlag.ImageUrl = string.Format("http://openweathermap.org/images/flags/{0}.png", weatherInfo.city.country.ToLower());
                lblDescription.Text = weatherInfo.list[0].weather[0].description;
                imgWeatherIcon.ImageUrl = string.Format("http://openweathermap.org/img/w/{0}.png", weatherInfo.list[0].weather[0].icon);
                lblTempMin.Text = string.Format("{0}°С", Math.Round(weatherInfo.list[0].temp.min, 1));
                lblTempMax.Text = string.Format("{0}°С", Math.Round(weatherInfo.list[0].temp.max, 1));
                lblTempDay.Text = string.Format("{0}°С", Math.Round(weatherInfo.list[0].temp.day, 1));
                lblTempNight.Text = string.Format("{0}°С", Math.Round(weatherInfo.list[0].temp.night, 1));
                lblHumidity.Text = weatherInfo.list[0].humidity.ToString();
                tblWeather.Visible = true;
                min = Convert.ToString(Math.Round(weatherInfo.list[0].temp.min, 1));
                max = Convert.ToString(Math.Round(weatherInfo.list[0].temp.max, 1));
                day = Convert.ToString(Math.Round(weatherInfo.list[0].temp.day, 1));
                night = Convert.ToString(Math.Round(weatherInfo.list[0].temp.night, 1));
            }
        }
        else
        {
            Response.Redirect("frm_userlogin.aspx");
        }
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        if (ddlcrop.SelectedItem.Text == "Cotton")
        {
            lblsoiltype.Text = "Black Soil";
        }
        ds = f1.getrecord("select water,season from tbrequirements where crop='"+ddlcrop.Text+"' and soiltype='"+lblsoiltype.Text+"'");
        lblwaterreq.Text = ds.Tables[0].Rows[0]["water"].ToString() + " " + "mm";
        lblseason.Text=ds.Tables[0].Rows[0]["season"].ToString();
    }
    protected void ddlcrop_SelectedIndexChanged(object sender, EventArgs e)
    {
        ds = f1.getrecord("select soiltype from tbrequirements where crop='"+ddlcrop.Text+"'");
        lblsoiltype.Text=ds.Tables[0].Rows[0]["soiltype"].ToString();
    }
}