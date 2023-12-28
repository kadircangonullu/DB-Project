<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="Deneme1.aspx.cs" Inherits="Rent_a_Carr.Deneme1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <html lang="tr"><head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Araba Kiralama Sitesi</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="description" content="Araba Kiralama Sitesi kurulumu oto kiralama ve rent a car firmalarına yönetim panelli rent a car siteleri yapan ucuz rent a car web sitesi firması">
    <meta name="keywords" content="rent a car sitesi kurulumu, oto kiralma sitesi yapımı, rent a car scripti, rent a car web sitesi, rent a car sitesi, rent a car yazılımı, rent a car web tasarım, oto kiralama sitesi yaptırmak, rent a car sitesi yaptırmak, hazır rent a car sitesi, rent a car web tasarım, ucuz rent a car sitesi">
    <meta name="robots" content="index,follow">
    <script type="text/javascript" async="" src="https://www.google-analytics.com/analytics.js"></script><script type="text/javascript" async="" src="https://www.googletagmanager.com/gtag/js?id=G-6N7WH0F8S4&amp;l=dataLayer&amp;cx=c"></script><script type="text/javascript" src="https://tema19.otokiralamascripti.net/assets/js/jquery.js"></script>
    <link rel="stylesheet" type="text/css" href="https://tema19.otokiralamascripti.net/theme/css/theme.css">
    <link rel="stylesheet" type="text/css" href="https://tema19.otokiralamascripti.net/assets/css/bootstrap.min.css">
    <script type="text/javascript" src="https://tema19.otokiralamascripti.net/assets/js/bootstrap.min.js"></script>
	<!-- Global site tag (gtag.js) - Google Analytics -->
<script async="" src="https://www.googletagmanager.com/gtag/js?id=UA-213500046-1">
</script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-213500046-1');
</script>
</head>
<body> 
    <div class="banner">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div class="rezform">
                        <form action="https://tema19.otokiralamascripti.net/fiyat-listesi" method="post" onsubmit="return rezformsb(this, event);" target="_self" enctype="application/x-www-form-urlencoded">
                            <strong>Alış Yeri</strong>
                            
                            <div class="input-group relative">
                                <input type="hidden" name="alisloc" id="setalisloc" value="">
                                <input type="text" class="form-control black" id="setalistext" required="required" readonly="readonly" value="Alış yeri seçiniz" placeholder="Alış Yeri">
                                
                                <div class="openselector" id="open1" style="display: none;">
                                    <a href="javascript:void(0);" data-ustid="a:3:{i:0;s:5:" hatay";i:1;s:5:"hatay";i:2;s:5:"hatay";}"="" onclick="showkonum(64);"><span class="glyphicon glyphicon-chevron-right">&nbsp;</span> Hatay</a>
<a href="javascript:void(0);" data-ustid="a:3:{i:0;s:14:" hatay="" otogarı";i:1;s:17:"hatay="" bus="" station";i:2;s:16:"hatay="" busbahnhof";}"="" onclick="showkonum(67);"><span class="glyphicon glyphicon-chevron-right">&nbsp;</span> Hatay Otogarı</a>
                                </div>
                                
                                <div class="input-group-addon">
                                    <span class="glyphicon glyphicon-menu-down"></span>
                                </div>
                            </div>
                            
                            <strong class="mtoplus">Dönüş Yeri</strong>
                            
                            <div class="input-group relative">
                                <input type="hidden" name="donusloc" id="setdonusloc" value="">
                                <input type="text" class="form-control black" id="setdonustext" required="required" readonly="readonly" value="Dönüş yeri seçiniz" placeholder="Dönüş Yeri">
                                
                                <div class="openselector" id="open2" style="display: none;">
                                    <a href="javascript:void(0);" onclick="showkonumdonus(64);"><span class="glyphicon glyphicon-chevron-right">&nbsp;</span> Hatay</a>
<a href="javascript:void(0);" onclick="showkonumdonus(67);"><span class="glyphicon glyphicon-chevron-right">&nbsp;</span> Hatay Otogarı</a>
                                </div>
                                
                                <div class="input-group-addon">
                                    <span class="glyphicon glyphicon-menu-down"></span>
                                </div>
                            </div>
                            
                            <strong class="mtoplus">Alış Tarihi</strong>
                            
                            <div class="input-group">
                                <input type="text" class="form-control black ronly datepicker hasDatepicker" value="24/12/2023 13:30" id="datestart" name="alistarih" readonly="readonly" required="" placeholder="Alış Tarihi..." style="background: rgb(255, 255, 255); z-index: 9999999;">
                                
                                <div class="input-group-addon">
                                    <span class="glyphicon glyphicon-menu-down"></span>
                                </div>
                            </div>
                            
                            <strong class="mtoplus">Dönüş Tarihi</strong>
                            
                            <div class="input-group">
                                <input type="text" class="form-control black ronly datepicker hasDatepicker" value="27/12/2023 13:30" id="dateend" name="donustarih" readonly="readonly" required="" placeholder="Dönüş Tarihi..." style="background: rgb(255, 255, 255); z-index: 9999999;">
                                
                                <div class="input-group-addon">
                                    <span class="glyphicon glyphicon-menu-down"></span>
                                </div>
                            </div>
                            
                            <button type="submit" class="btn yellow rezbig mtoplus">Rezervasyon <span class="glyphicon glyphicon-chevron-right"></span></button>
                        </form>
                    </div>
                </div>
                <div class="col-md-8">
                                        <div id="myCarousel" class="carousel slide" data-ride="carousel">
                        <ol class="carousel-indicators">
                            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
<li data-target="#myCarousel" data-slide-to="1" class=""></li>
                        </ol>
                        
                        <div class="carousel-inner">
                            <div class="item active"><img alt="araba kiralama sitesi kurma" src="https://tema19.otokiralamascripti.net/images/banner/araba-kiralama-sitesi-kurma-6445392222f16.jpg"></div><div class="item"><img alt="araç kiralama sitesi kurma" src="https://tema19.otokiralamascripti.net/images/banner/arac-kiralama-sitesi-kurma-64453983cf42d.jpg"></div>                        </div>
                        
                        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                            <span class="glyphicon glyphicon-chevron-left"></span>
                            <span class="sr-only">Önceki</span>
                        </a>
                        <a class="right carousel-control" href="#myCarousel" data-slide="next">
                            <span class="glyphicon glyphicon-chevron-right"></span>
                            <span class="sr-only">Sonraki</span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <div class="container martop">
        <div class="row">
            <div class="col-md-12">
                <h1 class="maindesc1" title="Oto Kiralamada Güvenilir Adres">Oto Kiralamada Güvenilir Adres</h1>
                <h2 class="maindesc2" title="Sektördeki 1215 yılı aşan tecrübemiz ve alanında uzmanlaşmış kadromuzla en iyi müşteri memnuniyetini sağlamak için çalışıyoruz!">Sektördeki 1215 yılı aşan tecrübemiz ve alanında uzmanlaşmış kadromuzla en iyi müşteri memnuniyetini sağlamak için çalışıyoruz!</h2>
            </div>
        </div>
    </div>
    
        <div class="container">
        <div class="row">
                            <div class="col-md-3">
                    <div class="haber">
                        <div class="haberimg"><a href="#"><img alt="Hatay Rent a Car" src="https://tema19.otokiralamascripti.net/images/haber/hatay-rent-a-car-64452b89aceed.jpg"></a></div>
                        <div class="habertitle">
                            <h2>Kadir Rent a Car</h2>
                        </div>
                    </div>
                </div>
                            <div class="col-md-3">
                    <div class="haber">
                        <div class="haberimg"><a href="#"><img alt="Hatay Oto Kiralama" src="https://tema19.otokiralamascripti.net/images/haber/hatay-oto-kiralama-64452b56c3491.jpg"></a></div>
                        <div class="habertitle">
                            <h2>Kadir Oto Kiralama</h2>
                        </div>
                    </div>
                </div>
                            <div class="col-md-3">
                    <div class="haber">
                        <div class="haberimg"><a href="#"><img alt="Hatay Ekonomik Rent a Car" src="https://tema19.otokiralamascripti.net/images/haber/hatay-ekonomik-rent-a-car-6445289350932.jpg"></a></div>
                        <div class="habertitle">
                            <h2>Kadir Ekonomik Rent a Car</h2>
                        </div>
                    </div>
                </div>
                            <div class="col-md-3">
                    <div class="haber">
                        <div class="haberimg"><a href="#"><img alt="Hatay Kiralık Araba Hizmetleri" src="https://tema19.otokiralamascripti.net/images/haber/hatay-kiralik-araba-hizmetleri-64452820ef5f6.jpg"></a></div>
                        <div class="habertitle">
                            <h2>Kadir Kiralık Araba Hizmetleri</h2>
                        </div>
                    </div>
                </div>
                            <div class="col-md-3">
                    <div class="haber">
                        <div class="haberimg"><a href="#"><img alt="Hatay Araba Kiralama" src="https://tema19.otokiralamascripti.net/images/haber/hatay-araba-kiralama-644527c52c68e.jpg"></a></div>
                        <div class="habertitle">
                            <h2>Kadir Araba Kiralama</h2>
                        </div>
                    </div>
                </div>
                            <div class="col-md-3">
                    <div class="haber">
                        <div class="haberimg"><a href="#"><img alt="Hatay Araç Kiralama" src="https://tema19.otokiralamascripti.net/images/haber/hatay-arac-kiralama-644527948f13e.jpeg"></a></div>
                        <div class="habertitle">
                            <h2>Kadir Araç Kiralama</h2>
                        </div>
                    </div>
                </div>
                            <div class="col-md-3">
                    <div class="haber">
                        <div class="haberimg"><a href="#"><img alt="Hatay Havalimanı Oto Kiralama" src="https://tema19.otokiralamascripti.net/images/haber/hatay-havalimani-oto-kiralama-6445274d5fe8a.jpg"></a></div>
                        <div class="habertitle">
                            <h2>Şakirpaşa Havalimanı Oto Kiralama</h2>
                        </div>
                    </div>
                </div>
                            <div class="col-md-3">
                    <div class="haber">
                        <div class="haberimg"><a href="#"><img alt="Hatay Havalimanı Oto Kiralama" src="https://tema19.otokiralamascripti.net/images/haber/hatay-havalimani-oto-kiralama-64452702b8d0c.jpg"></a></div>
                        <div class="habertitle">
                            <h2>Şakirpaşa Havalimanı Oto Kiralama</h2>
                        </div>
                    </div>
                </div>
                    </div>
    </div>

</asp:Content>
