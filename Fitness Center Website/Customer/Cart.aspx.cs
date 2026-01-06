using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Customer_Cart : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Fitness Center Website\App_Data\Database.mdf;Integrated Security=True;Connect Timeout=30");
    SqlCommand cmd = new SqlCommand();
    int q;

    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void Button2_Click1(object sender, EventArgs e)
    {
        int count = DataList1.Items.Count;

        for (int i = 0; i < count; i++)
        {
            Label Pname = DataList1.Items[i].FindControl("Pname") as Label;
            string name = Pname.Text;

            Label Pprice = DataList1.Items[i].FindControl("Pprice") as Label;
            double p = Convert.ToDouble(Pprice.Text);

            Label Pcategory = DataList1.Items[i].FindControl("Pcategory") as Label;
            string cat = Pcategory.Text;

            DropDownList d = DataList1.Items[i].FindControl("Quantity") as DropDownList;
            Label Total = DataList1.Items[i].FindControl("Total") as Label;
            string l = (Session["user"] != null) ? Session["user"].ToString() : string.Empty;

            if (Total.Text == "")
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "Submit", "<script>alert('Please select quantity');</script>");
            }
            else
            {
                int q;
                if (!int.TryParse(d.SelectedValue, out q))
                {
                    ClientScript.RegisterStartupScript(Page.GetType(), "Submit", "<script>alert('Invalid quantity selected');</script>");
                    return;
                }

                double tot = Convert.ToDouble(Total.Text);

                cn.Open();
                cmd = new SqlCommand("INSERT INTO CartDetails (m_username, P_name, P_category, P_cost, quantity, Total) VALUES ('" + l + "', '" + name + "', '" + cat + "', " + p + ", " + q + ", " + tot + ")", cn);
                cmd.Connection = cn;
                cmd.ExecuteNonQuery();
                cn.Close();

                ClientScript.RegisterStartupScript(Page.GetType(), "Submit", "<script>alert('Item Added to Cart');</script>");
            }
        }
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        int count = DataList1.Items.Count;

        for (int i = 0; i < count; i++)
        {
            Label Pprice = DataList1.Items[i].FindControl("Pprice") as Label;
            double p = Convert.ToDouble(Pprice.Text);

            DropDownList d = DataList1.Items[i].FindControl("Quantity") as DropDownList;
            Label Pstock = DataList1.Items[i].FindControl("Pstock") as Label;
            Label Total = DataList1.Items[i].FindControl("Total") as Label;

            int q;
            if (!int.TryParse(d.SelectedValue, out q))
            {
                q = 0;
            }

            int st = Convert.ToInt32(Pstock.Text);

            if (q > st)
            {
                Total.Text = "";
                ClientScript.RegisterStartupScript(Page.GetType(), "Submit", "<script>alert('Insufficient Stock...!');</script>");
            }
            else
            {
                double t = (p * q);
                Total.Text = t.ToString();
            }
        }
    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }

}
