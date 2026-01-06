using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Admin_Batch : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Fitness Center Website\App_Data\Database.mdf;Integrated Security=True;Connect Timeout=30");
    SqlCommand cmd = new SqlCommand();


    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "select count(B_id) from Batch";
        cmd.Connection = cn;
        int n = Convert.ToInt32(cmd.ExecuteScalar());
        if (n == 0)
        {
            n++;
            B_id.Text = n.ToString();
            cn.Close();
        }
        else
        {
            cn.Close();
            cn.Open();
            cmd.CommandText = "select Max(B_id) from Batch";
            cmd.Connection = cn;
            int y = Convert.ToInt32(cmd.ExecuteScalar());
            y++;
            B_id.Text = y.ToString();
        }
        cn.Close();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "INSERT INTO Batch VALUES ('" + B_id.Text + "','" + C_name.Text + "','" + b_time.Text + "','" + t_name.Text+ "')";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        clear();
        GridView12.DataBind();
        ClientScript.RegisterStartupScript(Page.GetType(), "Save", "<script language='javascript'> alert('Data Added')</script>");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "UPDATE Batch SET C_name = '" + C_name.Text + "', b_time= '" + b_time.Text+ "',t_name= '" + t_name.Text + "', WHERE Cid = '" + B_id.Text + "'";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        clear();
        GridView12.DataBind();
        ClientScript.RegisterStartupScript(Page.GetType(), "Update", "<script language='javascript'> alert('Record Updated')</script>");
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "DELETE FROM Batch WHERE B_id = '" + B_id.Text + "'";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        clear();
        GridView12.DataBind();
        ClientScript.RegisterStartupScript(Page.GetType(), "Delete", "<script language='javascript'> alert('Record Deleted')</script>");
    }
    public void clear()
    {
        B_id.Text = "";
        C_name.Text = "";
        b_time.Text = "";
        t_name.Text = "";

    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        clear();
    }
}