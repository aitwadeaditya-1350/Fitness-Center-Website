using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Admin_Category : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Fitness Center Website\App_Data\Database.mdf;Integrated Security=True;Connect Timeout=30");
    SqlCommand cmd = new SqlCommand();


    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "select count(Cid) from Category";
        cmd.Connection = cn;
        int n = Convert.ToInt32(cmd.ExecuteScalar());
        if (n == 0)
        {
            n++;
            Cid.Text = n.ToString();
            cn.Close();
        }
        else
        {
            cn.Close();
            cn.Open();
            cmd.CommandText = "select Max(Cid) from Category";
            cmd.Connection = cn;
            int y = Convert.ToInt32(cmd.ExecuteScalar());
            y++;
            Cid.Text = y.ToString();
        }
        cn.Close();
    }
    public void clear()
    {
        Cid.Text = "";
        Cname.Text = "";
    }

    protected void Image2_Click(object sender, EventArgs e)
    {
        if (FileUpload24.HasFile == true)
        {
            FileUpload24.SaveAs(Server.MapPath("~//Images//" + FileUpload24.FileName));
            Image3.ImageUrl = "~//Images//" + FileUpload24.FileName;

        }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "UPDATE Category SET Cname = '" + Cname.Text + "', Images= '" + Image2.Text + "' WHERE Cid = '" + Cid.Text + "'";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        clear();
        GridView2.DataBind();
        ClientScript.RegisterStartupScript(Page.GetType(), "Update", "<script language='javascript'> alert('Record Updated')</script>");

    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "DELETE FROM Category WHERE Cid = '" + Cid.Text+ "'";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        clear();
        GridView2.DataBind();
        ClientScript.RegisterStartupScript(Page.GetType(), "Delete", "<script language='javascript'> alert('Record Deleted')</script>");
    }


    protected void Button5_Click(object sender, EventArgs e)
    {
        clear();
    }

    protected void Button2_Click(object sender, EventArgs e)
   {
        cn.Open();
        cmd.CommandText = "INSERT INTO Category VALUES ('" + Cid.Text + "','" + Cname.Text + "','" + Image3.ImageUrl +"')";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        clear();
        GridView2.DataBind();
        ClientScript.RegisterStartupScript(Page.GetType(), "Save", "<script language='javascript'> alert('Data Added')</script>");
    }

    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {
        Cid.Text = GridView2.SelectedRow.Cells[1].Text;
        Cname.Text = GridView2.SelectedRow.Cells[2].Text;
        Image3.ImageUrl = GridView2.SelectedRow.Cells[3].Text;
        ClientScript.RegisterStartupScript(Page.GetType(), "Save", "<script language='javascript'> alert('Row Selected')</script>");
    }
    protected void Cname_TextChanged(object sender, EventArgs e)
    {

    }
}