using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Admin_AdminLogin : System.Web.UI.Page
{

    SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Fitness Center Website\App_Data\Database.mdf;Integrated Security=True;Connect Timeout=30");
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter da = new SqlDataAdapter();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "select * from Admin where Adminusername='" + Adminusername.Text + "' and Adminpassword='" + Adminpassword.Text + "'";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        da.SelectCommand = cmd;
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "login", "<script language='javascript'>alert('Login successful');</script>");
        }
        else
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "login", "<script language='javascript'>alert('Login failed');</script>");
        }
        cn.Close();

    }
}
