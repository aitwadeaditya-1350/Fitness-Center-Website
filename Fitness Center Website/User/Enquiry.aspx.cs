using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class User_Enquiry : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Fitness Center Website\App_Data\Database.mdf;Integrated Security=True");
    SqlCommand cmd = new SqlCommand();


    protected void Button1_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "INSERT INTO Enquiry VALUES ('" +Name.Text + "', '" +Email.Text + "', " +Phone.Text + ", '" +Subject.Text + "', '" + Message.Text + "')";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        clear();
        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Data stored successfully!');", true);

    }

    protected void clear()
    {
        Name.Text = "";
        Email.Text = "";
        Phone.Text = "";
        Subject.Text = "";
        Message.Text = "";

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        clear();
    }

    protected void txtName_TextChanged(object sender, EventArgs e)
    {

    }

    protected void txtPhone_TextChanged(object sender, EventArgs e)
    {

    }

    protected void txtMessage_TextChanged(object sender, EventArgs e)
    {

    }

    protected void txtEmail_TextChanged(object sender, EventArgs e)
    {

    }

    protected void txtSubject_TextChanged(object sender, EventArgs e)
    {

    }
}