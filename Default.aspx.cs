//21944 Janaina Gomes da Silva
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Globalization;
using System.Threading;

public partial class _Default : System.Web.UI.Page
{
    public static String CS = ConfigurationManager.ConnectionStrings["MyEcommerceDB"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Request.QueryString["UserLogin"] == "YES")
        {
            Response.Redirect("UserHome.aspx?UserLogin=YES");
        }

        if (Session["Username"] != null)
        {
            

            if (!this.IsPostBack)
            {
                BindProductRepeater();
                
                btnSignIN.Visible = false;
                btnlogout.Visible = true;
            }

        }
        else
        {
            BindProductRepeater();
           
            btnSignIN.Visible = true;
            btnlogout.Visible = false;
           
          

        }

    }


    public void BindCartNumber()
    {
        if (Request.Cookies["CartPID"] != null)
        {
            string CookiePID = Request.Cookies["CartPID"].Value.Split('=')[1];
            string[] ProductArray = CookiePID.Split(',');
            int ProductCount = ProductArray.Length;
            pCount.InnerText = ProductCount.ToString();
        }
        else
        {
            pCount.InnerText = 0.ToString();
        }
    }

    protected void btnlogout_Click(object sender, EventArgs e)
    {
        Session["Username"] = null;
        Session.RemoveAll();
        Response.Redirect("Default.aspx");
    }

    private void BindProductRepeater()
    {
        using (SqlConnection con = new SqlConnection(CS))
        {
            using (SqlCommand cmd = new SqlCommand("procBindAllProducts2", con))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    rptrProducts.DataSource = dt;
                    rptrProducts.DataBind();
                    if (dt.Rows.Count <= 0)
                    {
                        
                        pCount.InnerHtml = "0";
                    }
                    else
                    {
                        
                    }
                }
            }
        }
    }

    protected override void InitializeCulture()
    {
        CultureInfo ci = new CultureInfo("en-PT");
        ci.NumberFormat.CurrencySymbol = "€";
        Thread.CurrentThread.CurrentCulture = ci;

        base.InitializeCulture();
    }
}