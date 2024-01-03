﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using Rent_a_Carr.Classes;

namespace Rent_a_Carr
{
    public partial class CarList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand commandList = new SqlCommand("select * from Vehicles",SqlConnectionClass.connection);

            SqlConnectionClass.CheckConnection();

            SqlDataReader dr = commandList.ExecuteReader();

            SqlConnectionClass.CheckConnection();

            DataList1.DataSource = dr;

            DataList1.DataBind();

            dr.Close();
        }

        protected void ProductListRepeater_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "ShowDetails")
            {
                string Plate = e.CommandArgument.ToString();
                // Ürün detaylarını göstermek için yeni sayfaya yönlendir
                Response.Redirect($"SatınAlma.aspx?ProductID={Plate}");
            }
        }

    }
}