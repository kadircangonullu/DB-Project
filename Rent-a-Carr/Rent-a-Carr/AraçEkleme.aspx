<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AraçEkleme.aspx.cs" Inherits="Rent_a_Carr.AraçEkleme" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!DOCTYPE html>
    <html lang="tr">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Araç Ekleme Formu</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                margin: 0;
                padding: 0;
                background-color: #f4f4f4;
            }

            header {
                background-color: #333;
                color: #fff;
                padding: 1em;
                text-align: center;
            }

            section {
                max-width: 600px;
                margin: 2em auto;
                background-color: #fff;
                padding: 2em;
                border-radius: 8px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            }

            form {
                display: flex;
                flex-direction: column;
            }

            label {
                margin-bottom: 0.5em;
            }

            input, select, button {
                margin-bottom: 1em;
                padding: 8px;
                font-size: 16px;
            }

            .inputt {
                margin-bottom: 1em;
                padding: 8px;
                font-size: 16px;
            }

            button {
                background-color: #333;
                color: #fff;
                cursor: pointer;
            }

            img {
                max-width: 100%;
                height: auto;
                margin-top: 1em;
            }
        </style>
    </head>
    <body>

        <section>
            <form id="carForm" runat="server">
                <label for="brand">Plaka:</label>
                <asp:TextBox CssClass="inputt" ID="TextBox3" runat="server" required="true"></asp:TextBox>

                <label for="brand">Marka:</label>
                <asp:TextBox CssClass="inputt" ID="TextBox1" runat="server" required="true"></asp:TextBox>


                <label for="model">Model:</label>
                <asp:TextBox CssClass="inputt" ID="TextBox2" runat="server" required="true"></asp:TextBox>

                <label for="fuelType">Yakıt Tipi:</label>
                <asp:DropDownList CssClass="inputt" ID="DropDownList1" runat="server" required="true">
                    <asp:ListItem Value="Benzin">Benzin</asp:ListItem>
                    <asp:ListItem Value="Dizel">Dizel</asp:ListItem>
                    <asp:ListItem Value="Elektrik">Elektrik</asp:ListItem>
                    <asp:ListItem Value="Hibrit">Hibrit</asp:ListItem>
                </asp:DropDownList>


                <label for="photo">Fotoğraf:</label>
                <asp:FileUpload ID="FileUpload1" runat="server" Accept="image/*" Required="true" />


                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Kaydet" />
                <br />
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </form>

            <div id="preview">
                <!-- Burada kullanıcının yüklediği fotoğraf önizlemesi görüntülenecek -->
            </div>
        </section>

        <script>
            function saveCar() {
                // Bu fonksiyon aracın bilgilerini alarak kaydetme işlemini gerçekleştirebilir.
                // Gerçek bir proje için sunucu tarafı işlemleri ve güvenlik kontrolleri eklenmelidir.
                alert("Araç başarıyla kaydedildi!");
            }

            document.getElementById("photo").addEventListener("change", function () {
                // Kullanıcının seçtiği fotoğrafın önizlemesini gösterme
                var preview = document.getElementById("preview");
                var fileInput = document.getElementById("photo");
                var file = fileInput.files[0];

                if (file) {
                    var reader = new FileReader();

                    reader.onload = function (e) {
                        preview.innerHTML = '<img src="' + e.target.result + '" alt="Araç Fotoğrafı">';
                    };

                    reader.readAsDataURL(file);
                } else {
                    preview.innerHTML = '';
                }
            });
        </script>

    </body>
    </html>
</asp:Content>
