using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication5
{
    public class Database
    {
        string ConnectString = ConfigurationManager.ConnectionStrings["AAA"].ConnectionString;
        SqlConnection con;
        public SqlDataReader myReader { get; set; }

        public Database()
        {

        }

        public SqlConnection OpenCon()
        {
            con = new SqlConnection(ConnectString);
            con.Open();
            return con;
        }

        public void CloseCon()
        {
            con.Close();
        }

        public void ExecuteQueries(string Query_)
        {
            SqlCommand cmd = new SqlCommand(Query_, con);
            cmd.ExecuteNonQuery();
        }

        public SqlDataReader DataRead(string Query_)
        {
            SqlCommand cmd = new SqlCommand(Query_, con);
            myReader = cmd.ExecuteReader();
            return myReader;
        }

        public object myGrid(string Query_)
        {
            SqlDataAdapter rd = new SqlDataAdapter(Query_, ConnectString);
            DataSet ds = new DataSet();
            rd.Fill(ds);
            object dataum = ds.Tables[0];
            return dataum;
        }

        public void Link()
        {
            con = new SqlConnection(@"Data Source=sql8001.site4now.net;Initial Catalog=db_a8e694_agridigital12;Persist Security Info=True;User ID=db_a8e694_agridigital12_admin;Password=AgriDigital@12");
        }
    }
}