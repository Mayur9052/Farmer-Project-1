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
    public partial class Team_details : System.Web.UI.Page
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
        public void fillgrid()
        {
            dataAdapter = new SqlDataAdapter("select * from Team", connection);
            dataSet = new DataSet();
            dataAdapter.Fill(dataSet);
            GridView1.DataSource = dataSet.Tables[0];
            GridView1.DataBind();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            getConnection();
            fillgrid();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            //if (e.CommandName == "cmd_Delete_Team")
            //{
            //    int id = Convert.ToInt32(e.CommandArgument);
            //    getConnection();
            //    command = new SqlCommand("Delete from Team where id = '" + id + "'", connection);
            //    command.ExecuteNonQuery();
            //    Response.Write("<script>alert('Deleted,,..')</script>");
            //}

            if(e.CommandName == "cmd_Delete_Team")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                getConnection();
                command = new SqlCommand("Delete from Team where id = '" + id + "'", connection);
                command.ExecuteNonQuery();
            }
        }
    }
}