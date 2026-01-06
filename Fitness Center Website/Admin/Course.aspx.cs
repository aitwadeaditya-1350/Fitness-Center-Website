using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Admin_Course : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Fitness Center Website\App_Data\Database.mdf;Integrated Security=True;Connect Timeout=30");
    SqlCommand cmd = new SqlCommand();

    protected void Page_Load(object sender, EventArgs e)
    {
    }

   

    protected void Button1_Click1(object sender, EventArgs e)
    {
        if (FileUpload5.HasFile == true)
        {
            FileUpload5.SaveAs(Server.MapPath("~//Images//" + FileUpload5.FileName));
            Image5.ImageUrl = "~//Images//" + FileUpload5.FileName;
        }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "INSERT INTO Course VALUES ('"+Cid.Text +"','" + Cname.Text + "','" + Ccategory.Text + "','" + Cdescription.Text + "','" + Cduration.Text + "','" + Cfee.Text + "','" + Ctrainer.Text + "','" + Cschedule.Text + "','" + Cparticipants.Text + "','" + Image5.ImageUrl + "')";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        clear();
        GridView1.DataBind();
        ClientScript.RegisterStartupScript(Page.GetType(), "Save", "<script language='javascript'> alert('Data Saved')</script>");
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "UPDATE Course set Ccategory='" + Ccategory.Text + "',Cname='" + Cname.Text + "',Cdescription='" + Cdescription.Text + "',Cduration='" + Cduration.Text + "',Cfee='" + Cfee.Text + "',Ctranier='" + Ctrainer.Text + "',Cschedule='" + Cschedule.Text + "',Cpraticipants='" + Cparticipants.Text + "',Cimage='" + Image5.ImageUrl + "' where Cid='" + Cid.Text + "'";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        clear();
        GridView1.DataBind();
        ClientScript.RegisterStartupScript(Page.GetType(), "Update", "<script language='javascript'> alert('Record Updated')</script>");
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "DELETE FROM Course WHERE Cid = '" + Cid.Text + "'";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        clear();
        GridView1.DataBind();
        ClientScript.RegisterStartupScript(Page.GetType(), "Delete", "<script language='javascript'> alert('Record Deleted')</script>");
    }

    public void clear()
    {
        Cid.Text = "";
        Cname.Text = "";
        Ccategory.Text = "";
        Cdescription.Text = "";
        Cfee.Text = "";
        Cschedule.Text = "";
        Cparticipants.Text = "";
        Image5.ImageUrl = "";
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        clear();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "select count(Cid) from Course";
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
            cmd.CommandText = "select Max(Cid) from Course";
            cmd.Connection = cn;
            int y = Convert.ToInt32(cmd.ExecuteScalar());
            y++;
            Cid.Text = y.ToString();
        }
        cn.Close();
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Cid.Text = GridView1.SelectedRow.Cells[1].Text;
        Cname.Text = GridView1.SelectedRow.Cells[2].Text;
        Ccategory.Text = GridView1.SelectedRow.Cells[3].Text;
        Cdescription.Text = GridView1.SelectedRow.Cells[4].Text;
        Cduration.Text = GridView1.SelectedRow.Cells[5].Text;
        Cfee.Text = GridView1.SelectedRow.Cells[6].Text;
        Ctrainer.Text = GridView1.SelectedRow.Cells[7].Text;
        Cschedule.Text = GridView1.SelectedRow.Cells[8].Text;
        Cparticipants.Text = GridView1.SelectedRow.Cells[9].Text;
        Image5.ImageUrl = GridView1.SelectedRow.Cells[10].Text;


        ClientScript.RegisterStartupScript(Page.GetType(), "Save", "<script language='javascript'> alert('Row Selected')</script>");
    }
}