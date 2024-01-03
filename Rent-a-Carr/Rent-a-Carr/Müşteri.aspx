<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Müşteri.aspx.cs" Inherits="Rent_a_Carr.Müşteri" %>

<!DOCTYPE html>
<html lang="tr">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Müşteri Yönetimi</title>
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

    button {
      background-color: #333;
      color: #fff;
      cursor: pointer;
      padding: 8px;
      font-size: 16px;
      margin-right: 1em;
    }

    button.add {
      background-color: green;
    }

    button.remove {
      background-color: red;
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
    <table id="customerTable">
      <thead>
        <tr>
          <th>ID</th>
          <th>Ad</th>
          <th>Soyad</th>
          <th>Telefon</th>
          <th>Email</th>
          <th>İşlemler</th>
        </tr>
      </thead>
      <tbody>
        <!-- Veritabanından alınan müşteri listesi buraya eklenir -->
      </tbody>
    </table>

    <button class="add" onclick="addCustomer()">Yeni Müşteri Ekle</button>
  </section>

  <script>
    // Simüle edilmiş bir veritabanı üzerinden müşteri listesini getirme
    function getCustomerList() {
      return [
        { id: 1, firstName: 'Ahmet', lastName: 'Yılmaz', phone: '555-1234', email: 'ahmet@example.com' },
        { id: 2, firstName: 'Ayşe', lastName: 'Demir', phone: '555-5678', email: 'ayse@example.com' },
        // Diğer müşteriler...
      ];
    }

    // Müşteri listesini HTML tablosuna dönüştürme
    function renderCustomerTable(customers) {
      var tableBody = document.querySelector('#customerTable tbody');
      tableBody.innerHTML = '';

      for (var i = 0; i < customers.length; i++) {
        var customer = customers[i];
        var row = '<tr>';
        row += '<td>' + customer.id + '</td>';
        row += '<td>' + customer.firstName + '</td>';
        row += '<td>' + customer.lastName + '</td>';
        row += '<td>' + customer.phone + '</td>';
        row += '<td>' + customer.email + '</td>';
        row += '<td>';
        row += '<button class="remove" onclick="removeCustomer(' + customer.id + ')">Sil</button>';
        row += '</td>';
        row += '</tr>';

        tableBody.innerHTML += row;
      }
    }

    // Müşteri silme işlemi
    function removeCustomer(customerId) {
      // Simüle edilmiş bir HTTP isteği yapabilirsiniz (örneğin fetch kullanarak)
      // Gerçek bir projede bu işlemleri sunucu tarafında yapmalısınız.
      alert('Müşteri silindi! Seçilen müşteri ID: ' + customerId);
    }

    // Yeni müşteri ekleme işlemi
    function addCustomer() {
      var newCustomer = {
        id: Math.floor(Math.random() * 1000), // Geçici olarak rastgele bir ID oluşturuyoruz
        firstName: prompt('Adınız:'),
        lastName: prompt('Soyadınız:'),
        phone: prompt('Telefon numaranız:'),
        email: prompt('Email adresiniz:')
      };

      // Simüle edilmiş bir HTTP isteği yapabilirsiniz (örneğin fetch kullanarak)
      // Gerçek bir projede bu işlemleri sunucu tarafında yapmalısınız.
      alert('Yeni müşteri eklendi!\nID: ' + newCustomer.id);
    }

    // Sayfa yüklendiğinde müşteri listesini al ve tabloya ekle
    window.onload = function() {
      var customerList = getCustomerList();
      renderCustomerTable(customerList);
    };
  </script>

</body>
</html>

