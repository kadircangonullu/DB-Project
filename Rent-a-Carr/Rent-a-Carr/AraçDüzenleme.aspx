<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AraçDüzenleme.aspx.cs" Inherits="Rent_a_Carr.AraçDüzenleme" %>

<!DOCTYPE html>
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

    button.edit {
      background-color: orange;
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
    <table id="carTable">
      <thead>
        <tr>
          <th>ID</th>
          <th>Marka</th>
          <th>Model</th>
          <th>Yakıt Tipi</th>
          <th>İşlemler</th>
        </tr>
      </thead>
      <tbody>
        <!-- Veritabanından alınan araç listesi buraya eklenir -->
      </tbody>
    </table>
  </section>

  <script>
      // Simüle edilmiş bir veritabanı üzerinden araç listesini getirme
      function getCarList() {
          return [
              { id: 1, brand: 'Marka 1', model: 'Model 1', fuelType: 'Benzin' },
              { id: 2, brand: 'Marka 2', model: 'Model 2', fuelType: 'Dizel' },
              // Diğer araçlar...
          ];
      }

      // Araç listesini HTML tablosuna dönüştürme
      function renderCarTable(cars) {
          var tableBody = document.querySelector('#carTable tbody');
          tableBody.innerHTML = '';

          for (var i = 0; i < cars.length; i++) {
              var car = cars[i];
              var row = '<tr>';
              row += '<td>' + car.id + '</td>';
              row += '<td>' + car.brand + '</td>';
              row += '<td>' + car.model + '</td>';
              row += '<td>' + car.fuelType + '</td>';
              row += '<td>';
              row += '<button class="edit" onclick="editCar(' + car.id + ')">Düzenle</button>';
              row += '</td>';
              row += '</tr>';

              tableBody.innerHTML += row;
          }
      }

      // Araç düzenleme işlemi
      function editCar(carId) {
          // Simüle edilmiş bir HTTP isteği yapabilirsiniz (örneğin fetch kullanarak)
          // Gerçek bir projede bu işlemleri sunucu tarafında yapmalısınız.
          var newBrand = prompt('Yeni marka:');
          var newModel = prompt('Yeni model:');
          var newFuelType = prompt('Yeni yakıt tipi:');

          alert('Araç düzenlendi!\nID: ' + carId + '\nYeni Marka: ' + newBrand + '\nYeni Model: ' + newModel + '\nYeni Yakıt Tipi: ' + newFuelType);
      }

      // Sayfa yüklendiğinde araç listesini al ve tabloya ekle
      window.onload = function () {
          var carList = getCarList();
          renderCarTable(carList);
      };
  </script>


</body>
</html>


