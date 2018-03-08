<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Food2Go.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>  <meta name="format-detection" content="telephone=no"/>
    <link rel="icon" href="images/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="css/grid.css" />
    <link rel="stylesheet" href="css/style.css" />
    <link rel="stylesheet" href="css/camera.css" />
    <link rel="stylesheet" href="css/jquery.fancybox.css" />

    <script src="js/jquery.js"></script>
    <script src="js/jquery-migrate-1.2.1.js"></script>
    <script src='js/device.min.js'></script> 
</head>
<body>
    <form id="form1" runat="server">
    <div class="page">
    <!--========================================================
                              HEADER
    =========================================================-->
    <header>

        <div class="camera_container">
            <div id="camera" class="camera_wrap">
                <div data-thumb="images/HomePage_Image01_thumb.jpg" data-src="images/HomePage_Image01.jpg">
                    <div class="camera_caption fadeIn">
                    </div>
                </div>
                <div data-thumb="images/HomePage_Image02_thumb.jpg" data-src="images/HomePage_Image02.jpg">
                    <div class="camera_caption fadeIn">
                    </div>
                </div>
                <div data-thumb="images/HomePage_Image03_thumb.jpg" data-src="images/HomePage_Image03.jpg">
                    <div class="camera_caption fadeIn">
                    </div>
                </div>
            </div>

            <div class="brand wow fadeIn">
                <h1 class="brand_name">
                    <a href="./">Cafe</a>
                </h1>
            </div>
        </div>
        
        <div class="toggle-menu-container">
            <nav class="nav">
                <div class="nav_title"></div>
                <a class="sf-menu-toggle fa fa-bars" href="#"></a>
                <ul class="sf-menu">
                   <li class="active">
                        <a href="Default.aspx">Home</a>
                    </li>
                    <li>
                        <a href="RegistrationForm.aspx">Registration</a>
                    </li>
                    <li>
                        <a href="Login.aspx">Member Login</a>
                    </li> <li>
                        <a href="ForgotPassword.aspx">Forgot Password</a>
                    </li>
                    <li>
                        <a href="ADMIN/Login.aspx">Admin Login</a>
                    </li>
                </ul>
            </nav>            
        </div>

    </header>
    <!--========================================================
                              CONTENT
    =========================================================-->
    <main>
        <section class="well">
            <div class="container">
                <h2><em>Welcome to </em>Food 2 Go</h2>
            </div>            
           <div class="gallery">
                <div class="gallery_col-1">
                     <a data-fancybox-group="gallery" href="Products.aspx?id=1" class="gallery_item thumb lazy-img" style="padding-bottom: 55%;">
                        <img data-src="images/Chinese.jpg" alt="" />
                        <div class="gallery_overlay">
                            <div class="gallery_caption">
                                <p><em>Chinese</em></p>
                            </div>
                        </div>
                    </a>
                     <a data-fancybox-group="gallery" href="Products.aspx?id=2" class="gallery_item thumb lazy-img" style="padding-bottom: 95%;">
                     <img data-src="images/Mexican.jpg" alt="">
                       <div class="gallery_overlay">
                            <div class="gallery_caption">
                                 <p><em>Mexican</em></p>
                                <%--<p>Integer convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl</p>--%>
                            </div>
                        </div> 
                    </a>
                   
                
                </div>
                <div class="gallery_col-2">
                    <a data-fancybox-group="gallery" href="Products.aspx?id=3" class="gallery_item thumb lazy-img" style="padding-bottom: 55%;">
                        <img data-src="images/Italian.jpg" alt="">
                        <div class="gallery_overlay">
                            <div class="gallery_caption">
                                <p><em>Italian</em></p>
                                <%--<p>Integer convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl</p>--%>
                            </div>
                        </div>
                    </a>
                    <a data-fancybox-group="gallery" href="Products.aspx?id=4" class="gallery_item thumb lazy-img" style="padding-bottom: 95%;">
                        <img data-src="images/Indian.jpg" alt="">
                        <div class="gallery_overlay">
                            <div class="gallery_caption">
                                <p><em>Indian</em></p>
                               <%-- <p>Integer convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl</p>--%>
                            </div>
                        </div>
                    </a>
                   
                </div>
              
            </div>
        </section>
        <section class="well well__offset-1 bg-1">
            <div class="container">
            </div>
        </section>
    </main>
</div>

<script src="js/script.js"></script>
    </form>
</body>
</html>
