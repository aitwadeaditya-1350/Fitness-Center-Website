using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class User_Registrattion : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Fitness Center Website\App_Data\Database.mdf;Integrated Security=True;Connect Timeout=30");
    SqlCommand cmd = new SqlCommand();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        if(RBmale.Checked==false && RBfemale.Checked==false)
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Save", "<script language='javascript'> alert('Please Choose Gender')</script>");
        }
        else
        {
            cn.Open();
          cmd.CommandText= "INSERT INTO Registration VALUES('" + Uid.Text + "','" + Uname.Text + "','" + Umobno.Text + "','" + Ucity.Text + "',@p1,'" + Username.Text + "','" +Password.Text + "')";
            if(RBmale.Checked==true)
            {
                cmd.Parameters.Add("@p1", RBmale.Text);
            }
            else
            {
                cmd.Parameters.Add("@p1", RBfemale.Text);
            }
        }
        
    }
    protected void Clear()
    {
        Uid.Text = "";
        Uname.Text = "";
        Umobno.Text = "";
        Ucity.Text = "";
        RBmale.Checked =false;
        RBfemale.Checked =false;
        Username.Text = "";
        Password.Text = "";

    }

    protected void btnreset_Click(object sender, EventArgs e)
    {
        Clear();
    }
    protected void id_TextChanged(object sender, EventArgs e)
    {

    }




    protected void Name_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }

    protected void City_TextChanged(object sender, EventArgs e)
    {

    }

    protected void RBmale_CheckedChanged(object sender, EventArgs e)
    {

    }

    protected void RBfemale_CheckedChanged(object sender, EventArgs e)
    {

    }

    protected void Username_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Pass_TextChanged(object sender, EventArgs e)
    {

    }
}