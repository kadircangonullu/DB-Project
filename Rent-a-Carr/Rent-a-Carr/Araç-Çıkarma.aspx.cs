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
    public partial class Araç_Çıkarma : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                SqlConnectionClass.CheckConnection();

                SqlCommand komut = new SqlCommand("select Plate, Brand, Model from Vehicles", SqlConnectionClass.connection);
                SqlDataReader okuyucu = komut.ExecuteReader();

                ListBox1.DataSource = okuyucu;
                ListBox1.DataTextField = "Brand";
                ListBox1.DataValueField = "Plate";
                ListBox1.DataBind();

                SqlConnectionClass.connection.Close();
            }

            Button1.Enabled = false;


        }


        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox1.Checked)
            {
                Button1.Enabled = true;
            }
            else
            {
                Button1.Enabled = false;
            }
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            if (ListBox1.SelectedIndex >= 0)
            {
                SqlConnectionClass.CheckConnection();

                SqlCommand komut = new SqlCommand("delete from Vehicles where Plate = @v", SqlConnectionClass.connection);
                komut.Parameters.AddWithValue("@v", ListBox1.SelectedValue);

                try
                {
                    komut.ExecuteNonQuery();
                    ListBox1.Items.RemoveAt(ListBox1.SelectedIndex);
                    Label1.Text = "Kayıt Silindi.";
                    Label1.ForeColor = System.Drawing.Color.Green;
                }
                catch (Exception)
                {
                    Label1.Text = "HATA Kayıt Silinemedi!";
                    Label1.ForeColor = System.Drawing.Color.Red;
                    // Hata detayını loglamak için uygun bir mekanizma ekleyebilirsiniz.
                }
                finally
                {
                    SqlConnectionClass.connection.Close();
                }
            }
            else
            {
                Label1.Text = "Lütfen silmek istediğiniz aracı seçin.";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
        }


    }
}