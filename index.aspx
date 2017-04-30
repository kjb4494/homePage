<%@ Page Language="C#" %>

<!DOCTYPE html>
<script runat="server">

    protected void Button1_Click(object sender, EventArgs e) {
        Panel1.Visible = true;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = false;
    }

    protected void Button2_Click(object sender, EventArgs e) {
        Panel1.Visible = false;
        Panel2.Visible = true;
        Panel3.Visible = false;
        Panel4.Visible = false;
    }

    protected void Button3_Click(object sender, EventArgs e) {
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = true;
        Panel4.Visible = false;
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="css/foundation.min.css" />
    <link rel="stylesheet" type="text/css" href="css/app.css" />
    <link rel="stylesheet" type="text/css" href="css/Header.css" />
    <link rel="stylesheet" type="text/css" href="css/menu.css" />
    <link rel="stylesheet" type="text/css" href="css/mainPage.css" />
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
                <a class="topbar-responsive-logo" href="index.aspx"><strong>Welcome to Civilization V</strong></a>
            </div>

            <div id="topbar-responsive" class="topbar-responsive-links">
                <div class="top-bar-right">
                    <ul class="menu simple vertical medium-horizontal">
                        <li>
                            <asp:Button ID="Button1" runat="server" Text="사용자 정보" CssClass="button hollow topbar-responsive-button" OnClick="Button1_Click" />
                        </li>
                        <li>
                            <asp:Button ID="Button2" runat="server" Text="정보 소개" CssClass="button hollow topbar-responsive-button" OnClick="Button2_Click" />
                        </li>
                        <li>
                            <asp:Button ID="Button3" runat="server" Text="시드마이어" CssClass="button hollow topbar-responsive-button" OnClick="Button3_Click" />
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- page -->
        <!-- 사용자 정보 페이지 -->
        <asp:Panel ID="Panel1" runat="server" Visible="false">
            사용자 정보
        </asp:Panel>
        <!-- 정보 소개 페이지 -->
        <asp:Panel ID="Panel2" runat="server" Visible="false">
            정보 소개
        </asp:Panel>
        <!-- 시드마이어 페이지 -->
        <asp:Panel ID="Panel3" runat="server" Visible="false">
            시드마이어
        </asp:Panel>
        <!-- 대문 -->
        <asp:Panel ID="Panel4" runat="server" Visible="true">
            <div class="marketing-site-content-section">
                <div class="marketing-site-content-section-img">
                    <img src="res/military.jpg" alt="" />
                </div>
                <div class="marketing-site-content-section-block">
                    <h3 class="marketing-site-content-section-block-header">Yeti Snowcone Agency</h3>
                    <p class="marketing-site-content-section-block-subheader subheader">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam omnis, maxime libero natus qui minus!</p>
                    <a href="#" class="round button small">learn more</a>
                </div>
                <div class="marketing-site-content-section-block small-order-2 medium-order-1">
                    <h3 class="marketing-site-content-section-block-header">Yeti Snowcone Agency</h3>
                    <p class="marketing-site-content-section-block-subheader subheader">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam omnis, maxime libero natus qui minus!</p>
                    <a href="#" class="round button small">learn more</a>
                </div>
                <div class="marketing-site-content-section-img small-order-1 medium-order-2">
                    <img src="res/sejong.jpg" alt="" />
                </div>
            </div>
        </asp:Panel>
    </form>
    <script src="js/vendor/jquery.js"></script>
    <script src="js/vendor/what-input.js"></script>
    <script src="js/vendor/foundation.min.js"></script>
    <script src="js/app.js"></script>
</body>
</html>
