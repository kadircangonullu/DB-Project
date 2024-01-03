using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using Rent_a_Carr.Classes;
using System.IO;

namespace Rent_a_Carr
{
    public partial class AraçEkleme : System.Web.UI.Page
    {



        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnectionClass.CheckConnection();

            SqlCommand komut = new SqlCommand("insert into Vehicles (Brand,Model,Plate,FuelType,Photo) values(@v1,@v2,@v3,@v4,@v5)", SqlConnectionClass.connection);
            komut.Parameters.AddWithValue("@v1", TextBox1.Text);
            komut.Parameters.AddWithValue("@v2", TextBox2.Text);
            komut.Parameters.AddWithValue("@v3", TextBox3.Text);
            komut.Parameters.AddWithValue("@v4", DropDownList1.SelectedValue);
            komut.Parameters.AddWithValue("@v5", FileUpload1.FileName);

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