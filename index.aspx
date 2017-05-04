<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">
    static Boolean login = false;
    static String userId = "";
    static String userInfo = "";
    protected void Button1_Click(object sender, EventArgs e) {
        if (!login) {
            Panel1.Visible = true;
            Panel2.Visible = false;
        } else {
            Panel1.Visible = false;
            Panel2.Visible = true;
            Label2.Text = userId;
            Label1.Text = userInfo;
        }
        Panel3.Visible = false;
        Panel4.Visible = false;
        Panel5.Visible = false;
    }

    protected void Button2_Click(object sender, EventArgs e) {
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = true;
        Panel4.Visible = false;
        Panel5.Visible = false;
    }

    protected void Button3_Click(object sender, EventArgs e) {
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = true;
        Panel5.Visible = false;
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e) {
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = false;
        Panel5.Visible = true;
    }

    protected void Button6_Click(object sender, EventArgs e) {
        if (Page.IsValid) {
            userId = TextBox1.Text.ToString();
            userInfo = "이메일: " + TextBox4.Text.ToString() + "<br>집주소: " + TextBox5.Text.ToString() + "<br>연락처: " + TextBox6.Text.ToString();
            login = true;
            Label2.Text = userId;
            Label1.Text = userInfo;
            Panel1.Visible = false;
            Panel2.Visible = true;
        }
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="css/foundation.css" />
    <link rel="stylesheet" type="text/css" href="css/app.css" />
    <title>Civilization V</title>
</head>
<body>
    <form id="form1" runat="server">
        <!-- 헤더 & 메뉴바 -->
        <header id="header" class="topbar-sticky-shrink-header">
            <div class="full-width-testimonial">
                <div class="full-width-testimonial-section">
                    <div class="full-width-testimonial-icon text-center">
                        <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                            width="41px" height="34px" viewBox="-235 240 41 34" style="enable-background: new -235 240 41 34;" xml:space="preserve">
                            <path class="quote-path" d="M-231.3,260.4c0-5,1.3-8.8,3.7-11.7c2.4-2.8,6-4.6,10.5-5.5v5c-3.5,1-6,2.8-7.1,5.5c-0.7,1.4-0.9,2.8-0.8,4
            h8.1v12.8h-14.4V260.4z" />
                            <path class="quote-path" d="M-212,260.4c0-5,1.3-8.8,3.7-11.7c2.4-2.8,6-4.6,10.5-5.5v5c-3.5,1-6,2.8-7.1,5.5c-0.7,1.4-0.9,2.8-0.8,4h8.1
            v12.8H-212V260.4z" />
                        </svg>
                    </div>
                    <div class="full-width-testimonial-content">
                        <h5 class="full-width-testimonial-text">Not All Who Wander Are Lost.
                        </h5>
                        <p class="full-width-testimonial-source">Welcome to Civilization V</p>
                        <span class="full-width-testimonial-source-context">The game is art.</span>
                    </div>
                </div>
            </div>
        </header>

        <div data-sticky-container>
            <div data-sticky data-margin-top='0' data-top-anchor="header:bottom" data-btm-anchor="content:bottom">
                <div class="top-bar topbar-sticky-shrink">
                    <div class="top-bar-title">
                        <asp:ImageButton ID="ImageButton1" runat="server" OnClick="ImageButton1_Click" ImageUrl="~/res/banner.png" BorderStyle="None" />
                    </div>
                    <div class="top-bar-right">
                        <ul class="menu">
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
            </div>
        </div>
        <br />
        <!-- 페널 페이지 -->
        <div class="column row" id="content">
            <!-- 사용자 정보 페이지 로그인 전 -->
            <asp:Panel ID="Panel1" runat="server" Visible="false">
                <div class="full-width-testimonial2">
                    <div class="translucent-form-overlay">
                        <h4 class="text-center">회원가입</h4>
                        <div class="row columns">
                            <label>
                                ID &nbsp&nbsp&nbsp
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="ID를 입력해주세요." ControlToValidate="TextBox1" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></label>
                        </div>
                        <div class="row columns">
                            <label>
                                비밀번호 &nbsp&nbsp&nbsp
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="비밀번호를 입력해주세요." ControlToValidate="TextBox2" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox></label>
                        </div>
                        <div class="row columns">
                            <label>
                                비밀번호 확인 &nbsp&nbsp&nbsp
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="비밀번호 확인을 입력해주세요." ControlToValidate="TextBox3" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="비밀번호가 일치하지않습니다." SetFocusOnError="True"></asp:CompareValidator>
                                <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox></label>
                        </div>
                        <div class="row columns">
                            <label>
                                이메일 &nbsp&nbsp&nbsp
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="이메일을 입력해주세요." ControlToValidate="TextBox4" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="이메일 형식이 잘못됐습니다." ControlToValidate="TextBox4" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                            </label>
                        </div>
                        <div class="row columns">
                            <label>
                                집주소 &nbsp&nbsp&nbsp
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="집주소를 입력해주세요." ControlToValidate="TextBox5" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></label>
                        </div>
                        <div class="row columns">
                            <label>
                                연락처 &nbsp&nbsp&nbsp
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="연락처를 입력해주세요." ControlToValidate="TextBox6" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox6" SetFocusOnError="True" ValidationExpression="[0-9]{2,3}-[0-9]{3,4}-[0-9]{4}" ErrorMessage="연락처 형식이 잘못됐습니다."></asp:RegularExpressionValidator>
                                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></label>
                        </div>
                        <div class="row columns">
                            <br />
                            <asp:Button ID="Button6" runat="server" Text="가입하기" CssClass="primary button expanded search-button" OnClick="Button6_Click" />
                        </div>
                    </div>
                </div>
            </asp:Panel>
            <!-- 사용자 정보 페이지 로그인 후 -->
            <asp:Panel ID="Panel2" runat="server" Visible="false">
                <div class="testimonial-block-vertical">
                    <div class="testimonial-block-vertical-quote">
                        <p>
                            <asp:Label ID="Label1" runat="server" Text=""></asp:Label></p>
                    </div>
                    <div class="testimonial-block-vertical-person">
                        <img class="testimonial-block-vertical-avatar" src="res/Sejong-5050.png" alt="" />
                        <div>
                            <p class="testimonial-block-vertical-name"><asp:Label ID="Label2" runat="server" Text=""></asp:Label></p>
                            <p class="testimonial-block-vertical-info">Welcome to Civilization V ~!</p>
                        </div>
                    </div>
                </div>
            </asp:Panel>
            <!-- 정보 소개 페이지 -->
            <asp:Panel ID="Panel3" runat="server" Visible="false">
                정보 소개
            </asp:Panel>
            <!-- 시드마이어 페이지 -->
            <asp:Panel ID="Panel4" runat="server" Visible="false">
                시드마이어
            </asp:Panel>
            <!-- 메인 페이지 -->
            <asp:Panel ID="Panel5" runat="server" Visible="true">
                <div class="marketing-site-content-section">
                    <div class="marketing-site-content-section-img">
                        <img src="res/1.jpg" alt="" />
                    </div>
                    <div class="marketing-site-content-section-block">
                        <h3 class="marketing-site-content-section-block-header">Sid Merier's Civilization V</h3>
                        <p class="marketing-site-content-section-block-subheader subheader">
                            턴제 시뮬레이션 게임 시드 마이어의 문명 시리즈의 5번째 작품. 2010년 9월 21일 미국 발매, 9월 24일 전세계 발매. 한국어판 메뉴얼이 포함된 한국 정식 발매는 2011년 1월 11일이다.<br />
                            <br />
                            이전까지의 다소 복잡했던 게임 시스템을 간소화한 결과 진입장벽이 엄청나게 낮아졌고, 여기에 정식 한국어화라는 쾌거까지 합쳐져서 이전 시리즈들과는 비교도 할 수 없을 만큼 유명세가 퍼져나갔다. 초기에는 전작들과는 다른 낯선 변화들과 뭔가 아쉬운 게임성으로 비판을 받았으나, 유저들이 점점 게임에 익숙해지고 확장팩과 업데이트로 단점을 메꾸면서 파이락시스가 집계한 '최고의 문명시리즈'에서 1위를 달성하는 기염을 토했다.<br />
                            <br />
                            2015년까지 7백만 장 이상이 팔려서 역대 턴제 전략 게임 중 가장 높은 판매량을 기록하고 있다. 전작인 문명 4는 3백만장 정도로 역시 성공적인 게임이었지만 그것과 비교해도 크게 늘어난 수치.
                            <br />
                            <br />
                            한국 시간으로 2012년 6월 22일에 확장팩 'Gods & Kings'(신과 왕, 약칭 G&K 또는 GK, 이하 'GNK 확장팩'으로 서술)이 한국에 정식 발매되었고, 2013년 7월 12일에 두번째 확장팩인 'Brave New World'(멋진 신세계, 이하 'BNW 확장팩'으로 서술)가 발매되었다.
                        </p>
                        <br />
                        <asp:Button ID="Button4" runat="server" Text="steam 구매하기" CssClass="round button small" PostBackUrl="http://store.steampowered.com/app/8930/Sid_Meiers_Civilization_V/" />
                    </div>
                    <div class="marketing-site-content-section-block small-order-2 medium-order-1">
                        <h3 class="marketing-site-content-section-block-header">신품: Sid Merier's Civilization VI</h3>
                        <p class="marketing-site-content-section-block-subheader subheader">
                            인간은 탐험가이자<br />
                            발명가이자<br />
                            변화를 만드는 건축가다.<br />
                            <br />
                            인간은,<br />
                            더 나은 내일을 향해 나아간다.<br />
                            우리는 노력한다.<br />
                            우리는 꿈꾼다.<br />
                            우리는 생각한다.<br />
                            더 나은 미래를 바란다.<br />
                            <br />
                            아무리 가능성이 작더라도,<br />
                            아무리 위험해도,<br />
                            언제나 도전하고,<br />
                            더욱 발전한다.<br />
                            <br />
                            인간의 상상은 끝이 없고<br />
                            문명의 발전에 한계란 존재하지 않는다.
                        </p>
                        <br />
                        <asp:Button ID="Button5" runat="server" Text="steam 구매하기" CssClass="round button small" PostBackUrl="http://store.steampowered.com/app/289070/Sid_Meiers_Civilization_VI/" />
                    </div>
                    <div class="marketing-site-content-section-img small-order-1 medium-order-2">
                        <img src="res/civ6.jpg" alt="" />
                    </div>
                </div>
            </asp:Panel>
        </div>
    </form>
    <script src="js/vendor/jquery.js"></script>
    <script src="js/vendor/what-input.js"></script>
    <script src="js/vendor/foundation.min.js"></script>
    <script src="js/app.js"></script>
</body>
</html>
