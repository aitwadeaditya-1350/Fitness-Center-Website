using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Member_Cart : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=E:\\olx\\App_Data\\olx.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter da = new SqlDataAdapter();
    SqlDataReader dr;
    DataSet ds = new DataSet();

    int p, q, t, n;
    int st2, st3, id;
    protected void Page_Load(object sender, EventArgs e)
    {
        custname.Text = Session["user"].ToString();
        cn.Open();
        cmd.CommandText = "select count(Pid) from CartDetails where UserName='" + custname.Text + "'";
        cmd.Connection = cn;
        int c = Convert.ToInt32(cmd.ExecuteScalar());
        cn.Close();
        if (c == 0)
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Error", "<script language='javascript'>alert('Your cart is Empty')</script>");
        }
        else
        {
            n = 0;
            cn.Open();
            cmd.CommandText = "select count(orderId) from [Order]";
            cmd.Connection = cn;
            int y = Convert.ToInt32(cmd.ExecuteScalar());
            cn.Close();
            if (y == 0)
            {
                orderId.Text = "1";
            }
            else
            {
                cn.Open();
                cmd.CommandText = "select max(orderId) from [Order]";
                cmd.Connection = cn;
                n = Convert.ToInt32(cmd.ExecuteScalar());
                cn.Close();
                n++;
                orderId.Text = n.ToString();
            }

            orderDate.Text = System.DateTime.Now.ToShortDateString();
            cn.Open();
            cmd.CommandText = "select sum(Total) from CartDetails where UserName='" + custname.Text + "'";
            cmd.Connection = cn;
            double amt = Convert.ToDouble(cmd.ExecuteScalar());
            total.Text = amt.ToString();
            cn.Close();
            ordertime.Text = System.DateTime.Now.ToShortDateString();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        for (int i = 0; i < GridView1CartDetails.Rows.Count; i++)
        {
            int oid = Convert.ToInt32(orderId.Text);
            id = Convert.ToInt32(GridView1CartDetails.Rows[i].Cells[0].Text);
            string name = Session["user"].ToString();
            string cat = Convert.ToString(GridView1CartDetails.Rows[i].Cells[1].Text);
            string pname = Convert.ToString(GridView1CartDetails.Rows[i].Cells[3].Text);
            string username = Convert.ToString(GridView1CartDetails.Rows[i].Cells[4].Text);

            p = Convert.ToInt32(GridView1CartDetails.Rows[i].Cells[4].Text);
            q = Convert.ToInt32(GridView1CartDetails.Rows[i].Cells[5].Text);
            t = Convert.ToInt32(GridView1CartDetails.Rows[i].Cells[6].Text);

            cn.Open();
            cmd.CommandText = "insert into orderDetails values(" + oid + "," + id + ", '" + name + "', '" + cat + "', '" + pname + "', " + q + ")";
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
            cn.Close();

            cn.Open();
            cmd.CommandText = "select Stock from Product where Product_Id=" + id;
            st2 = Convert.ToInt32(cmd.ExecuteScalar());
            cn.Close();

            int st3 = st2 - q;
            cn.Open();
            cmd.CommandText = "update product set Stock=" + st3 + " where product_Id=" + id;
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
            cn.Close();
        }

        string Status = "In process";
        cn.Open();
        cmd.CommandText = "insert into [order] values(" + orderId.Text + ", '" + custaddress.Text + "', '" + custcontact.Text + "', '" + orderDate.Text + "', '" + Status + "')";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();

        Session["id"] = orderId.Text;
        Session["Total"] = total.Text;

        cn.Open();
        cmd.CommandText = "delete from CartDetails where UserName='" + custname.Text + "'";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        GridView1CartDetails.DataBind();
        cn.Close();

        Response.Redirect("~/Customer/Payment.aspx");
    }

    protected void GridView1CartDetails_SelectedIndexChanged(object sender, EventArgs e)
    {
        string uname = GridView1CartDetails.SelectedRow.Cells[3].Text;
        int id = Convert.ToInt32(GridView1CartDetails.SelectedRow.Cells[0].Text);

        cn.Open();
        cmd.CommandText = "delete from CartDetails where UserName='" + uname + "' and product_Id=" + id;
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        GridView1CartDetails.DataBind();
        cn.Close();
    }
}
