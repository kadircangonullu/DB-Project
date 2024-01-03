using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using Rent_a_Carr.Classes;

namespace Rent_a_Carr
{
    public partial class SatınAlma : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand commandList = new SqlCommand("select * from Vehicles", SqlConnectionClass.connection);

            SqlConnectionClass.CheckConnection();

            SqlDataReader dr = commandList.ExecuteReader();

            SqlConnectionClass.CheckConnection();

            DataList1.DataSource = dr;

            DataList1.DataBind();

            dr.Close();
        }
    }
}