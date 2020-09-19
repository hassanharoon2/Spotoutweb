<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="Prisolo_Updated.AboutUs" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Prisolo</title>
    <!-- Google Font -->
    <!--<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>-->
    <link href="https://fonts.googleapis.com/css?family=Poppins:400,500,700&display=swap" rel="stylesheet">
    <!--<link rel="stylesheet" href="css/customer-panel.css"> -->
    <!--<link href="Content/img/icons/fav-icon.png" rel="icon" />-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!------ Include the above in your HEAD tag ---------->
    <!-- Css Styles -->
    <!-- <link rel="stylesheet" href="/Content/css/Carting.css" type="text/css"> -->

    <!-- <link rel="stylesheet" href="/Content/css/font-awesome.min.css" type="text/css"> -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="/Content/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="/Content/css/owl.carousel.min.css" type="text/css">
    <!--<link rel="stylesheet" href="/Content/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="/Content/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="/Content/css/slicknav.min.css" type="text/css">-->
    <link rel="stylesheet" href="/Content/css/style.css" type="text/css">
    <link rel="stylesheet" href="/Content/css/themify-icons.css" type="text/css">

    <!------ Include the above in your HEAD tag ---------->
    <style>
        #exp_categories h2, #exp_categories h5, #daily_deals h2, #daily_deals h5, #Featured_Posts h2, #Featured_Posts h5, #Lowest_Price_Products h2, #Lowest_Price_Products h5 {
            font-weight: 600 !important;
        }

        .product-slider .owl-nav button[type=button] {
            opacity: 1;
        }

        .inner-header {
            padding: 0;
        }

        .product-large {
            height: 550px;
        }

        .inner-header .advanced-search .input-group {
            max-width: 100%;
            align-items: center;
        }

        .product-item .pi-pic .sale {
            font-weight: 700;
            font-size: 12px;
        }

        .categories a {
            display: block;
            margin-left: 10px;
            color: #fff;
        }

            .categories a:hover {
                color: blue;
            }

        .inner-header .advanced-search .input-group .form-control {
            width: 80%;
        }

        .inner-header .advanced-search .input-group .ti-search {
            width: auto;
            height: auto;
            color: #000;
            padding: 10px;
            background: #e7ab3c;
        }

        .inner-header .advanced-search {
            height: auto;
            border: 0;
        }

        .navbar {
            background: #252525 !important
        }

        .nav-link {
            color: #fff !important;
            background: 0;
            display: block;
            padding: 10px 0;
            text-align: center;
        }

        .nav-item {
            padding: 0 20px;
        }

            .nav-item.active, .nav-link:hover {
                background: #e7ab3c;
            }

        #filter_sidebar {
            background: #252525;
            position: relative;
        }

        .filter_sidebar_inner {
            padding: 10px;
        }

        .copyright-reserved .copyright-text {
            float: none;
        }

        .banner_content {
            /* margin-top: 20px; */
            padding: 20px;
            padding-left: 40px;
            margin-top: 80px;
        }

        .owl-carousel .owl-item img {
            width: 100%;
            height: 250px;
        }



        .banner_content h1 {
            font-weight: 900;
            margin-bottom: 20px;
            font-size: 50px;
        }

        .banner_content p {
            font-weight: 600;
            font-size: 23px;
        }

        .signup_btn a, .explore-products a {
            padding: 10px 30px;
            color: #fff;
        }

        .signup_btn a {
            background: #ec1d1d;
        }

        .explore-products a {
            border: 1px solid #fff;
        }

        .signup_btn, .explore-products, .getit_on {
            margin-top: 30px;
        }

        .owl-prev span,
        .owl-next span {
            position: absolute;
            top: 40%;
            font-size: 25px;
            background: #eee;
            padding: 0px 15px;
            border-radius: 50%;
            opacity: .5;
            color: #000;
            font-weight: bold;
        }

        .owl-prev span {
            left: 2%;
        }

        .owl-next span {
            right: 2%;
        }

        .owl-next {
            background: #000;
        }

        .main_banner {
            background-position: center !important;
            background-size: cover !important;
            height: 550px;
            padding: 10px;
        }

        .getit_on {
            display: flex;
            flex-wrap: nowrap;
            align-items: center;
        }

            .getit_on a img {
                width: 150px !important;
                height: 50px !important;
            }

        .pi-pic img {
            height: 200px !important;
        }

        .prisolo_name {
            color: #ec1d1d;
            font-weight: 900;
        }

        #prisolo_features h2, .features_content_name h5 {
            font-weight: 600;
        }

        .features_content_inner {
            padding: 20px !important;
            text-align: -webkit-center;
        }

        .features_content_img img {
            width: 150px;
        }

        .mid_banenr_inner {
            position: relative;
        }

        .mid_banner_content_col {
            position: absolute;
            top: 25%;
            left: 10%;
            z-index: 1;
        }

            .mid_banner_content_col h2 {
                font-weight: 900;
                color: #fff;
                margin-bottom: 15px;
            }

            .mid_banner_content_col h6 {
                color: #fff;
                font-weight: 600;
                font-size: 22px;
                margin-bottom: 30px;
            }

        .get_start_btn {
            padding: 5px 20px;
            border: 1px solid #fff;
            color: #fff;
        }

        main .ml-auto a {
            color: #ec1d1d;
            font-weight: 600;
        }

        .footerSlide {
            border: 1px solid #9c9c9c;
        }

        .featImg {
            position: relative;
        }

            .featImg::after {
                content: "Featured";
                background: #f8dd3c;
                color: #002f34;
                /* font-weight: 600; */
                padding: 0 10px;
                top: 5%;
                position: absolute;
                font-weight: 500;
                left: 0%;
                z-index: 1;
                font-size: 15px;
            }

        .ContentAbout p {
            line-height: 2;
            letter-spacing: 1px;
            margin-bottom: 20px;
            font-size: 18px
        }

        .followUs {
            padding: 50px 0;
            background: #eee;
        }

            .followUs a {
                display: block;
                padding: 10px 18px;
                margin: 0 5px;
                font-size: 25px;
                color: #fff;
                border-radius: 50%;
                background: #000;
                transition: .5s ease;
            }

                .followUs a:hover {
                    opacity: .5;
                }

            .followUs .row {
                justify-content: center;
            }

        @media screen and (min-width: 992px) {
            .nav-link {
                padding: 23px 0;
                width: 152px;
                border-right: 1px solid #525252;
            }

            .nav-item {
                padding: 0;
            }
        }

        @media screen and (max-width: 1100px) {
            .mid_banner_content_col h2 {
                font-size: 25px !important;
            }

            .mid_banner_content_col h6 {
                font-size: 15px !important;
            }
        }

        @media screen and (max-width: 810px) {
            .main_banner {
                background-position: right !important;
                height: 440px;
                margin-top: -12px;
            }

            .banner_content h1 {
                font-weight: 900;
                margin-bottom: 20px;
                font-size: 30px;
            }

            .banner_content p {
                font-weight: 600;
                font-size: 16px;
            }

            .getit_on a img {
                width: 100px;
                height: 100px;
            }

            .signup_btn a {
                padding: 6px 20px;
            }

            .banner_content {
                margin-top: 40px;
            }
        }

        @media screen and (max-width: 750px) {
            .FBanner {
                background: url("/Content/img/Banners/virtualSm.png")center !important;
                background-size: cover !important;
                height: 440px;
                margin-top: -12px;
            }

            .SBanner {
                background: url("Content/img/Banners/auctionSm.png")center !important;
                background-size: cover !important;
                height: 440px;
                margin-top: -12px;
            }

            .TBanner {
                background: url("/Content/img/Banners/coming_SoonSm.png")center !important;
                background-size: cover !important;
                height: 440px;
                margin-top: -12px;
            }
        }

        @media screen and (max-width: 420px) {
            .owl-carousel .owl-item img {
                width: 100%;
                height: 120px;
            }

            .owl_slide_img {
                padding: 10px;
            }

            .owl-nav {
                display: none;
            }

            .owl-stage {
                padding-left: 0 !important;
            }

            #exp_categories h2, #daily_deals h2, .features_head h2, #Featured_Posts h2, #Lowest_Price_Products h2 {
                font-size: 22px !important;
            }

            #daily_deals h5, #exp_categories h5, #Featured_Posts h5, #Lowest_Price_Products h5 {
                font-size: 14px !important;
            }

            .exp_head a, .deals_head a {
                font-size: 14px;
            }
        }

        @media screen and (min-width: 480px) {
            .pi-pic img {
                height: 320px !important;
            }
        }

        @media screen and (min-width: 768px) {
            .pi-pic img {
                height: 300px !important;
            }
        }
    </style>
</head>
<body>
    <form runat="server">
        <!-- Page Preloder -->
        <!-- Header Section Begin -->
        <header class="header-section">
            <div class="header-top">
                <div class="container">
                    <div class="ht-left">
                        <div class="mail-service">
                            <i class=" fa fa-envelope"></i>
                            <%--prisolo@gmail.com--%>
                            <asp:Label ID="EmailLabel" runat="server" Text="Label"></asp:Label>
                        </div>
                        <div class="phone-service">
                            <i class=" fa fa-phone"></i>
                            0300 5982683
                        </div>
                    </div>
                    <div class="ht-right">
                        <asp:LinkButton ID="LinkButton8" CssClass="login-panel" runat="server">
                            <i class="fa fa-user"></i>
                            <asp:Label ID="LoginLabel" runat="server" Text="Login"></asp:Label>
                        </asp:LinkButton>
                        <%--<a href="Login.aspx" class="login-panel"><i class="fa fa-user"></i>
                            <asp:Label ID="LoginLabel" runat="server" Text="Label"></asp:Label>
                        </a>--%>

                        <div class="top-social">
                            <a href="https://www.facebook.com/104556167853297?"><i class="ti-facebook"></i></a>
                            <a href="#"><i class="ti-twitter-alt"></i></a>
                            <a href="#"><i class="ti-linkedin"></i></a>
                            <a href="#"><i class="ti-pinterest"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark p-0">
                <div class="container">
                    <a class="navbar-brand pt-2 pb-2" href="https://www.prisolo.com/">
                        <img src="../../Content/img/logo.png" width="160" class="img-fluid" />
                    </a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav ml-auto">
                            <li class="nav-item">
                                <a class="nav-link" target="_self" href="Index.aspx">Home <span class="sr-only">(current)</span></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" target="_self" href="Products.aspx">Auction</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" target="_self" href="UserRegistration.aspx">Register As User</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" target="_self" href="VendorRegistration.aspx">Register As Seller</a>
                            </li>
                            <li class="nav-item active">
                                <a class="nav-link" target="_self" href="AboutUs.aspx">About Us</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" target="_self" href="ContactUs.aspx">Contact Us</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </header>
        <main>
            <div class="aboutMainBanner" style="background: linear-gradient(rgba(0,0,0,.5),rgba(0,0,0,.5)),url(Content/img/Banners/aboutus.jpg); background-size: cover; padding: 160px 0;">
                <div class="container">
                    <h1 style="color: #fff"><strong>About Us</strong></h1>
                </div>
            </div>
            <div class="container">
                <div class="AboutMainHeading pb-4 pt-4 mt-4 mb-4 text-center">
                    <h2><strong>About Us</strong></h2>
                </div>
                <div class="ContentAbout">
                    <p>
                        <b>Prisolo is both an Auction Website and also an E-Commerce market-place</b>. If you are a seller you can create your own free online store in minutes. If you are a buyer you can browse and search among millions of products. All eligible products are submitted to Shopping.
                     <br />
                        <b>Now introducing Wallet System in which you can add, transfer or with draw you amount.</b>
                    </p>
                    <p>The development of the <b>Prisolo</b> began in the early spring of 2019. After many hours of hard work, <b>Prisolo </b>finally went live in its beta version in the early fall of 2019. Since then, we have constantly been adding new features while also trying to keep the original "clean and simple" look.</p>
                </div>
            </div>
            <div class="followUs">
                <div class="container text-center">
                    <h2 class="mb-4"><b>Follow Us</b></h2>
                    <div class="row m-0">
                        <a href="https://www.facebook.com/104556167853297?" target="_blank">
                            <i class="fa fa-facebook"></i>
                        </a>
                        <a href="#">
                            <i class="fa fa-twitter"></i>
                        </a>

                        <a href="#">
                            <i class="fa fa-linkedin"></i>
                        </a>
                        <a href="#">
                            <i class="fa fa-pinterest"></i>
                        </a>
                    </div>
                </div>
            </div>
        </main>
        
        <!-- Footer is here -->
        <footer class="footer-section" id="footer">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-4">
                        <div class="footer-left">
                            <div class="footer-logo">
                                <a href="#">
                                    <img src="Content/img/logo.png" alt=""></a>
                            </div>
                            <ul>
                                <li>Phone: 0300 5982683</li>
                                <li>Email: Support@Prisolo.com</li>
                            </ul>
                            <div class="footer-social">
                                <a href="https://www.facebook.com/104556167853297?" target="_blank"><i class="fa fa-facebook"></i></a>
                                <a href="#"><i class="fa fa-instagram"></i></a>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-pinterest"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="footer-widget">
                            <h5>Information</h5>
                            <ul>
                                <li><a href="Login.aspx">Home</a></li>
                                <li><a href="Products.aspx">Shop</a></li>
                                <li><a href="UserRegistration.aspx">Register as User</a></li>
                                <li><a href="VendorRegistration.aspx">Register as Vendor</a></li>
                            </ul>
                        </div>
                    </div>

                    <div class="col-lg-6 col-md-12">
                        <div class="newslatter-item">
                            <h5>Join Our Newsletter Now</h5>
                            <p>Get E-mail updates about our latest shop and special offers.</p>
                            <div class="subscribe-form">
                                <input type="text" placeholder="Enter Your Mail">
                                <button type="button">Subscribe</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="copyright-reserved">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <div class="copyright-text text-center">
                                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                <span>Copyright &copy;<script>document.write(new Date().getFullYear());</script>
                                    All rights reserved | Powered By <a href="http://pixus-tech.com/" style="color: #e7ab3c;">Pixus</a></span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
    </form>


    <script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
    <script src="/Content/js/main.js"></script>
    <script>
        // Daily Deal Hide Show
        var adItemClass = document.querySelector(".dailyDealItem");
        var adMainId = document.getElementById("daily_deals");
        var featItemClass = document.querySelector(".featuredItem")
        var featMainId = document.getElementById("Featured_Posts")
        var lowPrItemClass = document.querySelector(".lowpriceItem");
        var lowPrId = document.getElementById("Lowest_Price_Products")
        if (adItemClass == null) {
            adMainId.style.display = "none";
        }
        if (featItemClass == null) {
            featMainId.style.display = "none";
        }
        if (lowPrItemClass == null) {
            lowPrId.style.display = "none";
        }


    </script>
    <script>
        $(document).ready(function () {
            $(".navbar-brand").attr("href").replace("www.prisolo.com");
        })
    </script>

    <script>
        $('.exp_prod').owlCarousel({
            stagePadding: 80,
            margin: 10,
            nav: true,
            responsive: {
                0: {
                    items: 2,
                    stagePadding: 20,
                },
                600: {
                    items: 3,
                    stagePadding: 20,
                },
                1000: {
                    items: 4
                },
                1200: {
                    items: 4
                }
            }
        });
    </script>
    <script>
        $(document).ready(function () {
            $('.main_slider').owlCarousel({
                items: 1,
                margin: 10,
                autoHeight: true,
                animateOut: 'flipOutY',
                animateIn: 'flipInY',
                nav: true,
                loop: true,
                autoplay: true,
                autoplayTimeout: 4000,

                smartSpeed: 450
            });

        });
        $(".product-slider").owlCarousel({
            margin: 25,
            nav: true,
            loop: true,
            items: 4,
            dots: true,
            navText: ['<i class="ti-angle-left"></i>', '<i class="ti-angle-right"></i>'],
            smartSpeed: 1200,
            autoHeight: false,
            autoplay: true,
            autoplayTimeout: 3000,
            responsive: {
                0: {
                    items: 1,
                    stagePadding: 20,
                },
                400: {
                    items: 1,
                    stagePadding: 60,
                },
                460: {
                    items: 2,
                },
                768: {
                    items: 3,
                },
                992: {
                    items: 2,
                },
                1200: {
                    items: 3,
                }
            }
        });
    </script>
</body>
</html>


