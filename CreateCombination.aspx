<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CreateCombination.aspx.cs" Inherits="CreateCombination" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0" />
    <title>My Account | HTML Template</title>
    <link rel="shortcut icon" href="assets/images/favicon.png">

    <link rel='stylesheet' href='assets/css/bootstrap.min.css' type='text/css' media='all' />
    <link rel='stylesheet' href='assets/css/settings.css' type='text/css' media='all' />
    <link rel='stylesheet' href='assets/css/prettyPhoto.css' type='text/css' media='all' />
    <link rel='stylesheet' href='assets/css/jquery.selectBox.css' type='text/css' media='all' />
    <link rel='stylesheet' href='assets/css/font-awesome.min.css' type='text/css' media='all' />
    <link rel='stylesheet' href='assets/css/elegant-icon.css' type='text/css' media='all' />
    <link rel='stylesheet' href='assets/css/style.css' type='text/css' media='all' />
    <link rel='stylesheet' href='assets/css/commerce.css' type='text/css' media='all' />
    <link rel='stylesheet' href='assets/css/custom.css' type='text/css' media='all' />
    <link rel='stylesheet' href='assets/css/preloader.css' type='text/css' media='all' />
    <link rel='stylesheet' href='assets/css/magnific-popup.css' type='text/css' media='all' />
    <link rel='stylesheet' href='assets/https://fonts.googleapis.com/css?family=Lato%3A400%2C700%2C900&#038;ver=4.3.1' type='text/css' media='all' />

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
            <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
</head>
<body>
    <form id="form1" runat="server" novalidate>
        <div class="offcanvas open">
            <div class="offcanvas-wrap">
                <div class="offcanvas-user clearfix">
                    <a class="offcanvas-user-account-link" href="assets/#">
                        <i class="fa fa-user"></i>Logout
                    </a>
                </div>
                <nav class="offcanvas-navbar">
                    <ul class="offcanvas-nav">
                        <li class="menu-item-has-children dropdown active">
                            <a href="Default.aspx" class="dropdown-hover">Home <span class="caret"></span></a>
                        </li>
                        <li class="menu-item-has-children dropdown">
                            <a href="CombinationList.aspx" class="dropdown-hover">Combinations <span class="caret"></span></a>
                        </li>
                        <li><a href="CreateCombination.aspx">Create My Combination</a></li>
                    </ul>
                </nav>
                <div class="offcanvas-widget">
                    <div class="widget social-widget">
                        <div class="social-widget-wrap social-widget-none">
                            <a href="assets/#" title="Facebook" target="_blank">
                                <i class="fa fa-facebook"></i>
                            </a>
                            <a href="assets/#" title="Twitter" target="_blank">
                                <i class="fa fa-twitter"></i>
                            </a>
                            <a href="assets/#" title="Google+" target="_blank">
                                <i class="fa fa-google-plus"></i>
                            </a>
                            <a href="assets/#" title="Pinterest" target="_blank">
                                <i class="fa fa-pinterest"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="wrapper" class="wide-wrap">
            <div class="offcanvas-overlay"></div>
            <header class="header-container page-heading-heading header-type-default header-default-center header-navbar-default header-scroll-resize">
                <div class="navbar-container">
                    <div class="navbar navbar-default navbar-scroll-fixed">
                        <div class="navbar-default-wrap">
                            <div class="navbar-default-container">
                                <div class="navbar-default-row">
                                    <div class="navbar-default-col">
                                        <div class="navbar-wrap">
                                            <div class="navbar-header">
                                                <div class="container">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <div class="navbar-header-left">
                                                                <div class="user-login">
                                                                    <ul class="nav top-nav">
                                                                        <li class="menu-item">
                                                                            <a href="Register.aspx"><i class="fa fa-user"></i>Login </a>
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                            <button type="button" class="navbar-toggle">
                                                                <span class="sr-only">Toggle navigation</span>
                                                                <span class="icon-bar bar-top"></span>
                                                                <span class="icon-bar bar-middle"></span>
                                                                <span class="icon-bar bar-bottom"></span>
                                                            </button>
                                                            <a class="navbar-search-button search-icon-mobile" href="assets/#">
                                                                <i class="fa fa-search"></i>
                                                            </a>
                                                            <a class="cart-icon-mobile" href="assets/#">
                                                                <i class="elegant_icon_bag"></i><span>0</span>
                                                            </a>
                                                            <a class="navbar-brand" href="assets/./">
                                                                <img class="logo" alt="Loja" src="assets/images/logo.png">
                                                                <img class="logo-fixed" alt="Loja" src="assets/images/logo-fixed.png">
                                                                <img class="logo-mobile" alt="Loja" src="assets/images/logo-mobile.png">
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <nav class="collapse navbar-collapse primary-navbar-collapse">
                                                <div class="container">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <ul class="nav navbar-nav primary-nav">
                                                                <li class="menu-item-has-children dropdown">
                                                                    <a href="Default.aspx" class="dropdown-hover">
                                                                        <span class="underline">Home</span>
                                                                        <span class="caret"></span>
                                                                    </a>
                                                                </li>
                                                                <li class="menu-item-has-children">
                                                                    <a href="CombinationList.aspx" class="dropdown-hover">
                                                                        <span class="underline">Combinations</span>
                                                                        <span class="caret"></span>
                                                                    </a>
                                                                </li>
                                                                <li>
                                                                    <a href="CreateCombination.aspx"><span class="underline">Create My Combination</span></a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </nav>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </header>
            <div class="heading-container">
                <div class="container heading-standar">
                    <div class="page-breadcrumb">
                        <ul class="breadcrumb">
                            <li><a href="assets/#" class="home"><span>Home</span></a></li>
                            <li>Create A Combination</li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="content-container">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 main-wrap">
                            <div class="main-content">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label class="control-label">Please Give a name to your combination:</label>
                                        <asp:TextBox runat="server" ID="com_name" CssClass="form-control" />
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label">Please select a gender:</label>
                                        <asp:DropDownList ID="Gender" runat="server" CssClass="form-control" OnSelectedIndexChanged="Gender_SelectedIndexChanged" AutoPostBack="True">
                                            <asp:ListItem Value="0" Text="Female"></asp:ListItem>
                                            <asp:ListItem Value="1" Text ="Male"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label">Please Select A Combination Type:</label>
                                        <asp:DropDownList ID="CombinationType" runat="server" CssClass="form-control" OnSelectedIndexChanged="CombinationType_SelectedIndexChanged" Enabled="false" AutoPostBack="true"></asp:DropDownList>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label class="control-label">Please Select:</label>
                                        <asp:DropDownList ID="CombinationParts" runat="server" CssClass="form-control" OnSelectedIndexChanged="CombinationParts_SelectedIndexChanged" AutoPostBack="true" Enabled="false"></asp:DropDownList>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <asp:DataList ID="OutfitList" runat="server" OnItemCommand="OutfitList_ItemCommand">
                                        <SelectedItemStyle BackColor="lightgreen">
                                        </SelectedItemStyle>
                                        <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Size="Smaller" Font-Strikeout="False" Font-Underline="False" />
                                        <ItemTemplate>
                                            <table style="width:100%;">
                                                <tr >
                                                    <td style="width:33%;">
                                                        <asp:Image ID="Image1" ImageUrl='<%# "assets/product_images/"+ Eval("outfit_img") %>' runat="server" />
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("outfit_name") %>'></asp:Label>
                                                        <asp:TextBox ID="TextBox1" runat="server" CssClass="hidden" Text='<%#Eval("outfit_id") %>'></asp:TextBox>
                                                        <asp:HyperLink ID="HyperLink1" runat="server" >Select</asp:HyperLink>
                                                    </td>
                                                    <td>
                                                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Select"/>
                                                    </td>
                                                </tr>
                                            </table>
                                        </ItemTemplate>
                                    </asp:DataList>
                                    <asp:Button ID="SaveButton" runat="server" Text="Save" CssClass="btn btn-black-outline" UseSubmitBehavior="false" OnClick="SaveButton_Click" Enabled="false"/>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <footer class="footer">
                <div class="footer-info">
                    <a href="#" class="go-to-top"><i class="fa fa-angle-double-up"></i></a>
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12 text-center">
                                <div class="copyright text-center">
                                     2016
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </footer>
        </div>
    </form>
		<script type='text/javascript' src='assets/js/jquery-1.11.3.min.js'></script>
		<script type='text/javascript' src='assets/js/jquery-migrate.min.js'></script>
		<script type='text/javascript' src='assets/js/easing.min.js'></script>
		<script type='text/javascript' src='assets/js/imagesloaded.pkgd.min.js'></script>
		<script type='text/javascript' src='assets/js/bootstrap.min.js'></script>
		<script type='text/javascript' src='assets/js/superfish-1.7.4.min.js'></script>
		<script type='text/javascript' src='assets/js/jquery.appear.min.js'></script>
		<script type='text/javascript' src='assets/js/script.js'></script>
		<script type='text/javascript' src='assets/js/jquery.prettyPhoto.js'></script>
		<script type='text/javascript' src='assets/js/jquery.prettyPhoto.init.min.js'></script>
		<script type='text/javascript' src='assets/js/jquery.selectBox.min.js'></script>
		<script type='text/javascript' src='assets/js/jquery.parallax.js'></script>
		<script type='text/javascript' src='assets/js/preloader.min.js'></script>
	</body>
</html>
