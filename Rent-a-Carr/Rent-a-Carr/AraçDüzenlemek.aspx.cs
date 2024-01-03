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
    public partial class AraçDüzenlemek : System.Web.UI.Page
    {
        private void doldur()
        {

            SqlConnectionClass.CheckConnection();


            SqlCommand komut = new SqlCommand("select * from Vehicles", SqlConnectionClass.connection);
            SqlDataReader okuyucu = komut.ExecuteReader();

            GridView1.DataSource = okuyucu;
            GridView1.DataBind();
            SqlConnectionClass.connection.Close();

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                doldur();
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            HiddenField1.Value = GridView1.SelectedRow.Cells[1].Text;
            TextBox1.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[2].Text);
            TextBox2.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[3].Text);
            TextBox3.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[4].Text);
            TextBox4.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[5].Text);
            TextBox5.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[6].Text);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnectionClass.CheckConnection();

            SqlCommand komut = new SqlCommand("update Vehicles set Brand=@v2, Model=@v3, Plate=@v4, ProductionYear=@v5 where Plate = @pk", SqlConnectionClass.connection);
            komut.Parameters.AddWithValue("@v2", TextBox1.Text);
            komut.Parameters.AddWithValue("@v3", TextBox2.Text);
            komut.Parameters.AddWithValue("@v4", TextBox3.Text);
            komut.Parameters.AddWithValue("@v5", TextBox4.Text);
            komut.Parameters.AddWithValue("@pk", HiddenField1.Value);

            try
            {
                komut.ExecuteNonQuery();
                doldur();
                Label1.Text = "Güncelleme yapıldı.";
                Label1.ForeColor = System.Drawing.Color.Green;
            }

            catch (Exception)
            {
                Label1.Text = "HATA! Güncelleme yapılamadı!";
                Label1.ForeColor = System.Drawing.Color.Red;
                throw;
            }
            SqlConnectionClass.connection.Close();
        }
    }
}