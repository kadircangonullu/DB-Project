<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPanel.aspx.cs" Inherits="Rent_a_Carr.AdminPanel" %>

<html lang="tr">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Araç Kiralama Admin Paneli</title>
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

    nav {
      background-color: #444;
      color: #fff;
      padding: 1em;
      text-align: center;
    }

    nav a {
      color: #fff;
      text-decoration: none;
      margin: 0 1em;
    }

    section {
      max-width: 600px;
      margin: 2em auto;
      background-color: #fff;
      padding: 2em;
      border-radius: 8px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    table {
      width: 100%;
      border-collapse: collapse;
      margin-top: 1em;
    }

    th, td {
      border: 1px solid #ddd;
      padding: 8px;
      text-align: left;
    }

    th {
      background-color: #333;
      color: #fff;
    }

    form {
      max-width: 400px;
      margin: 0 auto;
      display: flex;
      flex-direction: column;
    }

    input, select, button {
      margin-bottom: 1em;
      padding: 8px;
      font-size: 16px;
    }

    input, button {
      display: block;
      width: 100%;
      margin-bottom: 1em;
      padding: 8px;
    }

    
    label {
      margin-bottom: 0.5em;
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

  <header>
    <h1>Araç Kiralama Admin Paneli</h1>
  </header>

  <nav>
    <a href="AdminPanel.aspx">Araç Ekle</a>
    <a href="AraçÇıkarma.aspx">Araç Çıkar</a>
    <a href="AraçDüzenleme.aspx">Araç Düzenle</a>
    <a href="Müşteri.aspx">Müşteri Görüntüle</a>
  </nav>

  <section>
    <form id="carForm">
      <label for="brand">Marka:</label>
      <input type="text" id="brand" name="brand" required>
      <label for="model">Model:</label>
      <input type="text" id="model" name="model" required>

      <label for="fuelType">Yakıt Tipi:</label>
      <select id="fuelType" name="fuelType" required>
        <option value="benzin">Benzin</option>
        <option value="dizel">Dizel</option>
        <option value="elektrik">Elektrik</option>
        <option value="hibrit">Hibrit</option>
      </select>

      <label for="photo">Fotoğraf:</label>
      <input type="file" id="photo" name="photo" accept="image/*" required>

      <button type="button" onclick="saveCar()">Kaydet</button>
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