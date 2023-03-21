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
    public partial class AdminLogin : System.Web.UI.Page
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
        protected void Page_Load(object sender, EventArgs e)
        {
            getConnection();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //Response.Redirect("UserSignup.aspx");
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            getConnection();
            dataAdapter = new SqlDataAdapter("select count(*) from admin where username='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'", connection);
            DataTable dt = new DataTable();
            dataAdapter.Fill(dt);
            if (dt.Rows[0][0].ToString() == "1")
            {
                Session["username"] = TextBox1.Text; // session start
                Response.Redirect("Dashboard.aspx");
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Invalid User Username and password')", true);

            }
        }
    }
}