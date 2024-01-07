<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="SatınAlma.aspx.cs" Inherits="Rent_a_Carr.SatınAlma" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <html lang="tr">
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Citroen Nemo  Kirala - Rezervasyon - Araba Kiralama Sitesi</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <meta name="description" content="Araba Kiralama Sitesi kurulumu oto kiralama ve rent a car firmalarına yönetim panelli rent a car siteleri yapan ucuz rent a car web sitesi firması">
        <meta name="keywords" content="rent a car sitesi kurulumu, oto kiralma sitesi yapımı, rent a car scripti, rent a car web sitesi, rent a car sitesi, rent a car yazılımı, rent a car web tasarım, oto kiralama sitesi yaptırmak, rent a car sitesi yaptırmak, hazır rent a car sitesi, rent a car web tasarım, ucuz rent a car sitesi">
        <meta name="robots" content="index,follow">
        <script type="text/javascript" src="https://tema19.otokiralamascripti.net/assets/js/jquery.js"></script>
        <link rel="stylesheet" type="text/css" href="https://tema19.otokiralamascripti.net/theme/css/theme.css">
        <link rel="stylesheet" type="text/css" href="https://tema19.otokiralamascripti.net/assets/css/bootstrap.min.css">
        <script type="text/javascript" src="https://tema19.otokiralamascripti.net/assets/js/bootstrap.min.js"></script>
        <script type="text/javascript">
            var rezmin = 3;
            var rezmintx = 'Kiralama işlemi minimum 3 gün yapılabilir. Lütfen tarih seçiminizi gözden geçirdikten sonra rezervasyon işlemine devam edin!';
        </script>
    </head>
    <body>

        <div class="container firstclear rezcizgi ultrahide">
            <div class="row">
                <div class="col-md-4 relat nopad cizgicont">
                    <div class="cizgi sec">&nbsp;</div>
                    <div class="cizgion sec">
                        <label>1</label>
                        <strong style="color: #666666;">Araç Seçimi</strong>
                        Kiralamak istediğiniz aracı seçin               
                    </div>
                </div>
                <div class="col-md-4 relat nopad cizgicont">
                    <div class="cizgi sec">&nbsp;</div>
                    <div class="cizgion sec">
                        <label>2</label>
                        <strong>Kişisel Bilgiler ve Ödeme</strong>
                        Kredi kartı ile güvenli ödeme gerçekleştirin               
                    </div>
                </div>
                <div class="col-md-4 relat nopad cizgicont">
                    <div class="cizgi">&nbsp;</div>
                    <div class="cizgion">
                        <label>3</label>
                        <strong>Rezervasyon Onayı</strong>
                        Rezervasyon sonucunuzu görüntüleyin               
                    </div>
                </div>
            </div>
        </div>

        <div class="container martop marbot">
            <asp:DataList class="col-md-7 nopadright rezcont mobnopad" ID="DataList1" runat="server">
                <ItemTemplate>
                    <form id="form1" runat="server">
                        <div class="container martop marbot">
                            <h1 class="bigtitle"><strong>
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("Brand") + " " + Eval("Model") %>'></asp:Label></strong>
                                <span class="rfloat">
                                    <label class="aracozellik inline">
                                        <em class="redstr"><span class="glyphicon glyphicon-scale"></span></em>
                                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("FuelType")%>'></asp:Label>
                                    </label>
                                    <label class="aracozellik inline">
                                        <em class="redstr"><span class="glyphicon glyphicon-random"></span></em>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Gear")%>'></asp:Label>
                                    </label>
                                    <label class="aracozellik inline">
                                        <em class="redstr"><span class="glyphicon glyphicon-signal"></span></em>
                                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("Console")%>'></asp:Label>
                                    </label>
                                </span>
                            </h1>
                            <div class="col-md-5 nopadleft mobnopad ctext">
                                <asp:Image class="rezpagecar rounded" ID="Image2" runat="server" src='<%# Eval("Photo") %>' />
                            </div>
                            <div class="col-md-7 nopadright rezcont mobnopad">
                                <div class="row">
                                    <div class="col-md-6">
                                        <h1 class="bigtitle subbed nomartop">Alış Yeri</h1>

                                        <div class="input-group relative rcigroup">
                                            <input type="hidden" name="alisloc" id="setalisloc" value="65">
                                            <input type="text" style="background: #ffffff;" class="form-control black" id="setalistext" required="required" readonly="readonly" value="Merkez Ofis" placeholder="Alış Yeri">

                                            <div class="input-group-addon">
                                                <span class="glyphicon glyphicon-map-marker"></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <h1 class="bigtitle subbed nomartop">Dönüş Yeri</h1>

                                        <div class="input-group rcigroup">
                                            <input type="hidden" name="donusloc" id="setdonusloc" value="65">
                                            <input type="text" style="background: #ffffff;" class="form-control black" id="setdonustext" required="required" readonly="readonly" value="Merkez Ofis" placeholder="Dönüş Yeri">

                                            <div class="input-group-addon">
                                                <span class="glyphicon glyphicon-map-marker"></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <br />
                                <div class="row">
                                    <div class="col-md-6">
                                        <h1 class="bigtitle subbed nomartop">Günlük Kiralama Bedeli</h1>
                                        <span class="bigtext">
                                            <asp:Label class="bigtext" ID="Label2" runat="server" Text='<%# Eval("DailyRentalFee") + " TL" %>'></asp:Label></span>
                                    </div>
                                    <div class="col-md-6">
                                        <h1 class="bigtitle subbed nomartop">Kiralanacak Gün sayısı</h1>
                                        <div class="input-group relative rcigroup">
                                            <input type="number" id="UNumber" oninput="multiplyNumbers()" style="background: #ffffff;" class="form-control black" required>
                                            </div>
                                        </div>
                                    </div>
                                <br />
                                <div class="row">
                                    <div class="col-md-6">
                                        <h1 class="bigtitle subbed nomartop">Kiralama Süresi</h1>
                                        <span class="bigtext"><span id="gunsayisi">3</span> Gün</span>
                                    </div>
                                    <div class="col-md-6">
                                        <h1 class="bigtitle subbed nomartop">Günlük Araç Ücreti</h1>
                                        <span class="bigtext">90.00 TRY</span>
                                    </div>
                                </div>
                            </div>
                    </form>
                </ItemTemplate>
            </asp:DataList>
        </div>

        <form method="post" target="_self" enctype="application/x-www-form-urlencoded" onsubmit="return reserve(this, event);">
            <input type="hidden" name="do" value="reserve">

            <div class="container marbot">
                <div class="col-md-12 total rounded">
                    Toplam Kiralama Ücreti:
                    <label><span id="sonuc"></span> TRY</label>
                </div>
            </div>

            <div class="container marbot">
                <h1 class="bigtitle nomartop"><strong>Sürücü Bilgileri</strong></h1>
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-md-6">
                            <strong>Adınız Soyadınız</strong>
                            <input type="text" class="form-control" name="ad" required="" placeholder="Adınız Soyadınız...">

                            <br>
                            <strong>Doğum Tarihiniz</strong>
                            <input type="text" class="form-control datepickyears hasDatepicker" readonly="readonly" name="dogum" required="" placeholder="Doğum Tarihiniz..." id="dp1704229942446" style="background: rgb(255, 255, 255);">

                            <br>
                            <strong>Uçuş Notları</strong>
                            <textarea class="form-control" name="ucus" placeholder="İsteğe bağlı olarak doldurulabilir......"></textarea>
                        </div>
                        <div class="col-md-6 mobpadtop">
                            <strong>Cep Telefonunuz</strong>
                            <input type="text" class="form-control phone" name="cep" required="" placeholder="Cep Telefonunuz...">

                            <br>
                            <strong>E-posta Adresiniz</strong>
                            <input type="text" class="form-control" name="email" required="" placeholder="E-posta Adresiniz...">

                            <br>
                            <strong>Özel Notlar</strong>
                            <textarea class="form-control" name="ozel" placeholder="İsteğe bağlı olarak doldurulabilir......"></textarea>
                        </div>
                    </div>

                    <div class="uyebox rounded">
                        <label class="extcheck">
                            <input type="checkbox" name="uyeol" onclick="setuyebox(this);">
                            Girdiğim e-posta adresi ile üye olmak istiyorum</label>
                        <div class="row">
                            <div class="col-md-6 pad20">
                                <strong>Şifre Girin</strong>
                                <input type="password" class="form-control" name="pass1" id="pass1" placeholder="********">
                            </div>
                            <div class="col-md-6 pad20">
                                <strong>Şifreyi Tekrar Girin</strong>
                                <input type="password" class="form-control" name="pass2" id="pass2" placeholder="********">
                            </div>
                        </div>
                    </div>

                    <div class="sozlesmebox rounded" style="display: none;">
                        <label class="extcheck">
                            <input type="checkbox" name="sozlesme" value="1" required="required" checked="checked">
                            Kiralama şartlarını okudum, onayladım ve kabul ediyorum</label>
                    </div>

                    <div class="odemebox">
                        <h1 class="bigtitle" style="margin-bottom: 0px !important;"><strong>Ödeme Seçenekleri</strong></h1>

                        <div class="tab-content">
                            <div id="other" class="tab-pane fade in active">
                                <label class="extcheck full">
                                    <input type="radio" name="odeme" checked="checked" value="1">
                                    Nakit</label>
                                <label class="extcheck full">
                                    <input type="radio" name="odeme" value="2">
                                    Banka Havalesi / EFT</label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div align="center">
                <div style="width: 360px; margin: 0px auto;">
                    <table cellpadding="0" border="0">
                        <tbody>
                            <tr>
                                <td>
                                    <input type="text" class="form-control" name="capt" autocomplete="off" required="" placeholder="Güvenlik kodu...">
                                </td>
                                <td style="padding-left: 15px;">
                                    <img src="https://tema19.otokiralamascripti.net/captcha.php" alt="CAPTCHA" id="capim" style="border-radius: 8px;">
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>

                <br>
                <br>
                <input type="submit" class="btn turanj btn-lg" value="Rezervasyonu Tamamla">
                <br>
                <br>
            </div>
        </form>

            <script>
                function multiplyNumbers() {
                    // Kullanıcının girdiği sayıyı al
                    var userInput = document.getElementById("UNumber").value;

                    // Sabit bir sayı ile çarp
                    var constantNumber = 5;  // Bu sayıyı kendi ihtiyacınıza göre değiştirin

                    var result = userInput * constantNumber;

                    // Sonucu HTML içine yazdır
                    document.getElementById("sonuc").innerText = result;

                }
    </script>  </script>>

        <script type="text/javascript" src="https://tema19.otokiralamascripti.net/assets/js/system.js"></script>
        <link rel="stylesheet" type="text/css" href="https://tema19.otokiralamascripti.net/assets/css/system.css">
        <script type="text/javascript" src="https://tema19.otokiralamascripti.net/theme/js/theme.js"></script>
        <link rel="stylesheet" type="text/css" href="https://tema19.otokiralamascripti.net/assets/css/jquery-ui.css">
        <script type="text/javascript" src="https://tema19.otokiralamascripti.net/assets/js/jquery-ui.js"></script>
        <script type="text/javascript" src="https://tema19.otokiralamascripti.net/assets/js/datepicker-tr.js"></script>
        <script type="text/javascript" src="https://tema19.otokiralamascripti.net/assets/js/jquery-ui-timepicker-addon.js"></script>
        <script type="text/javascript" src="https://tema19.otokiralamascripti.net/assets/js/uilang/datepicker-tr.js"></script>
        <link rel="stylesheet" type="text/css" href="https://tema19.otokiralamascripti.net/assets/css/jquery-ui-timepicker-addon.css">
        <script type="text/javascript">
            lang_operror = 'İşlem gerçekleştirilirken bir hata oluştu!';
            lang_afterselect = 'Lütfen seçim yaptıktan sonra tekrar deneyin!';
            lang_loading = 'Yükleniyor, lütfen bekleyin!';
            $.timepicker.setDefaults($.timepicker.regional['tr']);
        </script>
    </body>
    </html>


    </div>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
