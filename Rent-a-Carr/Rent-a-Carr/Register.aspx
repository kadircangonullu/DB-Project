<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Rent_a_Carr.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

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

    </head>



    <body>
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

</asp:Content>
