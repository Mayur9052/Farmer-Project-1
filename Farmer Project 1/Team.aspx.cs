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
    public partial class Team : System.Web.UI.Page
    {
        string connection_string = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Users\mayur\source\repos\Farmer Project 1\Farmer Project 1\App_Data\Farmerdb.mdf"";Integrated Security=True";
        SqlConnection connection;
        SqlCommand command;
        SqlDataAdapter dataAdapter;
        DataSet dataSet;
        string gender;

        public void getConnection()
        {
            connection = new SqlConnection(connection_string);
            connection.Open();
        }

        public void clear()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            gender = "";
        }

        public void Team_Image()
        {
            FileUpload1.SaveAs(Server.MapPath("~/Team_Images/" + FileUpload1.FileName));
        }

        public void Team_Gender()
        {
            if(RadioButtonList1.Text == "Male")
            {
                gender = "Male";
            }
            else if (RadioButtonList1.Text == "Female")
            {
                gender = "Female";
            }
            else
            {
                gender = "Others";
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(Button1.Text == "Create")
            {
                getConnection();
                Team_Image();
                Team_Gender();

                command = new SqlCommand("Insert into Team(firstname, lastname, gender, email, designation, description, userimage) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + gender + "', '" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "', '" + "~/Team_Images/" + FileUpload1.FileName + "')", connection);
                command.ExecuteNonQuery();
                clear();
                Response.Write("<script>alert('Inserted...')</script>");
            }
        }
    }
}