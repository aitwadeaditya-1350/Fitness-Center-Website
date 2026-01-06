using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Admin_ManageAdmin : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Fitness Center Website\App_Data\Database.mdf;Integrated Security=True;Connect Timeout=30");
    SqlCommand cmd = new SqlCommand();

    protected void Button1_Click(object sender, EventArgs e)
    {

        cn.Open();
        cmd.CommandText = "INSERT INTO ManageAdmin VALUES ('" + adminname.Text + "','" + adminpassword.Text + "','" + adminrepassword.Text + "')";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        GridView8.DataBind();
        ClientScript.RegisterStartupScript(Page.GetType(), "Save", "<script language='javascript'> alert('Data Saved')</script>");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "UPDATE ManageAdmin set adminname='" + adminname.Text + "', adminpassword='" + adminpassword.Text + "',adminrepassword='" + adminrepassword.Text + "')";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        GridView8.DataBind();
        ClientScript.RegisterStartupScript(Page.GetType(), "Update", "<script language='javascript'> alert('Record Updated')</script>");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "DELETE FROM ManageAdmin WHERE adminname = '" + adminname.Text + "'";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        GridView8.DataBind();
        ClientScript.RegisterStartupScript(Page.GetType(), "Delete", "<script language='javascript'> alert('Record Deleted')</script>");
    }

    protected void GridView8_SelectedIndexChanged(object sender, EventArgs e)
    {
        adminname.Text = GridView8.SelectedRow.Cells[1].Text;
        adminpassword.Text = GridView8.SelectedRow.Cells[2].Text;
        adminrepassword.Text = GridView8.SelectedRow.Cells[3].Text;
        ClientScript.RegisterStartupScript(Page.GetType(), "Save", "<script language='javascript'> alert('Row Selected')</script>");
    }
}