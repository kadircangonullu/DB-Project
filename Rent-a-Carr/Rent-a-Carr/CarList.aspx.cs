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
    public partial class CarList : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                SqlCommand commandList = new SqlCommand("select * from Vehicles", SqlConnectionClass.connection);

                SqlConnectionClass.CheckConnection();

                SqlDataReader dr = commandList.ExecuteReader();

                DataList1.DataSource = dr;
                DataList1.DataBind();

                dr.Close();
            }

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "Select")
            {
                Label myLabel = (Label)e.Item.FindControl("lbl10p");
                if (myLabel != null)
                {
                    Session["CarID"] = myLabel.Text;
                    System.Diagnostics.Debug.WriteLine($"Session CarID: {Session["CarID"]}");
                    Response.Redirect($"SatınAlma.aspx");
                }
            }
        }

    }
}