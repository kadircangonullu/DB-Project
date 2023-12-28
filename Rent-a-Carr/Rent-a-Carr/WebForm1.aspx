<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Rent_a_Carr.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <html lang="tr">
    <head>
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
                        <option value="1">Benzin</option>
                        <option value="2">LPG</option>
                        <option value="3">Benzin/LPG</option>
                        <option value="4">Dizel</option>
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

        <div class="container martop marbot">
            <div class="row">
                <div class="col-md-9 nopadleft">

                    <div class="araclisting" data-kat="" data-marka="Citroen Nemo " data-yakit="4" data-vites="1" data-kasa="1" data-dsb="0">
                        <div class="row">
                            <div class="col-md-4 ctext">
                                <img src="https://tema19.otokiralamascripti.net/images/cars/t_citroen-nemo-2017-64458385648ae.png">
                                <label class="green"><span class="glyphicon glyphicon-ok"></span>Araç Müsait</label>
                            </div>
                            <div class="col-md-5 nopadright">
                                <h1>Citroen Nemo </h1>
                                <h2>Yolcu Sayısı: <strong>5</strong> kişiye kadar<br>
                                    Bagaj Kapasitesi: <strong>5</strong> bavula kadar</h2>

                                <label class="aracozellik">
                                    <span class="glyphicon glyphicon-scale"></span><strong>Yakıt:</strong> Dizel                           
                                </label>
                                <label class="aracozellik">
                                    <span class="glyphicon glyphicon-random"></span><strong>Vites:</strong> Manuel                           
                                </label>
                                <label class="aracozellik">
                                    <span class="glyphicon glyphicon-signal"></span><strong>Klima:</strong> Dijital                           
                                </label>
                            </div>
                            <div class="col-md-3">
                                <div class="aracsec">
                                    <label class="fiyatlab">1-3 Gün Aralığı <span>90.00 TRY</span></label><label class="fiyatlab">4-7 Gün Aralığı <span>80.00 TRY</span></label><label class="fiyatlab">8-15 Gün Aralığı <span>70.00 TRY</span></label><label class="fiyatlab">16-30 Gün Aralığı <span>60.00 TRY</span></label>
                                    <a href="https://tema19.otokiralamascripti.net/rezervasyon/45-citroen-nemo-kirala" class="btn turanj full martoplow">Hemen Kiralayın</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-3 nopadright">
                    <div class="subcont mobhide ultrahide rezfontlow" id="stickme" style="position: relative; top: 0px; width: 100%;">
                        <form action="https://tema19.otokiralamascripti.net/fiyat-listesi" method="post" onsubmit="return rezformsb(this, event);" target="_self" enctype="application/x-www-form-urlencoded">
                            <div class="form-group">
                                <strong>Alış Yeri</strong>
                                <div class="input-group">
                                    <div class="input-group-addon">
                                        <span class="glyphicon glyphicon-map-marker"></span>
                                    </div>

                                    <input type="hidden" name="alisloc" id="setalisloc" value="65">
                                    <input type="text" class="form-control black bgwhite" id="setalistext" required="required" readonly="readonly" value="Merkez Ofis" placeholder="Alış Yeri">

                                    <div class="openselector" id="open1" style="display: none;">
                                        <a href="javascript:void(0);" onclick="showkonum(64);"><span class="glyphicon glyphicon-chevron-right">&nbsp;</span> Hatay</a>
                                        <a href="javascript:void(0);" onclick="showkonum(67);"><span class="glyphicon glyphicon-chevron-right">&nbsp;</span> Hatay Otogarı</a>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <strong>Alış Tarihi</strong>
                                <div class="input-group">
                                    <div class="input-group-addon">
                                        <span class="glyphicon glyphicon-calendar"></span>
                                    </div>

                                    <input type="text" class="form-control ronly datepicker hasDatepicker" value="24/12/2023 15:30" id="datestart" name="alistarih" readonly="readonly" required="" placeholder="Alış Tarihi..." style="background: rgb(255, 255, 255); z-index: 9999999;">
                                </div>
                            </div>

                            <div class="form-group">
                                <strong>Dönüş Yeri</strong>
                                <div class="input-group">
                                    <div class="input-group-addon">
                                        <span class="glyphicon glyphicon-map-marker"></span>
                                    </div>

                                    <input type="hidden" name="donusloc" id="setdonusloc" value="66">
                                    <input type="text" class="form-control black bgwhite" id="setdonustext" required="required" readonly="readonly" value="Hatay Havalimanı" placeholder="Dönüş Yeri">

                                    <div class="openselector" id="open2" style="display: none;">
                                        <a href="javascript:void(0);" onclick="showkonumdonus(64);"><span class="glyphicon glyphicon-chevron-right">&nbsp;</span> Hatay</a>
                                        <a href="javascript:void(0);" onclick="showkonumdonus(67);"><span class="glyphicon glyphicon-chevron-right">&nbsp;</span> Hatay Otogarı</a>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <strong>Dönüş Tarihi</strong>
                                <div class="input-group">
                                    <div class="input-group-addon">
                                        <span class="glyphicon glyphicon-calendar"></span>
                                    </div>

                                    <input type="text" class="form-control ronly datepicker hasDatepicker" value="27/12/2023 15:30" id="dateend" name="donustarih" readonly="readonly" required="" placeholder="Dönüş Tarihi..." style="background: rgb(255, 255, 255); z-index: 9999999;">
                                </div>
                            </div>

                            <input type="submit" class="btn yellow rezbig lowtxt" value="ARAÇLARI LİSTELE">
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
    </html>
</asp:Content>
