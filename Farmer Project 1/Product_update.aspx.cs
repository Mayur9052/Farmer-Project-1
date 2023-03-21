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
    public partial class Product_update : System.Web.UI.Page
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

        public void getData()
        {
            getConnection();
            dataAdapter = new SqlDataAdapter("Select * from Add_product where id = '" + Request.QueryString["Id"] + "'", connection);
            dataSet = new DataSet();
            dataAdapter.Fill(dataSet);

            TextBox1.Text = dataSet.Tables[0].Rows[0][1].ToString();
            TextBox2.Text = dataSet.Tables[0].Rows[0][2].ToString();
            TextBox3.Text = dataSet.Tables[0].Rows[0][3].ToString();
            //TextBox4.Text = dataSet.Tables[0].Rows[0][4].ToString();
            TextBox5.Text = dataSet.Tables[0].Rows[0][5].ToString();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getConnection();
                getData();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Button1.Text == "Update")
            {
                getConnection();
                command = new SqlCommand("Update Add_product set name = '" + TextBox1.Text + "', brand = '" + TextBox2.Text + "', price = '" + TextBox3.Text + "', description = '" + TextBox5.Text + "' where id = '" + Request.QueryString["Id"] + "'", connection);
                command.ExecuteNonQuery();
                Response.Redirect("Product_details.aspx");
            }
        }
    }
}