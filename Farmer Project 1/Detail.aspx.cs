﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Farmer_Project_1
{
    public partial class Detail : System.Web.UI.Page
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

        public void clear()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(Button1.Text == "Submit")
            {
                getConnection();
                command = new SqlCommand("insert into blog(name, email, subject, comment) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "')", connection);
                command.ExecuteNonQuery();
                clear();
                Response.Write("<script>alert('Inserted Successfully')</script>");
            }
        }
    }
}