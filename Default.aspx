<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0"/>
		<title>Loja | HTML Template</title>
		<link rel="shortcut icon" href="images/favicon.png">

		<link rel='stylesheet' href='assets/css/bootstrap.min.css' type='text/css' media='all' />
		<link rel='stylesheet' href='assets/css/settings.css' type='text/css' media='all' />
		<link rel='stylesheet' href='assets/css/prettyPhoto.css' type='text/css' media='all'/>
		<link rel='stylesheet' href='assets/css/jquery.selectBox.css' type='text/css' media='all'/>
		<link rel='stylesheet' href='assets/css/font-awesome.min.css' type='text/css' media='all'/>
		<link rel='stylesheet' href='assets/css/elegant-icon.css' type='text/css' media='all' />
		<link rel='stylesheet' href='assets/css/style.css' type='text/css' media='all'/>
		<link rel='stylesheet' href='assets/css/commerce.css' type='text/css' media='all'/>
		<link rel='stylesheet' href='assets/css/custom.css' type='text/css' media='all'/>
		<link rel='stylesheet' href='assets/css/preloader.css' type='text/css' media='all'/>
        <link href="https://fonts.googleapis.com/css?family=Lato&amp;subset=latin-ext" rel="stylesheet">
		<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
            <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
</head>
<body>
    <form id="form1" runat="server">
		<div id="preloader">
			<img class="preloader__logo" src="assets/images/logo-transparent.png" alt="" width="250" height="114"/>
			<div class="preloader__progress">
				<svg width="60px" height="60px" viewBox="0 0 80 80" xmlns="http://www.w3.org/2000/svg">
					<path class="preloader__progress-circlebg" fill="none" stroke="#dddddd" stroke-width="4" stroke-linecap="round" d="M40,10C57.351,10,71,23.649,71,40.5S57.351,71,40.5,71 S10,57.351,10,40.5S23.649,10,40.5,10z"/>
					<path id='preloader__progress-circle' fill="none" stroke="#bca480" stroke-width="4" stroke-linecap="round" stroke-dashoffset="192.61" stroke-dasharray="192.61 192.61" d="M40,10C57.351,10,71,23.649,71,40.5S57.351,71,40.5,71 S10,57.351,10,40.5S23.649,10,40.5,10z"/>
				</svg>
			</div>
		</div>
		<div class="offcanvas open">
			<div class="offcanvas-wrap">
				<div class="offcanvas-user clearfix">
					<a class="offcanvas-user-account-link" href="#">
						<i class="fa fa-user"></i> Login
					</a>
				</div>
				<nav class="offcanvas-navbar">
					<ul class="offcanvas-nav">
						<li class="menu-item-has-children dropdown current-menu-ancestor">
							<a href="Default.aspx">Home</a>
						</li>
						<li class="menu-item-has-children dropdown">
							<a href="#">Combinations</a>
						</li>
						<li><a href="#">Create My Combination</a></li>
						<li class="menu-item-has-children dropdown">
							<a href="#" class="dropdown-hover">Blog <span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="blog-default.html">Blog Default</a></li>
								<li><a href="blog-center.html">Blog Center</a></li>
								<li><a href="blog-masonry.html">Blog Masonry</a></li>
								<li><a href="blog-detail.html">Blog Detail</a></li>
							</ul>
						</li>
						<li class="menu-item-has-children dropdown">
							<a href="#" class="dropdown-hover">Pages <span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="about-us.html">About us</a></li>
								<li><a href="contact.html">Contact Us</a></li>
							</ul>
						</li>
					</ul>
				</nav>
				<div class="offcanvas-widget">
					<div class="widget social-widget">
						<div class="social-widget-wrap social-widget-none">
							<a href="#" title="Facebook" target="_blank">
								<i class="fa fa-facebook"></i>
							</a>
							<a href="#" title="Twitter" target="_blank">
								<i class="fa fa-twitter"></i>
							</a>
							<a href="#" title="Google+" target="_blank">
								<i class="fa fa-google-plus"></i>
							</a>
							<a href="#" title="Pinterest" target="_blank">
								<i class="fa fa-pinterest"></i>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div id="wrapper" class="wide-wrap">
			<div class="offcanvas-overlay"></div>
			<header class="header-type-classic header-absolute header-transparent header-scroll-resize">
				<div class="topbar">
					<div class="container-fluid topbar-wap">
						<div class="row">
							<div class="col-sm-6">
								<div class="left-topbar">
									<div class="user-login">
										<ul class="nav top-nav">
											<li class="menu-item">
                                                <%
                                                    if (Session["user_id"] != null) { 
                                                    if (Convert.ToInt32(Session["user_id"].ToString())>0)
                                                    { %>
												<a  href="Account.aspx">
													<i class="fa fa-user"></i> My Account 
												</a>
                                                   <%
                                                       }
                                                       }else {
                                                    %>
												<a  href="Register.aspx">
													<i class="fa fa-user"></i> Login or Register 
												</a>
                                                <%}
                                                     %>

											</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="navbar-container">
					<div class="navbar navbar-default navbar-scroll-fixed">
						<div class="navbar-default-wrap">
							<div class="container navbar-default-container">
								<div class="row">
									<div class="col-md-12">
										<div class="navbar-wrap">
											<div class="navbar-header">
												<button type="button" class="navbar-toggle">
													<span class="sr-only">Toggle navigation</span>
													<span class="icon-bar bar-top"></span>
													<span class="icon-bar bar-middle"></span>
													<span class="icon-bar bar-bottom"></span>
												</button>
												<a class="navbar-search-button search-icon-mobile" href="#">
													<i class="fa fa-search"></i>
												</a>
												<a class="cart-icon-mobile" href="#">
													<i class="elegant_icon_bag"></i><span>0</span>
												</a>
												<a class="navbar-brand" href="./">
													<img class="logo" alt="Loja" src="assets/images/logo-transparent.png">
													<img class="logo-fixed" alt="Loja" src="assets/images/logo-fixed.png">
													<img class="logo-mobile" alt="Loja" src="assets/images/logo-mobile.png">
												</a>
											</div>
											<nav class="collapse navbar-collapse primary-navbar-collapse">
												<ul class="nav navbar-nav primary-nav">
													<li class="menu-item-has-children dropdown active">
														<a href="Default.aspx">
															<span class="underline">Home</span> 
														</a>
													</li>
													<li class="menu-item-has-children megamenu megamenu-fullwidth dropdown">
														<a href="CombinationList.aspx">
															<span class="underline">Combinations</span> 
														</a>
													</li>
													<li>
														<a href="CreateCombination.aspx"><span class="underline">Create My Combination</span></a>
													</li>

												</ul>
											</nav>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="header-search-overlay hide">
							<div class="container">
								<div class="header-search-overlay-wrap">
										<input type="search" class="searchinput" name="s" autocomplete="off" value="" placeholder="Search..."/>
										<input type="submit" class="searchsubmit hidden" name="submit" value="Search"/>
									<button type="button" class="close">
										<span aria-hidden="true" class="fa fa-times"></span>
										<span class="sr-only">Close</span>
									</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</header>
            <div class="content-container no-padding">
				<div class="container-full">
					<div class="row">
						<div class="col-md-12">
							<div class="main-content">
								<div id="rev_slider_wrapper" class="rev_slider_wrapper fullwidthbanner-container mb-0">
									<div id="rev_slider" class="rev_slider fullwidthabanner">
										<ul>  
											<li data-index="rs-3" data-transition="fade" data-slotamount="default" data-easein="default" data-easeout="default" data-masterspeed="default" data-thumb="" data-rotate="0" data-saveperformance="off" data-title="Slide" data-description="">
													<img src="assets/images/sliders/slider-1.jpg" alt="" width="1920" height="780" data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat" class="rev-slidebg" data-no-retina>
												<div class="tp-caption tp-resizeme" data-x="970" data-y="334" data-width="['none','none','none','none']" data-height="['none','none','none','none']" data-transform_idle="o:1;" data-transform_in="opacity:0;s:500;e:Power3.easeInOut;" data-transform_out="opacity:0;s:300;s:300;" data-start="1400" data-responsive_offset="on">
													<img src="assets/images/sliders/slider-line.png" alt="" width="30" height="4" data-ww="30px" data-hh="4px" data-no-retina>
												</div>
												<div class="tp-caption Fashion-BigDisplay Bigger tp-resizeme" data-x="0" data-y="200" data-width="['auto']" data-height="['auto']" data-transform_idle="o:1;" data-transform_in="z:0;rX:0deg;rY:0;rZ:0;sX:2;sY:2;skX:0;skY:0;opacity:0;s:500;e:Power2.easeOut;" data-transform_out="opacity:0;s:300;s:300;" data-mask_in="x:0px;y:0px;s:inherit;e:inherit;" data-start="1700" data-splitin="none" data-splitout="none" data-responsive_offset="on" style="color:#FFF;">
													ARE YOU STRUGGLING WHILE CHOOSING OUTFIT?
												</div>
											</li>
											<li data-index="rs-4" data-transition="fade" data-slotamount="default" data-easein="default" data-easeout="default" data-masterspeed="default" data-thumb="" data-rotate="0" data-saveperformance="off" data-title="Slide" data-description="">
													<img src="assets/images/sliders/slider-2.jpg" alt="" width="1920" height="780" data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat" class="rev-slidebg" data-no-retina>
												<div class="tp-caption tp-resizeme" data-x="970" data-y="334" data-width="['none','none','none','none']" data-height="['none','none','none','none']" data-transform_idle="o:1;" data-transform_in="opacity:0;s:500;e:Power3.easeInOut;" data-transform_out="opacity:0;s:300;s:300;" data-start="1400" data-responsive_offset="on">
													<img src="assets/images/sliders/slider-line.png" alt="" width="30" height="4" data-ww="30px" data-hh="4px" data-no-retina>
												</div>
												<div class="tp-caption Fashion-BigDisplay Bigger tp-resizeme" data-x="0" data-y="200" data-width="['auto']" data-height="['auto']" data-transform_idle="o:1;" data-transform_in="z:0;rX:0deg;rY:0;rZ:0;sX:2;sY:2;skX:0;skY:0;opacity:0;s:500;e:Power2.easeOut;" data-transform_out="opacity:0;s:300;s:300;" data-mask_in="x:0px;y:0px;s:inherit;e:inherit;" data-start="1700" data-splitin="none" data-splitout="none" data-responsive_offset="on" style="color:#FFF;">
													LET US CHOOSE THE BEST FOR YOU 
												</div>
											</li>
										</ul>
										<div class="tp-bannertimer tp-bottom"></div>
									</div>
								</div>
								<div class="row row-fluid mb-0">
									<div class="col-sm-12">
										<div class="container">
                    <div class="row row-fluid mb-0">
						<div class="col-md-12 ">
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
                                                                                    <small>Votes <%#Eval("votes") %></small>

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

		<script type='text/javascript' src='assets/js/jquery-1.11.3.min.js'></script>
		<script type='text/javascript' src='assets/js/jquery-migrate.min.js'></script>
		<script type='text/javascript' src='assets/js/jquery.themepunch.tools.min.js'></script>
		<script type='text/javascript' src='assets/js/jquery.themepunch.revolution.min.js'></script>
		<script type='text/javascript' src='assets/js/easing.min.js'></script>
		<script type='text/javascript' src='assets/js/imagesloaded.pkgd.min.js'></script>
		<script type='text/javascript' src='assets/js/bootstrap.min.js'></script>
		<script type='text/javascript' src='assets/js/superfish-1.7.4.min.js'></script>
		<script type='text/javascript' src='assets/js/jquery.appear.min.js'></script>
		<script type='text/javascript' src='assets/js/script.js'></script>
		<script type='text/javascript' src='assets/js/jquery.prettyPhoto.js'></script>
		<script type='text/javascript' src='assets/js/jquery.prettyPhoto.init.min.js'></script>
		<script type='text/javascript' src='assets/js/jquery.selectBox.min.js'></script>
		<script type='text/javascript' src='assets/js/preloader.min.js'></script>
		<script type='text/javascript' src='assets/js/jquery.carouFredSel.min.js'></script>

		<script type='text/javascript' src='assets/js/extensions/revolution.extension.actions.min.js'></script>
		<script type='text/javascript' src='assets/js/extensions/revolution.extension.kenburn.min.js'></script>
		<script type='text/javascript' src='assets/js/extensions/revolution.extension.layeranimation.min.js'></script>
		<script type='text/javascript' src='assets/js/extensions/revolution.extension.migration.min.js'></script>
		<script type='text/javascript' src='assets/js/extensions/revolution.extension.navigation.min.js'></script>
		<script type='text/javascript' src='assets/js/extensions/revolution.extension.parallax.min.js'></script>
		<script type='text/javascript' src='assets/js/extensions/revolution.extension.slideanims.min.js'></script>
		<script type='text/javascript' src='assets/js/extensions/revolution.extension.video.min.js'></script>
    	<script type='text/javascript' src='assets/js/isotope.pkgd.min.js'></script>

		<script type="text/javascript">

			var tpj=jQuery;
			tpj.noConflict();
			var revapi2;

			tpj(document).ready(function() {

			if(tpj('#rev_slider').revolution == undefined){
				revslider_showDoubleJqueryError('#rev_slider');
			}else{
			   revapi2 = tpj('#rev_slider').show().revolution(
				{	
					delay:9000,
						navigation: {
							keyboardNavigation:"off",
							keyboard_direction: "horizontal",
							mouseScrollNavigation:"off",
							onHoverStop:"off",
							arrows: {
								style:"gyges",
								enable:true,
								hide_onmobile:false,
								hide_onleave:true,
								hide_delay:200,
								hide_delay_mobile:1200,
								tmp:'',
								left: {
									h_align:"left",
									v_align:"center",
									h_offset:20,
									v_offset:0
								},
								right: {
									h_align:"right",
									v_align:"center",
									h_offset:20,
									v_offset:0
								}
							}
							,
							bullets: {
								enable:true,
								hide_onmobile:false,
								style:"custom",
								hide_onleave:false,
								direction:"horizontal",
								h_align:"center",
								v_align:"bottom",
								h_offset:0,
								v_offset:20,
								space:5,
								tmp:''
							}
						},
						gridwidth:1240,
						gridheight:868,
						lazyType:"none",
						minHeight:500,
						shadow:0,
						spinner:"spinner0",
						stopLoop:"off",
						stopAfterLoops:-1,
						stopAtSlide:-1,
						shuffle:"off",
						autoHeight:"off",
						disableProgressBar:"on",
						hideThumbsOnMobile:"off",
						hideSliderAtLimit:0,
						hideCaptionAtLimit:0,
						hideAllCaptionAtLilmit:0,
						debugMode:false,
						fallbacks: {
							simplifyAll:"off",
							nextSlideOnWindowFocus:"off",
							disableFocusListener:false,
						}
				});



				}
			});	/*ready*/

		</script>
    </form>
</body>
</html>
