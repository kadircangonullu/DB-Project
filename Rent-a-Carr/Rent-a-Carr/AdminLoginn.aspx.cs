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
    public partial class AdminLoginn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblErrorMessage.Visible = false;
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            SqlConnectionClass.CheckConnection();

            string query = "SELECT COUNT(1) FROM Personel WHERE PersonelName=@AdName AND P_Password=@AdPassword";
            SqlCommand sqlCmd = new SqlCommand(query, SqlConnectionClass.connection);
            sqlCmd.Parameters.AddWithValue("@AdName", txtUsername.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@AdPassword", txtPassword.Text.Trim());
            int count = Convert.ToInt32(sqlCmd.ExecuteScalar());
            if (count == 1)
            {
                Response.Redirect("AraçEkleme.aspx");
            }
            else { lblErrorMessage.Visible = true; }
        }
    }
}