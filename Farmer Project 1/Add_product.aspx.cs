using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Farmer_Project_1
{
    public partial class Add_product : System.Web.UI.Page
    {
        string connection_string = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Users\mayur\source\repos\Farmer Project 1\Farmer Project 1\App_Data\Farmerdb.mdf"";Integrated Security=True";
        SqlConnection connection;
        SqlCommand command;
        SqlDataAdapter dataAdapter;
        DataSet dataSet;

        public void getConnection()
        {
            connection = new SqlConnection(connection_string);
            connection.Open();
        }

        public void upload()
        {
            FileUpload1.SaveAs(Server.MapPath("~/Product_image/" + FileUpload1.FileName));
        }
        public void TextboxEmpty()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox5.Text = "";
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            getConnection();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Button1.Text == "Add")
            {
                getConnection();
                upload();
                command = new SqlCommand("Insert into Add_product(name, brand, price, type, description, image) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "', '"+DropDownList1.SelectedValue.ToString()+"','" + TextBox5.Text + "', '"+"~/Product_image/"+FileUpload1.FileName +"')", connection);
                command.ExecuteNonQuery();
                TextboxEmpty();
                Response.Write("<script>alert('Inserted Successfully...')</script>");
            }
        }
    }
}