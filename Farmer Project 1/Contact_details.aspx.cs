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
    public partial class Contact_details : System.Web.UI.Page
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
            fillgrid();
        }

        public void fillgrid()
        {
            dataAdapter = new SqlDataAdapter("select * from Contact",connection);
            dataSet = new DataSet();
            dataAdapter.Fill(dataSet);
            GridView1.DataSource = dataSet.Tables[0];
            GridView1.DataBind();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName == "cmd_delete")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                getConnection();
                command = new SqlCommand("Delete from Contact where id = '" + id + "'",connection);
                command.ExecuteNonQuery();

            }
        }
    }
}