<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="IadeSayfası.aspx.cs" Inherits="Rent_a_Carr.IadeSayfası" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!DOCTYPE html>

    <html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">

        <link href="/style.css" rel="stylesheet" />

        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Fiyat Listesi - Araba Kiralama Sitesi</title>
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
        <div class="container firstclear rezcizgi ultrahide">
            <div class="row">
                <div class="col-md-4 relat nopad cizgicont">
                    <div class="cizgi sec">&nbsp;</div>
                    <div class="cizgion sec">
                        <label>1</label>
                        <strong>Araç Seçimi</strong>
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
                    <div class="cizgi sec">&nbsp;</div>
                    <div class="cizgion sec">
                        <label>3</label>
                        <strong>İade Sayfası</strong>
                        İadelerini yönetin               
                    </div>
                </div>
            </div>
        </div>

        <form id="form1" runat="server">
            <asp:DataList ID="DataList1" OnItemCommand="btnIade_Click" runat="server" CssClass="row">
                <ItemTemplate>
                    <div class="container martop marbot">
                        <div class="row">
                            <div class="col-md-9 nopad" style="width: fit-content">

                                <div class="araclisting" style="margin: 0px 130px">
                                    <div class="row">
                                        <div class="col-md-4 ctext">
                                            <asp:Image ID="Image2" runat="server" src='<%# Eval("Photo") %>' />
                                            <label class="red"><span class="glyphicon glyphicon-ok"></span>Araç Kiralanmış</label>
                                        </div>
                                        <div class="col-md-5 nopadright">
                                            <h1>
                                                <asp:Label Font-Bold="true" ForeColor="Black" class="popcoltitle" ID="Label5" runat="server" Text='<%# Eval("Brand") + " " + Eval("Model") %>'></asp:Label></h1>
                                            <h2>Yolcu Sayısı: <strong>5</strong> kişiye kadar<br>
                                                Bagaj Kapasitesi: <strong>5</strong> bavula kadar</h2>

                                            <label class="aracozellik">
                                                <span class="glyphicon glyphicon-scale"></span><strong>Plaka:</strong>
                                                <asp:Label ID="lbl10p" runat="server" Text='<%# Eval("Plate") %>'></asp:Label>
                                            </label>
                                            <label class="aracozellik">
                                                <span class="glyphicon glyphicon-scale"></span><strong>Yakıt:</strong>
                                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("FuelType") %>'></asp:Label>
                                            </label>
                                            <label class="aracozellik">
                                                <span class="glyphicon glyphicon-random"></span><strong>Vites:</strong> Manuel                           
                                            </label>
                                            <label class="aracozellik">
                                                <span class="glyphicon glyphicon-signal"></span><strong>Color:</strong>
                                                <asp:Label ID="Label11" runat="server" Text='<%# Eval("Color") %>'></asp:Label>
                                            </label>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="aracsec">
                                                <asp:LinkButton ID="btnIade" Class="btn turanj btn-lg" runat="server" CommandName="Iade">İade Et</asp:LinkButton>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:DataList>
        </form>
    </body>
    </html>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
