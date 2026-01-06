using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Member_Feedback : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Fitness Center Website\App_Data\Database.mdf;Integrated Security=True;Connect Timeout=30");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "INSERT INTO feedback VALUES ('" + m_username.Text + "','" + f_date.Text + "','" + f_subject.Text + "','" + rating.Text + "','" + comment.Text + "')";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        clear();
        ClientScript.RegisterStartupScript(Page.GetType(), "Save", "<script language='javascript'> alert('Data Added')</script>");
    }
    public void clear()
    {
        m_username.Text = "";
        f_date.Text = "";
        f_subject.Text = "";
        rating.Text = "";
        comment.Text = "";
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        clear();
    }
}