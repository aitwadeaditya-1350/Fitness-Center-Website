using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class User_Login : System.Web.UI.Page
{

    SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Fitness Center Website\App_Data\Database.mdf;Integrated Security=True");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText= "INSERT INTO UserLogin VALUES('" + Username.Text + "','" + Password.Text + "')";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        clear();
        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Login successfully!');", true);
    }
    protected void clear()
    {
        Username.Text = "";
        Password.Text = "";
    }
}