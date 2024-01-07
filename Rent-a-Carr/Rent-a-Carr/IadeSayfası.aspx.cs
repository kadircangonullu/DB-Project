using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using Rent_a_Carr.Classes;

namespace Rent_a_Carr
{
    public partial class IadeSayfası : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                SqlCommand commandList = new SqlCommand("SELECT Plate from Customer WHERE Name=@v10", SqlConnectionClass.connection);

                commandList.Parameters.AddWithValue("@v10", Convert.ToString(Session["Userkisi"]));

                SqlConnectionClass.CheckConnection();

                SqlDataReader dr = commandList.ExecuteReader();

                string plateValue = string.Empty;
                if (dr.Read())
                {
                    plateValue = dr["Plate"].ToString();
                }
                dr.Close();

                SqlCommand komut2 = new SqlCommand("SELECT * from Vehicles WHERE Plate=@v1", SqlConnectionClass.connection);

                komut2.Parameters.AddWithValue("@v1", plateValue);

                SqlConnectionClass.CheckConnection();

                SqlDataReader dr2 = komut2.ExecuteReader();

                DataList1.DataSource = dr2;
                DataList1.DataBind();

                dr2.Close();
            }

        }

        protected void btnIade_Click(object sender, DataListCommandEventArgs e)
        {

            if (e.CommandName == "Iade")
            {
                string bosplate = string.Empty;

                SqlConnectionClass.CheckConnection();

                Label myLabel = (Label)e.Item.FindControl("lbl10p");
                if (myLabel != null)
                {
                    Session["CarYedekID"] = myLabel.Text;
                }

                SqlCommand komut = new SqlCommand("UPDATE Customer SET Plate=@v7 ,IsOwner=@v8 WHERE Name=@v11", SqlConnectionClass.connection);

                komut.Parameters.AddWithValue("@v11", Convert.ToString(Session["Userkisi"]));
                komut.Parameters.AddWithValue("@v7", bosplate);
                komut.Parameters.AddWithValue("@v8", 0);

                SqlDataReader dr3 = komut.ExecuteReader();

                dr3.Close();

                SqlCommand komut3 = new SqlCommand("UPDATE Vehicles SET IsAvailable=@v9 WHERE Plate=@v12", SqlConnectionClass.connection);

                komut3.Parameters.AddWithValue("@v9", 1);
                komut3.Parameters.AddWithValue("@v12", Convert.ToString(Session["CarYedekID"]));


                komut3.ExecuteNonQuery();
                

                Response.Redirect($"Deneme1.aspx");

            }
        }
    }
}