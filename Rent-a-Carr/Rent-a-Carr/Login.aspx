<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Rent_a_Carr.Login" %>

<!DOCTYPE html>

<html lang="tr" data-adreal-did="1703760003667896">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Üye Giriş/Kayıt - Araba Kiralama Sitesi</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="description" content="Araba Kiralama Sitesi kurulumu oto kiralama ve rent a car firmalarına yönetim panelli rent a car siteleri yapan ucuz rent a car web sitesi firması">
    <meta name="keywords" content="rent a car sitesi kurulumu, oto kiralma sitesi yapımı, rent a car scripti, rent a car web sitesi, rent a car sitesi, rent a car yazılımı, rent a car web tasarım, oto kiralama sitesi yaptırmak, rent a car sitesi yaptırmak, hazır rent a car sitesi, rent a car web tasarım, ucuz rent a car sitesi">
    <meta name="robots" content="index,follow">
    <script type="text/javascript" src="https://tema19.otokiralamascripti.net/assets/js/jquery.js"></script>
    <link rel="stylesheet" type="text/css" href="https://tema19.otokiralamascripti.net/theme/css/theme.css">
    <link rel="stylesheet" type="text/css" href="https://tema19.otokiralamascripti.net/assets/css/bootstrap.min.css">
    <script type="text/javascript" src="https://tema19.otokiralamascripti.net/assets/js/bootstrap.min.js"></script>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="description" content="Araba Kiralama Sitesi kurulumu oto kiralama ve rent a car firmalarına yönetim panelli rent a car siteleri yapan ucuz rent a car web sitesi firması">
    <meta name="keywords" content="rent a car sitesi kurulumu, oto kiralma sitesi yapımı, rent a car scripti, rent a car web sitesi, rent a car sitesi, rent a car yazılımı, rent a car web tasarım, oto kiralama sitesi yaptırmak, rent a car sitesi yaptırmak, hazır rent a car sitesi, rent a car web tasarım, ucuz rent a car sitesi">
    <meta name="robots" content="index,follow">
    <script type="text/javascript" async="" src="https://www.google-analytics.com/analytics.js"></script>
    <script type="text/javascript" async="" src="https://www.googletagmanager.com/gtag/js?id=G-6N7WH0F8S4&amp;l=dataLayer&amp;cx=c"></script>
    <script type="text/javascript" src="https://tema19.otokiralamascripti.net/assets/js/jquery.js"></script>
    <link rel="stylesheet" type="text/css" href="https://tema19.otokiralamascripti.net/theme/css/theme.css">
    <link rel="stylesheet" type="text/css" href="https://tema19.otokiralamascripti.net/assets/css/bootstrap.min.css">
    <script type="text/javascript" src="https://tema19.otokiralamascripti.net/assets/js/bootstrap.min.js"></script>
    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async="" src="https://www.googletagmanager.com/gtag/js?id=UA-213500046-1">
    </script>
    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag() { dataLayer.push(arguments); }
        gtag('js', new Date());

        gtag('config', 'UA-213500046-1');
    </script>


    <style>
        body {
            margin: 0;
            padding: 0;
            height: 100%;
        }

        .wrapper {
            min-height: 100%;
            position: relative;
        }

        .footbar {
            /* Your existing styles for .footbar go here */
            position: absolute;
            bottom: 0;
            width: 100%;
        }

        .fooaltbar {
            position: absolute;
            bottom: 0;
            width: 100%;
        }
    </style>

</head>
<body>
    <div class="mobdilpara mobonly">
        <div class="parabirimi">
            <label>
                <strong>TRY</strong>
                <span class="glyphicon glyphicon-chevron-down">&nbsp;</span>

                <div class="birimacilir" style="display: none;">
                    <a href="javascript:void(0);" onclick="setparabirimi(0);">TRY</a>
                </div>
            </label>
        </div>
        <div class="langselector">
            <label>
                <img alt="Türkçe" src="https://tema19.otokiralamascripti.net/images/lang/tr.png">
                <span class="glyphicon glyphicon-chevron-down">&nbsp;</span>

                <div class="dilacilir" style="display: none;">
                    <a href="javascript:void(0);" onclick="setdil('tr');">
                        <img alt="Türkçe" src="https://tema19.otokiralamascripti.net/images/lang/tr.png"></a>
                </div>
            </label>
        </div>
    </div>

    <div class="midbar">
        <div class="container">
            <div class="col-md-12">
                <div class="col-md-2 logo">
                    <a href="#" class="mobhide ultrahide">
                        <img alt="Araba Kiralama Sitesi" src="https://tema19.otokiralamascripti.net/images/first-class-rent-a-car.png"></a>
                    <div class="mobonly wptel">
                        <a href="https://tema19.otokiralamascripti.net/" class="lofirsta">
                            <img alt="Araba Kiralama Sitesi" src="https://tema19.otokiralamascripti.net/images/first-class-rent-a-car.png"></a><br>
                        <br>
                    </div>
                </div>
                <div class="col-md-10 rtext contact">
                    <div class="menubar">
                        <div class="container">
                            <div class="col-md-12">
                                <label class="menubaropener">
                                    <div><span class="glyphicon glyphicon-menu-hamburger"></span>MENU</div>
                                    <a href="tel:+905443240060" target="_blank">0 544 324 00 60</a></label>

                                <a href="#" class="menua">ANASAYFA</a>
                                <a href="#" class="menua">HAKKIMIZDA</a>
                                <a href="#" class="menua">FİYAT LİSTESİ</a>
                                <a href="#" class="menua">TRANSFER</a>
                                <a href="#" class="menua">İADE SAYFASI</a>
                                <a href="#" class="menua">S.S.S.</a>
                                <a href="#" class="menua">İLETİŞİM</a>

                                <a href="Login.aspx" class="menua">ÜYE GİRİŞİ &nbsp;&nbsp;&nbsp;<span class="glyphicon glyphicon-log-in"></span></a>

                                <div class="parabirimi">
                                    <label>
                                        <strong>TRY</strong>
                                        <span class="glyphicon glyphicon-chevron-down">&nbsp;</span>

                                        <div class="birimacilir" style="display: none;">
                                            <a href="javascript:void(0);" onclick="setparabirimi(0);">TRY</a>
                                        </div>
                                    </label>
                                </div>
                                <div class="langselector">
                                    <label>
                                        <img alt="Türkçe" src="https://tema19.otokiralamascripti.net/images/lang/tr.png">
                                        <span class="glyphicon glyphicon-chevron-down">&nbsp;</span>

                                        <div class="dilacilir" style="display: none;">
                                            <a href="javascript:void(0);" onclick="setdil('tr');">
                                                <img alt="Türkçe" src="https://tema19.otokiralamascripti.net/images/lang/tr.png"></a>
                                        </div>
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container firstclear marbot">
        <div class="row">
            <div class="col-md-6">
                <h1 class="bigtitle"><strong>Üye Girişi</strong></h1>

                <form id="form1" runat="server" method="post" target="_self" enctype="application/x-www-form-urlencoded">
                    <div class="sozlesmebox rounded bordered nobg">
                        <div class="form-group">
                            <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
                            <div class="input-group">
                                <div class="input-group-addon">
                                    <span class="glyphicon glyphicon-envelope"></span>
                                </div>
                                <asp:TextBox ID="txtUsername" CssClass="form-control half" placeholder="İsminiz..." runat="server"></asp:TextBox>
                                <!--<input class="form-control half" name="email" type="text" placeholder="E-posta Adresi..." required="">-->
                            </div>
                        </div>

                        <div class="form-group">
                            <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                            <div class="input-group">
                                <div class="input-group-addon">
                                    <span class="glyphicon glyphicon-lock"></span>
                                </div>
                                <asp:TextBox CssClass="form-control half" placeholder="**********" ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                                <!--<input class="form-control half" name="pass" type="password" placeholder="********" required="">-->
                            </div>
                        </div>

                        <br>
                        <asp:Button CssClass="btn turanj btn-lg" ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
                        <asp:Label ID="lblErrorMessage" runat="server" Text="Incorrect User Credentials" ForeColor="Red"></asp:Label>
                    </div>
                    <br>
            </div>

            <div class="col-md-6">
                <h1 class="bigtitle"><strong>Kayıt Olun</strong></h1>

                <div class="sozlesmebox rounded bordered nobg">
                    <div class="form-group">
                        <strong>Adınız</strong>
                        <div class="input-group">
                            <div class="input-group-addon">
                                <span class="glyphicon glyphicon-user"></span>
                            </div>

                            <asp:TextBox CssClass="form-control half" ID="TextBox1" runat="server" Width="186px"></asp:TextBox>

                        </div>
                    </div>

                    <div class="form-group">
                        <strong>Soyadınız</strong>
                        <div class="input-group">
                            <div class="input-group-addon">
                                <span class="glyphicon glyphicon-user"></span>
                            </div>

                            <asp:TextBox CssClass="form-control half" ID="TextBox2" runat="server" Width="186px"></asp:TextBox>

                        </div>
                    </div>

                    <div class="form-group">
                        <strong>Cep Telefonunuz</strong>
                        <div class="input-group">
                            <div class="input-group-addon">
                                <span class="glyphicon glyphicon-earphone"></span>
                            </div>

                            <asp:TextBox CssClass="form-control half phone" ID="TextBox4" runat="server" Width="186px"></asp:TextBox>
                        </div>
                    </div>

                    <div class="form-group">
                        <strong>Şifre Girin</strong>
                        <div class="input-group">
                            <div class="input-group-addon">
                                <span class="glyphicon glyphicon-lock"></span>
                            </div>

                            <asp:TextBox CssClass="form-control half" ID="TextBox3" placeholder="**************" runat="server" Width="186px"></asp:TextBox>
                        </div>
                    </div>

                    <br>
                    <asp:Button CssClass="btn turanj btn-lg" ID="Button1" runat="server" Text="Kayıt ol" OnClick="Button1_Click" />
                </div>
                </form>
            </div>
        </div>
    </div>

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
