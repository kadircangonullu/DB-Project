using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using Rent_a_Carr.Classes;
using System.Data;

namespace Rent_a_Carr
{
    public partial class SatınAlma : System.Web.UI.Page
    {

        string IDD;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
                string IDD = Convert.ToString(Session["CarID"]);
                SqlCommand commandList = new SqlCommand("select * from Vehicles WHERE Plate = @IDD", SqlConnectionClass.connection);
                commandList.Parameters.AddWithValue("@IDD", IDD);

                SqlConnectionClass.CheckConnection();

                SqlDataReader dr = commandList.ExecuteReader();

                DataList1.DataSource = dr;
                DataList1.DataBind();


                dr.Close();
            }
        }

        protected void btnRez_Click(object sender, DataListCommandEventArgs e)
        {

            if (e.CommandName == "rezz")
            {

                TextBox myLabel = (TextBox)e.Item.FindControl("TextBoxPhone");
                if (myLabel != null)
                {
                    SqlConnectionClass.CheckConnection();

                    SqlCommand komut = new SqlCommand("UPDATE Customer SET Plate=@v1 ,IsOwner=@v2 WHERE Telephone = @Telp", SqlConnectionClass.connection);
                    SqlCommand komut3 = new SqlCommand("UPDATE Vehicles SET IsAvailable=@v4 WHERE Plate=@v5", SqlConnectionClass.connection);
                    Session["Tel"] = myLabel.Text;
                    string tell = Convert.ToString(Session["Tel"]);
                    komut.Parameters.AddWithValue("@Telp", tell);
                    komut.Parameters.AddWithValue("@v1", Convert.ToString(Session["CarID"]));
                    komut.Parameters.AddWithValue("@v2", 1);
                    komut3.Parameters.AddWithValue("@v4", 0);
                    komut3.Parameters.AddWithValue("@v5", Convert.ToString(Session["CarID"]));

                    
                    komut.ExecuteNonQuery();
                    komut3.ExecuteNonQuery();

                    Response.Redirect($"CarList.aspx");
                }
            }
        }
    }
}