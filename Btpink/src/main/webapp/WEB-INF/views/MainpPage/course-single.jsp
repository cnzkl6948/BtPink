<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>

  <!-- SITE TITTLE -->
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Tabs &amp; Dropdown - KIDZ</title>

  <!-- PLUGINS CSS STYLE -->
  <link href="./resources/plugins/jquery-ui/jquery-ui.css" rel="stylesheet">
  <link href="./resources/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="./resources/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link rel="stylesheet" type="text/css" href="./resources/plugins/rs-plugin/css/settings.css" media="screen">
  <link rel="stylesheet" type="text/css" href="./resources/plugins/selectbox/select_option1.css">
  <link rel="stylesheet" type="text/css" href="./resources/plugins/owl-carousel/owl.carousel.css" media="screen">
  <link rel="stylesheet" type="text/css" href="./resources/plugins/isotope/jquery.fancybox.css">
  <link rel="stylesheet" type="text/css" href="./resources/plugins/isotope/isotope.css">

  <!-- GOOGLE FONT -->
  <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700' rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Dosis:400,300,600,700' rel='stylesheet' type='text/css'>

  <!-- CUSTOM CSS -->
  <link href="./resources/css/style.css" rel="stylesheet">
  <link rel="stylesheet" href="./resources/css/default.css" id="option_color">

  <!-- Icons -->
  <link rel="shortcut icon" href="img/favicon.png">

  <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

</head>

<body class="body-wrapper">


  <div class="main-wrapper">
    <!-- HEADER -->
    <header id="pageTop" class="header-wrapper">
      <!-- COLOR BAR -->
      <div class="container-fluid color-bar top-fixed clearfix">
        <div class="row">
          <div class="col-sm-1 col-xs-2 bg-color-1">fix bar</div>
          <div class="col-sm-1 col-xs-2 bg-color-2">fix bar</div>
          <div class="col-sm-1 col-xs-2 bg-color-3">fix bar</div>
          <div class="col-sm-1 col-xs-2 bg-color-4">fix bar</div>
          <div class="col-sm-1 col-xs-2 bg-color-5">fix bar</div>
          <div class="col-sm-1 col-xs-2 bg-color-6">fix bar</div>
          <div class="col-sm-1 bg-color-1 hidden-xs">fix bar</div>
          <div class="col-sm-1 bg-color-2 hidden-xs">fix bar</div>
          <div class="col-sm-1 bg-color-3 hidden-xs">fix bar</div>
          <div class="col-sm-1 bg-color-4 hidden-xs">fix bar</div>
          <div class="col-sm-1 bg-color-5 hidden-xs">fix bar</div>
          <div class="col-sm-1 bg-color-6 hidden-xs">fix bar</div>
        </div>
      </div>

      <!-- TOP INFO BAR -->
      <div class="top-info-bar bg-color-7 hidden-xs">
        <div class="container">
          <div class="row">
            <div class="col-sm-7">
              <ul class="list-inline topList">
                <li><i class="fa fa-envelope bg-color-1" aria-hidden="true"></i> <a href="mailto:info@yourdomain.com">info@yourdomain.com</a></li>
                <li><i class="fa fa-phone bg-color-2" aria-hidden="true"></i> +1 234 567 8900</li>
                <li><i class="fa fa-clock-o bg-color-6" aria-hidden="true"></i> Open: 9am - 6pm</li>
              </ul>
            </div>
            <div class="col-sm-5">
              <ul class="list-inline functionList">
                <li><i class="fa fa-globe bg-color-4" aria-hidden="true"></i></li>
                <li class="LanguageList">
                  <select name="guiest_id1" id="guiest_id1" class="select-drop">
                    <option value="0"><i class="fa fa-globe bg-color-4" aria-hidden="true"></i> Language</option>
                    <option value="1">English</option>
                    <option value="2">Spanish</option>
                    <option value="3">Hindi</option>
                  </select>
                </li>
                <li><i class="fa fa-unlock-alt bg-color-5" aria-hidden="true"></i> <a href='#loginModal' data-toggle="modal" >Login</a><span>or</span><a href='#createAccount' data-toggle="modal">Create an account</a></li>
                <li class="cart-dropdown">
                  <a href="#" class="bg-color-6 shop-cart" >
                    <i class="fa fa-shopping-basket " aria-hidden="true"></i>
                    <span class="badge bg-color-1">3</span>
                  </a>
                  <ul class="dropdown-menu dropdown-menu-right">
                    <li><i class="fa fa-shopping-basket " aria-hidden="true"></i>3 items in your cart</li>
                    <li>
                      <a href="single-product.html">
                        <div class="media">
                          <div class="media-left">
                            <img src="img/home/cart/cart-img.png" alt="cart-Image">
                          </div>
                          <div class="media-body">
                            <h4>Barbie Racing Car</h4>
                            <div class="price">
                              <span class="color-1">$50</span>
                            </div>
                            <span class="amount">Qnt: 1</span>
                          </div>
                        </div>
                      </a>
                      <span class="cancel"><i class="fa fa-close" aria-hidden="true"></i></span>
                    </li>
                    <li>
                      <a href="single-product.html">
                        <div class="media">
                          <div class="media-left">
                            <img src="img/home/cart/cart-img.png" alt="cart-Image">
                          </div>
                          <div class="media-body">
                            <h4>Barbie Racing Car</h4>
                            <div class="price">
                              <span class="color-1">$50</span>
                            </div>
                            <span class="amount">Qnt: 1</span>
                          </div>
                        </div>
                      </a>
                      <span class="cancel"><i class="fa fa-close" aria-hidden="true"></i></span>
                    </li>
                    <li>
                      <a href="single-product.html">
                        <div class="media">
                          <div class="media-left">
                            <img src="img/home/cart/cart-img.png" alt="cart-Image">
                          </div>
                          <div class="media-body">
                            <h4>Barbie Racing Car</h4>
                            <div class="price">
                              <span class="color-1">$50</span>
                            </div>
                            <span class="amount">Qnt: 1</span>
                          </div>
                        </div>
                      </a>
                      <span class="cancel"><i class="fa fa-close" aria-hidden="true"></i></span>
                    </li>
                    <li>
                      <span class="cart-total">Subtotal</span>
                      <span class="cart-price">$150</span>
                      <div class="cart-button">
                        <button type="button" class="btn btn-primary" onclick="location.href='checkout-step-1.html';">Checkout</button>
                        <button type="button" class="btn btn-primary" onclick="location.href='cart-page.html';">View Cart</button>
                      </div>
                    </li>
                  </ul>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>

      <!-- NAVBAR -->
      <nav id="menuBar" class="navbar navbar-default lightHeader" role="navigation">
        <div class="container">
          <!-- Brand and toggle get grouped for better mobile display -->
          <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.html"><img src="img/logo-school.png" alt="Kidz School"></a>
          </div>

          <!-- Collect the nav links, forms, and other content for toggling -->
          <div class="collapse navbar-collapse navbar-ex1-collapse">
            <ul class="nav navbar-nav navbar-right">
              <li class="dropdown singleDrop color-1  ">
                <a href="javascript:void(0)" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                  <i class="fa fa-home bg-color-1" aria-hidden="true"></i> <span class="active">Home</span>
                </a>
                <ul class="dropdown-menu dropdown-menu-left">
                  <li class=""><a href="index.html">Kidz School</a></li>
                  <li class=""><a href="index-v2.html">Kidz Store</a></li>
                  <li class=""><a href="index-v3.html">Kidz Daycare</a></li>
                  <li class=""><a href="index-v4.html">Kidz Fashion</a></li>
                </ul>
              </li>
              <li class="dropdown singleDrop color-3 ">
                <a href="javascript:void(0)" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><i class="fa fa-list-ul bg-color-3" aria-hidden="true"></i> <span>Pages</span></a>
                <ul class="dropdown-menu dropdown-menu-left">
                  <li class=" "><a href="about_us.html">About</a></li>
                  <li class="dropdown dropdown-submenu ">
                    <a href="javascript:void(0)" class="dropdown-toggle" data-toggle="dropdown">Team
                    </a>
                    <ul class="dropdown-menu">
                      <li class=" "><a href="teachers.html">Teachers</a></li>
                      <li class=" "><a href="teachers-details.html">Teacher Details</a></li>
                    </ul>
                  </li>
                  <li class=" "><a href="testimonial.html">Testimonial</a></li>
                  <li class="dropdown dropdown-submenu
                     ||
                     ||
                     ">
                    <a href="javascript:void(0)" class="dropdown-toggle" data-toggle="dropdown">Events 
                    </a>
                    <ul class="dropdown-menu">
                      <li class=" "><a href="all-events.html">All Events</a></li>
                      <li class=""><a href="single-event-left-sidebar.html">Single Event Left Sidebar</a></li>
                      <li class=""><a href="single-event-right-sidebar.html">Single Event Right Sidebar</a></li>
                    </ul>
                  </li>
                  <li class=""><a href="photo-gallery.html">Photo Gallery</a></li>
                  <li class=""><a href="pricing-table.html">Pricing Table</a></li>
                  <li class=""><a href="services.html">Services</a></li>
                  <li class=""><a href="service-details.html">Services Details</a></li>
                  <li class=""><a href="search-result.html">Search Results</a></li>
                  <li class=""><a href="contact-us.html">Contact Us</a></li>
                  <li class=""><a href="faq.html">FAQ</a></li>
                  <li class=""><a href="sign-up-or-login.html">Sign Up / Login</a></li>
                  <li class="" ><a href="404.html">Error 404</a></li>
                  <li><a href="coming-soon.html">Coming Soon</a></li>
                </ul>
              </li>
              <li class=" dropdown megaDropMenu color-2 ">
                <a href="javascript:void(0)" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="300" data-close-others="true" aria-expanded="false">
                  <i class="fa fa-file-text-o bg-color-2" aria-hidden="true"></i>
                  <span>Courses</span>
                </a>
                <ul class="row dropdown-menu">
                  <li class="col-sm-3 col-xs-12">
                    <ul class="list-unstyled">
                      <li>Courses Grid</li>
                      <li class=""><a href="course-grid-full.html">Courses Grid Fullwidth</a></li>
                      <li class="">
                        <a href="course-grid-left-sidebar.html">Courses Grid Left Sidebar</a></li>
                      <li class="">
                        <a href="course-grid-right-sidebar.html">Courses Grid Right Sidebar</a></li>
                    </ul>
                  </li>
                  <li class="col-sm-3 col-xs-12">
                    <ul class="list-unstyled">
                      <li>Courses List</li>
                      <li class=""><a href="course-list-fullwidth.html">Courses List Fullwidth</a></li>
                      <li class=""><a href="course-list-left-sidebar.html">Courses List left Sidebar</a></li>
                      <li class=""><a href="course-list-right-sidebar.html">Courses List Right Sidebar</a></li>
                    </ul>
                  </li>
                  <li class="col-sm-3 col-xs-12">
                    <ul class="list-unstyled">
                      <li>Single Course</li>
                      <li class=""><a href="course-single.html">Single Course Fullwidth</a></li>
                      <li class=""><a href="course-single-left-sidebar.html">Single Course left Sidebar</a></li>
                      <li class=""><a href="course-single-right-sidebar.html">Single Course Right Sidebar</a></li>
                    </ul>
                  </li>
                  <li class="col-sm-3 col-xs-12">
                    <ul class="list-unstyled">
                      <li>Checkout</li>
                      <li class="" ><a href="checkout-step-1.html">Personal Info</a></li>
                      <li class="" ><a href="checkout-step-2.html">Payment Info</a></li>
                      <li class="" ><a href="checkout-step-3.html">Confirmation</a></li>
                    </ul>
                  </li>
                </ul>
              </li>
              <li class="dropdown singleDrop color-4 ">
                <a href="javascript:void(0)" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                  <i class="fa fa-pencil-square-o bg-color-4" aria-hidden="true"></i>
                  <span>Store</span>
                </a>
                <ul class="dropdown-menu dropdown-menu-right">
                  <li class="dropdown dropdown-submenu
                     ||
                     ||
                     ">
                    <a href="javascript:void(0)" class="dropdown-toggle " data-toggle="dropdown">Products
                    </a>
                    <ul class="dropdown-menu">
                      <li class=""><a href="product.html">Products Fullwidth</a></li>
                      <li class=""><a href="product-left-sidebar.html">Products Left Sidebar</a></li>
                      <li class=""><a href="product-right-sidebar.html">Products Right Sidebar</a></li>
                    </ul>
                  </li>
                  <li class=""><a href="single-product.html">Single Product</a></li>
                  <li class=""><a href="category.html">Product Categories</a></li>
                  <li class=""><a href="cart-page.html">Cart</a></li>
                  <li class="dropdown dropdown-submenu">
                    <a href="javascript:void(0)" class="dropdown-toggle" data-toggle="dropdown">Checkout
                    </a>
                    <ul class="dropdown-menu">
                      <li class=" "><a href="checkout-step-1.html">Personal Info</a></li>
                      <li class=" "><a href="checkout-step-2.html">Payment Info</a></li>
                      <li class=" "><a href="checkout-step-3.html">Confirmation</a></li>
                    </ul>
                  </li>
                </ul>
              </li>
              <li class="dropdown singleDrop color-5  ">
                <a href="javascript:void(0)" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                  <i class="fa fa-calendar bg-color-5" aria-hidden="true"></i>
                  <span>Blog</span>
                </a>
                <ul class="dropdown-menu dropdown-menu-right">
                  <li class="dropdown dropdown-submenu
                     ||
                    
                    
                  ">
                    <a href="javascript:void(0)" class="dropdown-toggle" data-toggle="dropdown">Blog Grid
                    </a>
                    <ul class="dropdown-menu">
                      <li class=""><a href="blog-grid.html">Blog Grid Fullwidth</a></li>
                      <li class=""><a href="blog-grid-left-sidebar.html">Blog Grid Left Sidebar</a></li>
                      <li class=""><a href="blog-grid-right-sidebar.html">Blog Grid Right Sidebar</a></li>
                    </ul>
                  </li>
                  <li class="dropdown dropdown-submenu
                     ||
                     ||
                     ">
                    <a href="javascript:void(0)" class="dropdown-toggle" data-toggle="dropdown">Blog List
                    </a>
                    <ul class="dropdown-menu">
                      <li class="" ><a href="blog-list.html">Blog List Fullwidth</a></li>
                      <li class=""><a href="blog-list-left-sidebar.html">Blog List Left Sidebar</a></li>
                      <li class=""><a href="blog-list-right-sidebar.html">Blog List Right Sidebar</a></li>
                    </ul>
                  </li>
                  <li class="dropdown dropdown-submenu
                     ||
                     ||
                     ">
                    <a href="javascript:void(0)" class="dropdown-toggle" data-toggle="dropdown">Single Blog
                    </a>
                    <ul class="dropdown-menu">
                      <li class=""><a href="single-blog.html">Single Blog Fullwidth</a></li>
                      <li class=""><a href="single-blog-left-sidebar.html">Single Blog Left Sidebar</a></li>
                      <li class=""><a href="single-blog-right-sidebar.html">Single Blog Right Sidebar</a></li>
                    </ul>
                  </li>
                </ul>
              </li>
              <li class="dropdown singleDrop color-6  active ">
                <a href="javascript:void(0)" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><i class="fa fa-gg bg-color-6" aria-hidden="true"></i> <span>Components</span></a>
                <ul class="dropdown-menu dropdown-menu-right">
                  <li class=" "><a href="accordion-toggles.html">Accordions &amp; Toggles</a></li>
                  <li class=" active "><a href="tabs-dropdown.html">Tabs &amp; Dropdowns</a></li>
                  <li class=" "><a href="alert-label-badges.html">Alert-Label-badges</a></li>
                  <li class=" "><a href="progress-bar.html">Progress Bar</a></li>
                  <li class=" "><a href="buttons.html">Buttons</a></li>
                  <li class=" "><a href="forms.html">Forms</a></li>
                  <li class=" "><a href="list-panel.html">Listgroups Panel</a></li>
                  <li class=" "><a href="tooltip-pagination.html">Tooltip Pagination</a></li>
                  <li class=" "><a href="typography.html">Typography</a></li>
                  <li class=" "><a href="responsive-embed.html">Responsive Embed</a></li>
                </ul>
              </li>
            </ul>
          </div>

          <div class="cart-dropdown">
            <a href="#" class="bg-color-6 shop-cart">
              <i class="fa fa-shopping-basket " aria-hidden="true"></i>
              <span class="badge bg-color-1">3</span>
            </a>
            <ul class="dropdown-menu dropdown-menu-right">
              <li><i class="fa fa-shopping-basket " aria-hidden="true"></i>3 items in your cart</li>
              <li>
                <a href="single-product.html">
                  <div class="media">
                    <div class="media-left">
                      <img src="img/home/cart/cart-img.png" alt="cart-Image">
                    </div>
                    <div class="media-body">
                      <h4>Barbie Racing Car</h4>
                      <div class="price">
                        <span class="color-1">$50</span>
                      </div>
                      <span class="amount">Qnt: 1</span>
                    </div>
                  </div>
                </a>
                <span class="cancel"><i class="fa fa-close" aria-hidden="true"></i></span>
              </li>
              <li>
                <a href="single-product.html">
                  <div class="media">
                    <div class="media-left">
                      <img src="img/home/cart/cart-img.png" alt="cart-Image">
                    </div>
                    <div class="media-body">
                      <h4>Barbie Racing Car</h4>
                      <div class="price">
                        <span class="color-1">$50</span>
                      </div>
                      <span class="amount">Qnt: 1</span>
                    </div>
                  </div>
                </a>
                <span class="cancel"><i class="fa fa-close" aria-hidden="true"></i></span>
              </li>
              <li>
                <a href="single-product.html">
                  <div class="media">
                    <div class="media-left">
                      <img src="img/home/cart/cart-img.png" alt="cart-Image">
                    </div>
                    <div class="media-body">
                      <h4>Barbie Racing Car</h4>
                      <div class="price">
                        <span class="color-1">$50</span>
                      </div>
                      <span class="amount">Qnt: 1</span>
                    </div>
                  </div>
                </a>
                <span class="cancel"><i class="fa fa-close" aria-hidden="true"></i></span>
              </li>
              <li>
                <span class="cart-total">Subtotal</span>
                <span class="cart-price">$150</span>
                <div class="cart-button">
                  <button type="button" class="btn btn-primary" onclick="location.href='checkout-step-1.html';">Checkout</button>
                  <button type="button" class="btn btn-primary" onclick="location.href='cart-page.html';">View Cart</button>
                </div>
              </li>
            </ul>
          </div>
        </div>
      </nav>
    </header>
    <!-- WHITE SECTION -->
    <section class="whiteSection full-width clearfix p-t-n">
      <div class="container">
        <div class="row">
          <div class="col-xs-12">
            <div class="sectionTitle text-center">
              <h2>
                <span class="shape shape-left bg-color-4"></span>
                <span>Tab Style 2</span>
                <span class="shape shape-right bg-color-4"></span>
              </h2>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-xs-12">
            <div class="tabCommon tabLeft">
              <ul class="nav nav-tabs"> 
				<li><a data-toggle="tab" href="#leftHome" style="width: 132px;">Morning</a></li>
                <li><a data-toggle="tab" href="#leftMenu1" style="width: 132px;">Afternoon</a></li>
                <li><a data-toggle="tab" href="#leftMenu2" style="width: 132px;">All Day</a></li>
              </ul>
              <div class="tab-content">
                <div id="leftHome" class="tab-pane fade in active">
                  <div class="media">
                    <a class="media-left" href="#">
                      <img class="media-object img-rounded" src="img/home/about-school.png" alt="Image">
                    </a>
                    <div class="media-body">
                     <div class="table-responsive">
                  <table class="table table-curved">
                    <thead>
                      <tr>
                        <th class="col-sm-2 bg-color-1">Time <i class="fa fa-arrow-down" aria-hidden="true"></i></th>
                        <th class="col-sm-2 bg-color-2">Monday</th>
                        <th class="col-sm-2 bg-color-3">Tuesday</th>
                        <th class="col-sm-2 bg-color-4">Wednesday</th>
                        <th class="col-sm-2 bg-color-5">Thursday</th>
                        <th class="col-sm-2 bg-color-6">Friday</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>9.00 - 10.00 AM</td>
                        <td>
                          <span class="color-2">History</span>
                          School History
                        </td>
                        <td>
                          <span class="color-3">Math</span>
                          Larning Numbers
                        </td>
                        <td>
                          <span class="color-4">Geography</span>
                          Making a Map
                        </td>
                        <td>
                          <span class="color-5">English</span>
                          Speaking English
                        </td>
                        <td>
                          <span class="color-6">Art</span>
                          Art
                        </td>
                      </tr>
                      <tr>
                        <td>10.00 - 11.00 AM</td>
                        <td>
                          <span class="color-2">Geography</span>
                          Making a Map
                        </td>
                        <td>
                          <span class="color-3">English</span>
                          Speaking English
                        </td>
                        <td>
                          <span class="color-4">Art</span>
                          Art
                        </td>
                        <td>
                          <span class="color-5">Math</span>
                          Larning Numbers
                        </td>
                        <td>
                          <span class="color-6">History</span>
                          School History
                        </td>
                      </tr>
                      <tr>
                        <td>11.00 - 11.30 AM</td>
                        <td>
                          <span class="color-2">Break</span>
                          Lunch
                        </td>
                        <td>
                          <span class="color-3">Break</span>
                          Lunch
                        </td>
                        <td>
                          <span class="color-4">Break</span>
                          Lunch
                        </td>
                        <td>
                          <span class="color-5">Break</span>
                          Lunch
                        </td>
                        <td>
                          <span class="color-6">Break</span>
                          Lunch
                        </td>
                      </tr>
                      <tr>
                        <td>11.30 - 12.30 PM</td>
                        <td>
                          <span class="color-2">English</span>
                          Speaking English
                        </td>
                        <td>
                          <span class="color-3">Art</span>
                          Art
                        </td>
                        <td>
                          <span class="color-4">History</span>
                          School History
                        </td>
                        <td>
                          <span class="color-5">Geography</span>
                          Making a Map
                        </td>
                        <td>
                          <span class="color-6">Math</span>
                          Larning Numbers
                        </td>
                      </tr>
                      <tr>
                        <td>12.30 - 1.30 PM</td>
                        <td>
                          <span class="color-2">Geography</span>
                          Making a Map
                        </td>
                        <td>
                          <span class="color-3">English</span>
                          Speaking English
                        </td>
                        <td>
                          <span class="color-4">Art</span>
                          Art
                        </td>
                        <td>
                          <span class="color-5">Math</span>
                          Larning Numbers
                        </td>
                        <td>
                          <span class="color-6">History</span>
                          School History
                        </td>
                      </tr>
                    </tbody>
                  </table>
                </div>
                    </div>
                  </div>
                </div>
                <div id="leftMenu1" class="tab-pane fade">
                  <div class="media">
                    <a class="media-left" href="#">
                      <img class="media-object img-rounded" src="img/home/about-school.png" alt="Image">
                    </a>
                    <div class="media-body">
                      <h3 class="media-heading">Wellcome to kidz school</h3>
                      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in repre henderit in voluptate.</p>
                      <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accu santium doloremque laudantium.</p>
                      <a href="#" class="btn btn-primary">read more</a>
                    </div>
                  </div>
                </div>
                <div id="leftMenu2" class="tab-pane fade">
                  <div class="media">
                    <a class="media-left" href="#">
                      <img class="media-object img-rounded" src="img/home/about-school.png" alt="Image">
                    </a>
                    <div class="media-body">
                      <h3 class="media-heading">Wellcome to kidz school</h3>
                      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in repre henderit in voluptate.</p>
                      <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accu santium doloremque laudantium.</p>
                      <a href="#" class="btn btn-primary">read more</a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
<footer>
  <!-- COLOR BAR -->
  <div class="container-fluid color-bar clearfix">
    <div class="row">
      <div class="col-sm-1 col-xs-2 bg-color-1">fix bar</div>
      <div class="col-sm-1 col-xs-2 bg-color-2">fix bar</div>
      <div class="col-sm-1 col-xs-2 bg-color-3">fix bar</div>
      <div class="col-sm-1 col-xs-2 bg-color-4">fix bar</div>
      <div class="col-sm-1 col-xs-2 bg-color-5">fix bar</div>
      <div class="col-sm-1 col-xs-2 bg-color-6">fix bar</div>
      <div class="col-sm-1 bg-color-1 hidden-xs">fix bar</div>
      <div class="col-sm-1 bg-color-2 hidden-xs">fix bar</div>
      <div class="col-sm-1 bg-color-3 hidden-xs">fix bar</div>
      <div class="col-sm-1 bg-color-4 hidden-xs">fix bar</div>
      <div class="col-sm-1 bg-color-5 hidden-xs">fix bar</div>
      <div class="col-sm-1 bg-color-6 hidden-xs">fix bar</div>
    </div>
  </div>
  <!-- FOOTER INFO AREA -->
  <div class="footerInfoArea full-width clearfix" style="background-image: url(img/footer/footer-bg-1.png);">
    <div class="container">
      <div class="row">
        <div class="col-sm-3 col-xs-12">
          <div class="footerTitle">
            <a href="index.html"><img src="img/logo-footer.png"></a>
          </div>
          <div class="footerInfo">
            <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa officia.Lorem ipsum dolor sit amet.</p>
            <p>consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
          </div>
        </div>
        <div class="col-sm-3 col-xs-12">
          <div class="footerTitle">
            <h4>Useful Links</h4>
          </div>
          <div class="footerInfo">
            <ul class="list-unstyled footerList">
              <li>
                <a href="index.html">
                <i class="fa fa-angle-double-right" aria-hidden="true"></i>Kidz School
                </a>
              </li>
              <li>
                <a href="about_us.html">
                  <i class="fa fa-angle-double-right" aria-hidden="true"></i>About Kidz School
                </a>
              </li>
              <li>
                <a href="index-v2.html">
                  <i class="fa fa-angle-double-right" aria-hidden="true"></i>Kidz Store
                </a>
              </li>
              <li>
                <a href="index-v3.html">
                  <i class="fa fa-angle-double-right" aria-hidden="true"></i>Kidz Daycare
                </a>
              </li>
              <li>
                <a href="photo-gallery.html">
                  <i class="fa fa-angle-double-right" aria-hidden="true"></i>
                  Photo Gallery
                </a>
              </li>
            </ul>
          </div>
        </div>
        <div class="col-sm-3 col-xs-12">
          <div class="footerTitle">
            <h4>Recent Post</h4>
          </div>
          <div class="footerInfo">
            <ul class="list-unstyled postLink">
              <li>
                <div class="media">
                  <a class="media-left" href="single-blog.html">
                    <img class="media-object img-rounded border-color-1" src="img/footer/footer-img-1.png" alt="Image">
                  </a>
                  <div class="media-body">
                    <h5 class="media-heading"><a href="single-blog.html">A Clean Website Gives More Experience To The Visitors</a></h5>
                    <p>July 7 - 2016</p>
                  </div>
                </div>
              </li>
              <li>
                <div class="media">
                  <a class="media-left" href="single-blog-left-sidebar.html">
                    <img class="media-object img-rounded border-color-2" src="img/footer/footer-img-2.png" alt="Image">
                  </a>
                  <div class="media-body">
                    <h5 class="media-heading"><a href="single-blog-left-sidebar.html">A Clean Website Gives More Experience To The Visitors</a></h5>
                    <p>July 7 - 2016</p>
                  </div>
                </div>
              </li>
              <li>
                <div class="media">
                  <a class="media-left" href="single-blog-left-sidebar.html">
                    <img class="media-object img-rounded border-color-4" src="img/footer/footer-img-3.png" alt="Image">
                  </a>
                  <div class="media-body">
                    <h5 class="media-heading"><a href="single-blog-left-sidebar.html">A Clean Website Gives More Experience To The Visitors</a></h5>
                    <p>July 7 - 2016</p>
                  </div>
                </div>
              </li>
            </ul>
          </div>
        </div>
        <div class="col-sm-3 col-xs-12">
          <div class="footerTitle">
            <h4>Mailing List</h4>
          </div>
          <div class="footerInfo">
            <p>Sign up for our mailing list to get latest updates and offers.</p>
            <div class="input-group">
              <input type="text" class="form-control" placeholder="Email address" aria-describedby="basic-addon21">
              <button type="submit" class="input-group-addon" id="basic-addon21"><i class="fa fa-check" aria-hidden="true"></i></button>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- COPY RIGHT -->
  <div class="copyRight clearfix">
    <div class="container">
      <div class="row">
        <div class="col-sm-5 col-sm-push-7 col-xs-12">
          <ul class="list-inline">
            <li><a href="#" class="bg-color-1"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
            <li><a href="#" class="bg-color-2"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
            <li><a href="#" class="bg-color-3"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
            <li><a href="#" class="bg-color-4"><i class="fa fa-pinterest-p" aria-hidden="true"></i></a></li>
            <li><a href="#" class="bg-color-5"><i class="fa fa-vimeo" aria-hidden="true"></i></a></li>
          </ul>
        </div>
        <div class="col-sm-7 col-sm-pull-5 col-xs-12">
          <div class="copyRightText">
            <p>© 2016 Copyright Kidz School Bootstrap Template by <a href="https://www.iamabdus.com/">Abdus</a>.</p>
          </div>
        </div>
      </div>
    </div>
  </div>
</footer>
</div>

<div class="scrolling">
<a href="#pageTop" class="backToTop hidden-xs" id="backToTop"><i class="fa fa-arrow-up" aria-hidden="true"></i></a>
</div>

<!-- LOGIN MODAL -->
<div class="modal fade customModal" id="loginModal" tabindex="-1" role="dialog">
<div class="modal-dialog">
  <div class="modal-content">
    <div class="panel panel-default formPanel">
      <div class="panel-heading bg-color-1 border-color-1">
        <h3 class="panel-title">Login</h3>
      </div>
      <div class="panel-body">
        <form action="#" method="POST" role="form">
          <div class="form-group formField">
            <input type="text" class="form-control" placeholder="User name">
          </div>
          <div class="form-group formField">
            <input type="password" class="form-control" placeholder="Password">
          </div>
          <div class="form-group formField">
            <input type="submit" class="btn btn-primary btn-block bg-color-3 border-color-3" value="Log in">
          </div>
          <div class="form-group formField">
            <p class="help-block"><a href="#">Forgot password?</a></p>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
</div>

<!-- CREATE ACCOUNT MODAL -->
<div class="modal fade customModal" id="createAccount" tabindex="-1" role="dialog">
<div class="modal-dialog">
  <div class="modal-content">
    <div class="panel panel-default formPanel">
      <div class="panel-heading bg-color-1 border-color-1">
        <h3 class="panel-title">Create  an account</h3>
      </div>
      <div class="panel-body">
        <form action="#" method="POST" role="form">
          <div class="form-group formField">
            <input type="text" class="form-control" placeholder="Name">
          </div>
          <div class="form-group formField">
            <input type="text" class="form-control" placeholder="User name">
          </div>
          <div class="form-group formField">
            <input type="text" class="form-control" placeholder="Phone">
          </div>
          <div class="form-group formField">
            <input type="password" class="form-control" placeholder="Password">
          </div>
          <div class="form-group formField">
            <input type="password" class="form-control" placeholder="Re-Password">
          </div>
          <div class="form-group formField">
            <input type="submit" class="btn btn-primary btn-block bg-color-3 border-color-3" value="Register">
          </div>
          <div class="form-group formField">
            <p class="help-block">Allready have an account? <a href="#">Log in</a></p>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="./resources/plugins/jquery-ui/jquery-ui.js"></script>
<script src="./resources/plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="./resources/plugins/rs-plugin/js/jquery.themepunch.tools.min.js"></script>
<script src="./resources/plugins/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
<script src="./resources/plugins/selectbox/jquery.selectbox-0.1.3.min.js"></script>
<script src="./resources/plugins/owl-carousel/owl.carousel.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/waypoints/2.0.3/waypoints.min.js"></script>
<script src="./resources/plugins/counter-up/jquery.counterup.min.js"></script>
<script src="./resources/plugins/isotope/isotope.min.js"></script>
<script src="./resources/plugins/isotope/jquery.fancybox.pack.js"></script>
<script src="./resources/plugins/isotope/isotope-triger.js"></script>
<script src="./resources/plugins/countdown/jquery.syotimer.js"></script>
<script src="./resources/plugins/velocity/velocity.min.js"></script>
<script src="./resources/plugins/smoothscroll/SmoothScroll.js"></script>
<script src="./resources/js/custom.js"></script>
</body>
</html>
