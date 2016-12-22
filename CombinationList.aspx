<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CombinationList.aspx.cs" Inherits="CombinationList" %>

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
        <div id="preloader">
            <img class="preloader__logo" src="assets/images/logo-transparent.png" alt="" width="250" height="114" />
            <div class="preloader__progress">
                <svg width="60px" height="60px" viewBox="0 0 80 80" xmlns="http://www.w3.org/2000/svg">
                    <path class="preloader__progress-circlebg" fill="none" stroke="#dddddd" stroke-width="4" stroke-linecap="round" d="M40,10C57.351,10,71,23.649,71,40.5S57.351,71,40.5,71 S10,57.351,10,40.5S23.649,10,40.5,10z" />
                    <path id='preloader__progress-circle' fill="none" stroke="#bca480" stroke-width="4" stroke-linecap="round" stroke-dashoffset="192.61" stroke-dasharray="192.61 192.61" d="M40,10C57.351,10,71,23.649,71,40.5S57.351,71,40.5,71 S10,57.351,10,40.5S23.649,10,40.5,10z" />
                </svg>
            </div>
        </div>
        <div class="offcanvas open">
            <div class="offcanvas-wrap">
                <div class="offcanvas-user clearfix">
                    <a class="offcanvas-user-account-link" href="assets/#">
                        <i class="fa fa-user"></i>Login
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
                            <li><a href="Default.aspx" class="home"><span>Home</span></a></li>
                            <li>Combinations</li>
                        </ul>
                    </div>
                </div>
            </div>
			<div class="content-container">
				<div class="container">
					<div class="row">
						<div class="col-md-12 main-wrap">
							<div class="main-content">
								<div data-layout="masonry" class="commerce products-masonry masonry">
									<div class="masonry-filter">
										<div class="filter-action filter-action-center">
											<ul data-filter-key="filter">
												<li>
													<a class="selected" href="#" data-filter-value="*">All</a>
												</li>
                                                <asp:Repeater runat="server" ID="RepeaterList">
                                                    <ItemTemplate>
												        <li>
													        <a href="#" data-filter-value='<%# "."+Eval("com_type") %>'><%#Eval("com_type")%></a>
												        </li>
                                                    </ItemTemplate>
                                                </asp:Repeater>
											</ul>
										</div>
									</div>
									<div class="products-masonry-wrap">
										<ul class="products masonry-products row masonry-wrap">
                                            <asp:DataList ID="CombinationList1" runat="server" BorderWidth="0px" RepeatLayout="Flow">
                                                <ItemTemplate>
											        <li class='product masonry-item col-md-3 col-sm-6 <%# Eval("com_type") %> nulla proin various'>
												        <div class="product-container">
													        <figure>
														        <div class="product-wrap">
															        <div class="product-images">
																        <div class="">
																	        <a href='Combination.aspx?combination=<%# Eval("comb_id") %>'>
                                                                                <asp:Image ID="Image1" Width="262px" Height="262px" CssClass="img-responsive" ImageUrl='<%# "assets/product_images/"+Eval("outfit_img") %>' runat="server" />
																	        </a>
																        </div>
															        </div>
															        <div class="shop-loop-actions">
																        <div class="yith-wcwl-add-to-wishlist">
                                                                            <div class="yith-wcwl-add-button">
                                                                                <a href='<%# "?vote="+Eval("comb_id") %>' class="add_to_wishlist">
                                                                                    Vote UP!
                                                                                </a>
                                                                            </div>
                                                                        </div>

																        <div class="clear"></div>
															        </div>
														        </div>
														        <figcaption>
															        <div class="shop-loop-product-info">
																        <div class="info-title">
																	        <h3 class="product_title">
																		        <a href='Combination.aspx?combination=<%# Eval("comb_id") %>'>
																			        <%#Eval("comb_name") %><br /><br />
                                                                                    <b>Votes <%#Eval("votes") %></b>

																		        </a>
																	        </h3>
																        </div>
															        </div>
														        </figcaption>
													        </figure>
												        </div>
											        </li>
                                                </ItemTemplate>
                                            </asp:DataList>
										</ul>
									</div>
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
    	<script type='text/javascript' src='assets/js/isotope.pkgd.min.js'></script>

		<script type='text/javascript' src='assets/js/preloader.min.js'></script>
	</body>
</html>

