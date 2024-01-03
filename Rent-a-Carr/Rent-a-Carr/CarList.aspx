<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="CarList.aspx.cs" Inherits="Rent_a_Carr.CarList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <html lang="tr">
    <head>
        <style>

        </style>
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
                    <div class="cizgi">&nbsp;</div>
                    <div class="cizgion">
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

        <div class="container martop marbot reztitle">
            <div class="row">
                <div class="col-md-3">
                    <h1 class="reztitlebig">Araç Filosu</h1>
                </div>
                <div class="col-md-9 mobhide ultrahide arfil">
                    <input type="text" class="form-control arfillow somepad aracfilter_marka" style="width: 124px !important;" placeholder="Marka / Model...">

                    <select class="form-control arfillow aracfilter_yakit">
                        <option value="">Yakıt...</option>
                        <option value="Benzin">Benzin</option>
                        <option value="2">LPG</option>
                        <option value="3">Benzin/LPG</option>
                        <option value="Disel">Dizel</option>
                        <option value="5">Elektrik</option>
                        <option value="6">Hybrid</option>
                    </select>

                    <select class="form-control arfillow aracfilter_vites">
                        <option value="">Vites...</option>
                        <option value="1">Manuel</option>
                        <option value="2">Yarı Otomatik</option>
                        <option value="3">Otomatik</option>
                        <option value="4">Triptonik</option>
                    </select>

                    <select class="form-control arfillow aracfilter_kat" style="width: 144px !important;">
                        <option value="">Araç Kategorisi...</option>
                        <option value="7">Compact</option>
                        <option value="6">Economy</option>
                        <option value="9">Full Size</option>
                        <option value="8">Intermediate</option>
                        <option value="12">Luxury</option>
                        <option value="10">Premium</option>
                        <option value="11">SUV</option>
                    </select>
                </div>
            </div>
        </div>

        <form id="form1" runat="server">
            <asp:DataList ID="DataList1" runat="server" CssClass="row">
                <ItemTemplate>
                    <div class="container martop marbot">
                        <div class="row">
                            <div class="col-md-9 nopad" style="width: fit-content">

                                <div class="araclisting" style="margin: 0px 130px">
                                    <div class="row">
                                        <div class="col-md-4 ctext">
                                            <asp:Image ID="Image2" runat="server"  src='<%# Eval("Photo") %>' />
                                            <label class="green"><span class="glyphicon glyphicon-ok"></span>Araç Müsait</label> <!-- buraya müsait mi değil mi diye veritabanından bilgi çekicez -->
                                        </div>
                                        <div class="col-md-5 nopadright">
                                            <h1><asp:Label Font-Bold="true" ForeColor="Black" class="popcoltitle" ID="Label5" runat="server" Text='<%# Eval("Brand") + " " + Eval("Model") %>'></asp:Label></h1>
                                            <h2>Yolcu Sayısı: <strong>5</strong> kişiye kadar<br>
                                                Bagaj Kapasitesi: <strong>5</strong> bavula kadar</h2>

                                            <label class="aracozellik">
                                                <span class="glyphicon glyphicon-scale"></span><strong>Yakıt:</strong>
                                                <asp:Label ID="Label10" runat="server" Text='<%# Eval("FuelType") %>'></asp:Label>
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
                                                <label class="fiyatlab">1-3 Gün Aralığı <span>90.00 TRY</span></label>
                                                <asp:LinkButton runat="server" CommandName="ShowDetails" CommandArgument='<%# Eval("Plate") %>'>Hemen Kiralayın</asp:LinkButton>
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
