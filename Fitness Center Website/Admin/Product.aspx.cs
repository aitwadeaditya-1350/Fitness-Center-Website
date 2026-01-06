using System;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Admin_Product : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Fitness Center Website\App_Data\Database.mdf;Integrated Security=True;Connect Timeout=30");
    SqlCommand cmd = new SqlCommand();

    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "select count(Pid) from Product";
        cmd.Connection = cn;
        int n = Convert.ToInt32(cmd.ExecuteScalar());
        if (n == 0)
        {
            n++;
            Pid.Text = n.ToString();
            cn.Close();
        }
        else
        {
            cn.Close();
            cn.Open();
            cmd.CommandText = "select Max(Pid) from Product";
            cmd.Connection = cn;
            int y = Convert.ToInt32(cmd.ExecuteScalar());
            y++;
            Pid.Text = y.ToString();
        }
        cn.Close();
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile == true)
        {
            FileUpload1.SaveAs(Server.MapPath("~//Images//" + FileUpload1.FileName));
            Image1.ImageUrl = "~//Images//" + FileUpload1.FileName;
        }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "UPDATE Product set Pcategory='" + Pcategory.Text + "',pname='" + Pname.Text + "',Pprice='" + Pprice.Text + "',Pspecification='" + Pspecs.Text + "',pimage='" + Image1.ImageUrl + "' where Pid='" + Pid.Text + "'";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        clear();
        GridView11.DataBind();
        ClientScript.RegisterStartupScript(Page.GetType(), "Update", "<script language='javascript'> alert('Record Updated')</script>");
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "DELETE FROM Product WHERE Pid = '" + Pid.Text + "'";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        clear();
        GridView11.DataBind();
        ClientScript.RegisterStartupScript(Page.GetType(), "Delete", "<script language='javascript'> alert('Record Deleted')</script>");
    }

    protected void GridView11_SelectedIndexChanged(object sender, EventArgs e)
    {
        Pid.Text = GridView11.SelectedRow.Cells[1].Text;
        Pcategory.Text = GridView11.SelectedRow.Cells[2].Text;
        Pname.Text = GridView11.SelectedRow.Cells[3].Text;
        Pprice.Text = GridView11.SelectedRow.Cells[4].Text;
        Pstock.Text = GridView11.SelectedRow.Cells[5].Text;
        Pspecs.Text = GridView11.SelectedRow.Cells[6].Text;
        Image1.ImageUrl = GridView11.SelectedRow.Cells[7].Text;


        ClientScript.RegisterStartupScript(Page.GetType(), "Save", "<script language='javascript'> alert('Row Selected')</script>");
    }

    

 

    public void clear()
    {
        Pid.Text = "";
        Pname.Text = "";
        Pprice.Text = "";
        Pstock.Text = "";
        Pspecs.Text = "";
        Image1.ImageUrl = "";
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        clear();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "INSERT INTO Product VALUES ('"+ Pid.Text + "','" + Pcategory.Text + "','" + Pname.Text + "','"+ Pprice.Text + "','"+ Pstock.Text + "','" + Pspecs.Text + "','" + Image1.ImageUrl + "')";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        clear();
        GridView11.DataBind();
        ClientScript.RegisterStartupScript(Page.GetType(), "Save", "<script language='javascript'> alert('Data Saved')</script>");

    }

  
}
