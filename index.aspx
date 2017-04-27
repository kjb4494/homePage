<%@ Page Language="VB" AutoEventWireup="false" CodeFile="index.aspx.vb" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="css/foundation.min.css" />
    <link rel="stylesheet" type="text/css" href="css/app.css" />
    <link rel="stylesheet" type="text/css" href="css/Header.css" />
    <link rel="stylesheet" type="text/css" href="css/menu.css" />
    <title>Civilization V</title>
</head>
<body>
    <form id="form1" runat="server">
        <!-- Header -->
        <div class="hero-section"></div>

        <!-- Top menu -->
        <nav class="top-bar topbar-responsive">
            <div class="top-bar-title">
                <span data-responsive-toggle="topbar-responsive" data-hide-for="medium">
                    <button class="menu-icon" type="button" data-toggle=""></button>
                </span>
                <a class="topbar-responsive-logo" href="#"><strong>Site Title</strong></a>
            </div>
            <div id="topbar-responsive" class="topbar-responsive-links">
                <div class="top-bar-right">
                    <ul class="menu simple vertical medium-horizontal">
                        <li><a href="#">Home</a></li>
                        <li><a href="#">About</a></li>
                        <li><a href="#">Services</a></li>
                        <li><a href="#">Works</a></li>
                        <li><a href="#">News</a></li>
                        <li><a href="#">Contact</a></li>
                        <li>
                            <button type="button" class="button hollow topbar-responsive-button">Categories</button>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </form>
    <script src="js/vendor/jquery.js"></script>
    <script src="js/vendor/what-input.js"></script>
    <script src="js/vendor/foundation.min.js"></script>
    <script src="js/app.js"></script>
</body>
</html>
