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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblErrorMessage.Visible = false;
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            SqlConnectionClass.CheckConnection();
            string query = "SELECT COUNT(1) FROM Customer WHERE Name=@Name AND Password=@Password";
            SqlCommand sqlCmd = new SqlCommand(query, SqlConnectionClass.connection);
            sqlCmd.Parameters.AddWithValue("@Name", txtUsername.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@Password", txtPassword.Text.Trim());
            int count = Convert.ToInt32(sqlCmd.ExecuteScalar());
            if (count == 1)
            {
                Session["Name"] = txtUsername.Text.Trim();
                Response.Redirect("Deneme1.aspx");
            }
            else { lblErrorMessage.Visible = true; }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnectionClass.CheckConnection();

            SqlCommand komut = new SqlCommand("insert into Customer (Name,Surname,Password,Telephone) values(@v1,@v2,@v3,@v4)", SqlConnectionClass.connection);
            komut.Parameters.AddWithValue("@v1", TextBox1.Text);
            komut.Parameters.AddWithValue("@v2", TextBox2.Text);
            komut.Parameters.AddWithValue("@v3", TextBox3.Text);
            komut.Parameters.AddWithValue("@v4", TextBox4.Text);

            try
            {
                komut.ExecuteNonQuery();
                Label1.Text = "Kayıt Yapıldı.";
                Label1.ForeColor = System.Drawing.Color.Green;
            }
            catch (Exception)
            {
                Label1.Text = "Hata Oluştu!";
                Label1.ForeColor = System.Drawing.Color.Red;
                throw;
            }
        }
    }
}