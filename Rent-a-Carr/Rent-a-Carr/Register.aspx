<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Rent_a_Carr.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <html lang="tr" data-adreal-did="1703760003667896"><head>
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
</head>
<body>
    <div class="container firstclear marbot">
        <div class="row">
            <div class="col-md-6">
                <h1 class="bigtitle"><strong>Üye Girişi</strong></h1>
                
                                <form method="post" target="_self" enctype="application/x-www-form-urlencoded">
                    <div class="sozlesmebox rounded bordered nobg">
                        <div class="form-group">
                            <strong>E-posta Adresi</strong>
                            <div class="input-group">
                                <div class="input-group-addon">
                                    <span class="glyphicon glyphicon-envelope"></span>
                                </div>
                                                
                                <input class="form-control half" name="email" type="text" placeholder="E-posta Adresi..." required="">
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <strong>Şifre</strong>
                            <div class="input-group">
                                <div class="input-group-addon">
                                    <span class="glyphicon glyphicon-lock"></span>
                                </div>
                                                
                                <input class="form-control half" name="pass" type="password" placeholder="********" required="">
                            </div>
                        </div>
                        
                        <br>
                        <input type="hidden" name="do" value="login">
                        <input type="submit" value="Giriş Yap" class="btn turanj btn-lg">
                    </div>
                </form>
                                
                <br>
                <h1 class="bigtitle"><strong>Şifremi Unuttum</strong></h1>
                
                                    <form method="post" target="_self" enctype="application/x-www-form-urlencoded">
                        <div class="sozlesmebox rounded bordered nobg">
                            <div class="form-group">
                                <strong>E-posta Adresi</strong>
                                <div class="input-group">
                                    <div class="input-group-addon">
                                        <span class="glyphicon glyphicon-envelope"></span>
                                    </div>
                                                    
                                    <input class="form-control half" name="email" type="text" placeholder="E-posta Adresi..." required="">
                                </div>
                            </div>
                            
                            <br>
                            <input type="hidden" name="do" value="recoverpass">
                            <input type="submit" value="Şifre Hatırlat" class="btn turanj btn-lg">
                        </div>
                    </form>
                                </div>
            <div class="col-md-6">
                <h1 class="bigtitle"><strong>Kayıt Olun</strong></h1>
                
                                <form method="post" target="_self" enctype="application/x-www-form-urlencoded">
                    <div class="sozlesmebox rounded bordered nobg">
                        <div class="form-group">
                            <strong>Adınız / Soyadınız</strong>
                            <div class="input-group">
                                <div class="input-group-addon">
                                    <span class="glyphicon glyphicon-user"></span>
                                </div>
                                                
                                <input class="form-control half" name="ad" type="text" placeholder="Adınız / Soyadınız..." required="">
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <strong>Doğum Tarihiniz</strong>
                            <div class="input-group">
                                <div class="input-group-addon">
                                    <span class="glyphicon glyphicon-calendar"></span>
                                </div>
                                                
                                <input class="form-control half datepickyears hasDatepicker" name="dogum" type="text" placeholder="Doğum Tarihiniz..." required="" readonly="readonly" id="dp1703760003684" style="background: rgb(255, 255, 255);">
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <strong>Cep Telefonunuz</strong>
                            <div class="input-group">
                                <div class="input-group-addon">
                                    <span class="glyphicon glyphicon-earphone"></span>
                                </div>
                                                
                                <input class="form-control half phone" name="cep" type="text" placeholder="Cep Telefonunuz..." required="">
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <strong>E-posta Adresiniz</strong>
                            <div class="input-group">
                                <div class="input-group-addon">
                                    <span class="glyphicon glyphicon-envelope"></span>
                                </div>
                                                
                                <input class="form-control half" name="email" type="text" placeholder="E-posta Adresiniz..." required="">
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <strong>Şifre Girin</strong>
                            <div class="input-group">
                                <div class="input-group-addon">
                                    <span class="glyphicon glyphicon-lock"></span>
                                </div>
                                                
                                <input class="form-control half" name="pass1" type="password" placeholder="********" required="">
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <strong>Şifreyi Tekrar Girin</strong>
                            <div class="input-group">
                                <div class="input-group-addon">
                                    <span class="glyphicon glyphicon-lock"></span>
                                </div>
                                                
                                <input class="form-control half" name="pass2" type="password" placeholder="********" required="">
                            </div>
                        </div>
                        
                        <br>
                        <input type="hidden" name="do" value="register">
                        <input type="submit" value="Kaydı Tamamla" class="btn turanj btn-lg">
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


<!-- SHORTCUTS -->
</body></html>
</asp:Content>
