using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class Admin_trainer : System.Web.UI.Page
{

    SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Fitness Center Website\App_Data\Database.mdf;Integrated Security=True;Connect Timeout=30");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "select count(Tid) from Trainer";
        cmd.Connection = cn;
        int n = Convert.ToInt32(cmd.ExecuteScalar());
        if (n == 0)
        {
            n++;
            Tid.Text = n.ToString();
            cn.Close();
        }
        else
        {
            cn.Close();
            cn.Open();
            cmd.CommandText = "select Max(Tid) from Trainer";
            cmd.Connection = cn;
            int y = Convert.ToInt32(cmd.ExecuteScalar());
            y++;
            Tid.Text = y.ToString();
        }
        cn.Close();
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "INSERT INTO Trainer VALUES ('" + Tid.Text + "','" + Tname.Text + "','" + Tage.Text + "','" + Temail.Text + "','" + Tphno.Text + "','" + Texp.Text + "','" + Tspecs.Text + "','" + Tavailable.Text + "','" + Image7.ImageUrl + "')";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        clear();
        GridView7.DataBind();
        ClientScript.RegisterStartupScript(Page.GetType(), "Save", "<script language='javascript'> alert('Data Saved')</script>");
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "UPDATE Trainer set Tname='" + Tname.Text + "',Tage='" + Tage.Text + "',Temail='" + Temail.Text + "',Tphno='" + Tphno.Text + "',Texp='" + Texp.Text + "',Tspecs='" + Tspecs.Text + "',Tavailable='" + Tavailable.Text + "',Cimage='" + Image7.ImageUrl + "' where Tid='" + Tid.Text + "'";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        clear();
        GridView7.DataBind();
        ClientScript.RegisterStartupScript(Page.GetType(), "Update", "<script language='javascript'> alert('Record Updated')</script>");
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "DELETE FROM Trainer WHERE Tid = '" + Tid.Text + "'";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        clear();
        GridView7.DataBind();
        ClientScript.RegisterStartupScript(Page.GetType(), "Delete", "<script language='javascript'> alert('Record Deleted')</script>");
    }
    public void clear()
    {
        Tid.Text = "";
        Tname.Text = "";
        Tage.Text = "";
        Temail.Text = "";
        Tphno.Text = "";
        Texp.Text = "";
        Tspecs.Text = "";
        Tavailable.Text = "";
        Image7.ImageUrl = "";
    }

    protected void GridView7_SelectedIndexChanged(object sender, EventArgs e)
    {
        Tid.Text = GridView7.SelectedRow.Cells[1].Text;
        Tname.Text = GridView7.SelectedRow.Cells[2].Text;
        Tage.Text = GridView7.SelectedRow.Cells[3].Text;
        Temail.Text = GridView7.SelectedRow.Cells[4].Text;
        Tphno.Text = GridView7.SelectedRow.Cells[5].Text;
        Texp.Text = GridView7.SelectedRow.Cells[6].Text;
        Tspecs.Text = GridView7.SelectedRow.Cells[7].Text;
        Tavailable.Text = GridView7.SelectedRow.Cells[8].Text;
        Image7.ImageUrl = GridView7.SelectedRow.Cells[9].Text;
        ClientScript.RegisterStartupScript(Page.GetType(), "Save", "<script language='javascript'> alert('Row Selected')</script>");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload7.HasFile == true)
        {
            FileUpload7.SaveAs(Server.MapPath("~//Images//" + FileUpload7.FileName));
            Image7.ImageUrl ="~//Images//"+ FileUpload7.FileName;
        }
    }
}