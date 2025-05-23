<%@ Page Title="" Language="VB" MasterPageFile="~/web.master" AutoEventWireup="false" CodeFile="index.aspx.vb" Inherits="index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Jay Tirupati Holiday: Best Tour & Travel Agecny in India</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="We are Best Travel Agency in India, Book Domestic & International Tour Package for Family and Couple at Jay Tirupati Holiday, Book India Tour Package at the Best Price" />
    <meta property="og:title" content="Jay Tirupati Holiday- Best Travel Agecny in India" />
    <meta property="og:url" content="https://jaytirupatiholiday.com/" />
    <meta property="og:description" content="We are Best Travel Agency in India, Book Domestic & International Tour Package for Family and Couple at Jay Tirupati Holiday, Book India Tour Package at the Best Price" />
    <meta property="og:image" content="https://jaytirupatiholiday.com/favicon.png" />
    <meta property="og:type" content="article" />
    <meta name="twitter:card" content="summary_large_image" />
    <meta name="twitter:title" content="Jay Tirupati Holiday: Best Tour & Travel Agecny in India" />
    <meta name="twitter:description" content="We are Best Travel Agency in India, Book Domestic & International Tour Package for Family and Couple at Jay Tirupati Holiday, Book India Tour Package at the Best Price" />
    <meta name="twitter:image" content="https://jaytirupatiholiday.com/favicon.png" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="shortcut icon" type="image/x-icon" href="favicon.png">
    <link rel="canonical" href="https://jaytirupatiholiday.com" />


</script>
	<script type="application/ld+json"
	class="yoast-schema-graph">
	{"@context":"https://schema.org","@graph":[{"@type":"WebSite","@id":"https://jaytirupatiholiday.com/#website","url":"https://jaytirupatiholiday.com/","name":"Jay Tirupati Holiday","description":"We are Best Travel Agency in India, Book Domestic & International Tour Package for Family and Couple at Jay Tirupati Holiday, Book India Tour Package at the Best Price","potentialAction":[{"@type":"SearchAction","target":{"@type":"EntryPoint","urlTemplate":"https://jaytirupatiholiday.com/?s={search_term_string}"},"query-input":"required name=search_term_string"}],"inLanguage":"en-US"},{"@type":"WebPage","@id":"https://jaytirupatiholiday.com/#webpage","url":"https://jaytirupatiholiday.com/","name":"Jay Tirupati Holiday- Best Travel Agecny in India","isPartOf":{"@id":"https://jaytirupatiholiday.com//#website"},"datePublished":"2024-07-31T15:12:14+00:00","dateModified":"2024-11-28T11:10:11+00:00","description":"We are Best Travel Agency in India, Book Domestic & International Tour Package for Family and Couple at Jay Tirupati Holiday, Book India Tour Package at the Best Price","breadcrumb":{"@id":"https://jaytirupatiholiday.com/#breadcrumb"},"inLanguage":"en-US","potentialAction":[{"@type":"ReadAction","target":["https://jaytirupatiholiday.com/"]}]},{"@type":"BreadcrumbList","@id":"https://jaytirupatiholiday.com/#breadcrumb","itemListElement":[{"@type":"ListItem","position":1,"name":"Home"}]}]}
	</script>


    <style>
        .tour-search .form-index {
            padding: 0 30px 0 43px;
            background-color: var(--white-color);
            border: 1px solid var(--border-color);
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">    
      <div class="preloader">
            <button class="ot-btn style3 preloaderCls">Cancel Preloader</button>
            <div class="preloader-inner">
                <span class="loader"></span>
            </div>
      </div>
      <div class="ot-hero-wrapper hero-1">
         <div class="hero-slider ot-carousel" data-fade="true">
             <asp:Repeater ID="rptBindBanners" runat="server">
                <ItemTemplate>
                    <div class="ot-hero-slide">
                       <div class="ot-hero-bg" data-bg-src="images/banner/<%# Eval("BannerPic")%>"></div>
                       <div class="container z-index-common">
                          <div class="hero-style1">
                             <span class="sub-title hero-subtitle" data-ani="slideinup" data-ani-delay="0.1s">Relax & Enjoy <span class="shape right">
                                   <span class="dots"></span>
                                </span>
                             </span>
                             <h2 class="hero-title" data-ani="slideinup" data-ani-delay="0.2s"><%# Eval("Title")%></h2>
                             <a href="domestic-tour" class="ot-btn" data-ani="slideinup" data-ani-delay="0.5s">Learn More</a>
                          </div>
                       </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
         </div>
      </div>
      <div class="search-sec">
         <div class="container">
            <div class="search-box">
               <div method="POST" class="tour-search">
                  <div class="form-group">
                     <asp:TextBox class="form-control form-index" id="txtName" placeholder="Your Name" runat="server"></asp:TextBox>
                     <i class="fas fa-user"></i>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="mb-1" ControlToValidate="txtName" ValidationGroup="indexemail" runat="server" ErrorMessage="Please Enter Your Name*"></asp:RequiredFieldValidator>
                  </div>
                  <div class="form-group">
                     <asp:TextBox class="form-control form-index" id="txtMobileNumber" placeholder="Phone Number" runat="server"></asp:TextBox>
                     <i class="fas fa-phone"></i>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="mb-1" ControlToValidate="txtMobileNumber" ValidationGroup="indexemail" runat="server" ErrorMessage="Please Enter Your Number*"></asp:RequiredFieldValidator>
                  </div>
                  <div class="form-group">
                    <asp:DropDownList id="ddlDestination" name="ddlState" runat="server"  CssClass="form-select nice-select">
                        <asp:ListItem Value="">Select Tour Packages</asp:ListItem>
                        <asp:ListItem Value="North India">North India</asp:ListItem>
                        <asp:ListItem Value="South India">South India</asp:ListItem>
                        <asp:ListItem Value="Central India">Central India</asp:ListItem>
                        <asp:ListItem Value="North-East India">North-East India</asp:ListItem>
                        <asp:ListItem Value="Dubai">Dubai</asp:ListItem>
                        <asp:ListItem Value="Thailand">Thailand</asp:ListItem>
                        <asp:ListItem Value="Nepal">Nepal</asp:ListItem>
                        <asp:ListItem Value="Bhutan">Bhutan</asp:ListItem>
                        <asp:ListItem Value="Other">Other</asp:ListItem>
                    </asp:DropDownList>
                    <i class="fas fa-location-dot"></i>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" CssClass="mb-1" ControlToValidate="ddlDestination" ValidationGroup="indexemail" runat="server" ErrorMessage="Please Select Tour Packages*"></asp:RequiredFieldValidator>
                  </div>
                  <div class="form-group">
                    <asp:DropDownList id="ddlDuration" name="ddlState" runat="server"  CssClass="form-select nice-select">
                        <asp:ListItem value="">Select Duration</asp:ListItem>
                        <asp:ListItem value="3 Nights / 4 Days">3 Nights / 4 Days</asp:ListItem>
                        <asp:ListItem value="4 Nights / 5 Days">4 Nights / 5 Days</asp:ListItem>
                        <asp:ListItem value="5 Nights / 6 Days">5 Nights / 6 Days</asp:ListItem>
                        <asp:ListItem value="6 Nights / 7 Days">6 Nights / 7 Days</asp:ListItem>
                        <asp:ListItem value="8 Nights / 9 Days">8 Nights / 9 Days</asp:ListItem>
                        <asp:ListItem value="Other">Other</asp:ListItem>
                    </asp:DropDownList>
                    <i class="fas fa-clock"></i>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" CssClass="mb-1" ControlToValidate="ddlDuration" InitialValue="" ValidationGroup="indexemail" runat="server" ErrorMessage="Please Select Tour Duration*"></asp:RequiredFieldValidator>
                  </div>
                  <div class="form-btn">
                     <asp:Button formnovalidate="formnovalidate" ID="btn_contact" ValidationGroup="indexemail"  class="ot-btn" runat="server" Text="Check Price" Style="padding:18px 0px;" />
                  </div>
                  <p class="form-messages mb-0 mt-3"></p>
               </div>
            </div>
         </div>
      </div>
      <div class="space">
         <div class="container">
            <div class="row">
               <div class="col-xl-6">
                  <div class="img-box1">
                     <div class="img1">
                        <img src="assets/img/normal/about_1_1.jpg" alt="About">
                     </div>
                     <div class="img2">
                        <img src="assets/img/normal/about_1_2.jpg" alt="About">
                     </div>
                     <div class="shape1">
                        <img src="assets/img/normal/about_shape_1.svg" alt="shape">
                     </div>
                  </div>
               </div>
               <div class="col-xl-6 pe-xl-4">
                  <div class="title-area mb-35">
                     <span class="sub-title">Get About Us <span class="shape right">
                           <span class="dots"></span>
                        </span>
                     </span>
                     <h1 class="sec-title">Best Travel Agency in India</h1>
                  </div>
                  <p class="mt-n2 mb-35">Welcome to Jay Tirupati Holiday, We are <b>best travel agency in india</b> where every journey is crafted with passion and with our expertise since our establishment in 2014. Whether you'reexpecting  an exotic adventure overseas or seeking a relaxing domestic escape, we've got you covered with our International and Domestic Tour Packages.</p>
                  <div class="about-media-wrap">
                     <div class="about-media">
                        <div class="about-media_icon">
                           <img src="assets/img/icon/about_media_1.svg" alt="icon">
                        </div>
                        <div class="media-body">
                           <h3 class="about-media_title box-title">24 Years Experience</h3>
                           <p class="about-media_text">Holisticly procrastinate real-time solutions for services.</p>
                        </div>
                     </div>
                     <div class="about-media">
                        <div class="about-media_icon">
                           <img src="assets/img/icon/about_media_2.svg" alt="icon">
                        </div>
                        <div class="media-body">
                           <h3 class="about-media_title box-title">Best Travel Agents</h3>
                           <p class="about-media_text">Holisticly procrastinate real-time solutions for services.</p>
                        </div>
                     </div>
                  </div>                  
               </div>
            </div>
         </div>
      </div>
      <div class="space-bottom">
         <div class="container">
            <div class="row gx-0 justify-content-between">
               <div class="col-6 col-lg-3 counter-card-wrap">
                  <div class="counter-card">
                     <div class="counter-card_icon">
                        <img src="assets/img/icon/counter_1_1.svg" alt="icon">
                     </div>
                     <div class="media-body">
                        <p class="counter-card_number text-dark">
                           <span class="counter-number">100,000</span>+
                        </p>
                        <p class="counter-card_text">Our Explorers</p>
                     </div>
                  </div>
               </div>
               <div class="col-6 col-lg-3 counter-card-wrap">
                  <div class="counter-card">
                     <div class="counter-card_icon">
                        <img src="assets/img/icon/counter_1_2.svg" alt="icon">
                     </div>
                     <div class="media-body">
                        <p class="counter-card_number text-dark">
                           <span class="counter-number">5,000</span>+
                        </p>
                        <p class="counter-card_text">Destinations</p>
                     </div>
                  </div>
               </div>
               <div class="col-6 col-lg-3 counter-card-wrap">
                  <div class="counter-card">
                     <div class="counter-card_icon">
                        <img src="assets/img/icon/counter_1_3.svg" alt="icon">
                     </div>
                     <div class="media-body">
                        <p class="counter-card_number text-dark">
                           <span class="counter-number">10,000</span>+
                        </p>
                        <p class="counter-card_text">More Trips</p>
                     </div>
                  </div>
               </div>
               <div class="col-6 col-lg-3 counter-card-wrap">
                  <div class="counter-card">
                     <div class="counter-card_icon">
                        <img src="assets/img/icon/counter_1_4.svg" alt="icon">
                     </div>
                     <div class="media-body">
                        <p class="counter-card_number text-dark">
                           <span class="counter-number">2,000</span>+
                        </p>
                        <p class="counter-card_text">Luxury Hotel</p>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <div class="space bg-smoke overflow-hidden">
         <div class="container">
            <div class="title-area text-center">
               <span class="sub-title justify-content-center">
                  <span class="shape left">
                     <span class="dots"></span>
                     </span> Top Destinations Domestic <span class="shape right">
                     <span class="dots"></span>
                  </span>
               </span>
               <h2 class="sec-title">Popular Domestic Tour</h2>
            </div>
            <div class="row align-items-center">               
               
                     <div class="col-md-3 mt-20">
                         <a href="north-india-tour-packages" target="_blank">
                            <div class="trip-card__img">
                                <img src="assets/img/tours/tour-img-2.1.jpeg" alt="Trip image">
                                <div class="position-text">
                                    <div class="trip-card__location">
                                        <i class="fas fa-location-dot"></i>
                                    </div>
                                    <h2 class="trip-card__title box-title">
                                        North India
                                    </h2>
                                </div>
                            </div>  
                         </a>
                    </div>
                     <div class="col-md-3 mt-20">
                         <a href="central-india-tour-packages" target="_blank">
                            <div class="trip-card__img">
                               <img src="assets/img/tours/tour-img-2.3.jpg" alt="Trip image">
                                <div class="position-text">
                                   <div class="trip-card__location">
                                      <i class="fas fa-location-dot"></i>
                                   </div>
                                   <h2 class="trip-card__title box-title">
                                      Central India
                                   </h2>
                                </div>
                            </div>
                        </a>
                     </div>
                     <div class="col-md-3 mt-20">
                          <a href="south-india-tour-packages" target="_blank">
                            <div class="trip-card__img">
                                <img src="assets/img/tours/tour-img-2.2.jpeg" alt="Trip image">
                                    <div class="position-text">
                                    <div class="trip-card__location">
                                        <i class="fas fa-location-dot"></i>
                                    </div>
                                    <h2 class="trip-card__title box-title">
                                        South India
                                    </h2>
                                </div>
                            </div> 
                        </a>
                     </div>
                     <div class="col-md-3 mt-20">
                         <a href="north-east-india-tour-packages" target="_blank">
                            <div class="trip-card__img">
                               <img src="assets/img/tours/tour-img-2.4.jpeg" alt="Trip image">
                                 <div class="position-text">
                                   <div class="trip-card__location">
                                      <i class="fas fa-location-dot"></i>
                                   </div>
                                   <h2 class="trip-card__title box-title">
                                      North-East India
                                   </h2>
                                </div>
                            </div>
                          </a>
                     </div>              
            </div>
         </div>
         <div class="shape-mockup jump-reverse d-none d-lg-block" data-top="2%" data-left="0%">
            <img src="assets/img/shape/plane_shape_1.svg" alt="shapes">
         </div>
         <div class="shape-mockup jump d-none d-xl-block" data-bottom="2%" data-right="0%">
            <img src="assets/img/shape/plane_shape_2.svg" alt="shapes">
         </div>
      </div>
      <div class="space">
         <div class="container">
            <div class="row align-items-center">
               <div class="col-xl-7">
                  <div class="title-area mb-30 text-center text-xl-start">
                     <span class="sub-title justify-content-center justify-content-xl-start">
                        <span class="shape left d-inline-block d-xl-none">
                           <span class="dots"></span>
                        </span> Why Choose Us <span class="shape right">
                           <span class="dots"></span>
                        </span>
                     </span>
                     <h2 class="sec-title">Get The Best Travel Experience</h2>
                  </div>
                  <p class="mt-n2 mb-35 text-center text-xl-start">Unlock unparalleled travel experiences with Jay Tirupati Holiday Agency, where every journey is meticulously crafted to exceed your expectations and create memories that last a lifetime.</p>
                  <div class="feature-media-wrap">
                     <div class="feature-media">
                        <div class="feature-media__icon">
                           <i class="fa-solid fa-calendar-clock"></i>
                        </div>
                        <div class="media-body">
                           <h3 class="feature-media__title">Set Travel Plan</h3>
                           <p class="feature-media__text">Crafting bespoke travel plans tailored to your dreams and desires.</p>
                        </div>
                     </div>
                     <div class="feature-media">
                        <div class="feature-media__icon">
                           <i class="fa-solid fa-compass"></i>
                        </div>
                        <div class="media-body">
                           <h3 class="feature-media__title">Explore Around</h3>
                           <p class="feature-media__text">Discover unique destinations and personalized experiences with Jay Tirupati Holiday Agency.</p>
                        </div>
                     </div>
                     <div class="feature-media">
                        <div class="feature-media__icon">
                           <i class="fa-solid fa-person-sign"></i>
                        </div>
                        <div class="media-body">
                           <h3 class="feature-media__title">Best Guide</h3>
                           <p class="feature-media__text">Expertise, personalized service, unforgettable experiences—your ultimate travel companion awaits.</p>
                        </div>
                     </div>
                     <div class="feature-media">
                        <div class="feature-media__icon">
                           <i class="fa-solid fa-headset"></i>
                        </div>
                        <div class="media-body">
                           <h3 class="feature-media__title">Support 24/7</h3>
                           <p class="feature-media__text">Distinctively impact client-centered ideas via future-proof paradigms.</p>
                        </div>
                     </div>
                     <div class="feature-media">
                        <div class="feature-media__icon">
                           <i class="fa-solid fa-hotel"></i>
                        </div>
                        <div class="media-body">
                           <h3 class="feature-media__title">Luxury Hotel</h3>
                           <p class="feature-media__text">Choose us for unparalleled travel experiences, supported by round-the-clock assistance.</p>
                        </div>
                     </div>
                     <div class="feature-media">
                        <div class="feature-media__icon">
                           <i class="fa-solid fa-file-check"></i>
                        </div>
                        <div class="media-body">
                           <h3 class="feature-media__title">Easy Booking</h3>
                           <p class="feature-media__text">Effortless booking for seamless travel experiences, tailored to your preferences.</p>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="col-xl-5 mt-40 mt-xl-0">
                  <div class="text-center">
                     <img src="assets/img/normal/travel_1_1.png" alt="image">
                  </div>
               </div>
            </div>
         </div>
      </div>
      <div class="space bg-smoke overflow-hidden">
         <div class="container">
            <div class="title-area text-center">
               <span class="sub-title justify-content-center">
                  <span class="shape left">
                     <span class="dots"></span>
                     </span> Top Destinations International <span class="shape right">
                     <span class="dots"></span>
                  </span>
               </span>
               <h2 class="sec-title">Popular International Tour</h2>
            </div>
            <div class="row align-items-center">               
               
                    <div class="col-md-3 mt-20">
                         <a href="uae-tour-packages" target="_blank">
                            <div class="trip-card__img">
                                <img src="assets/img/tours/tour-img-07.jpg" alt="Trip image">
                               <div class="position-text-2">
                                    <div class="trip-card__location">
                                        <i class="fas fa-location-dot"></i>
                                    </div>
                                    <h2 class="trip-card__title box-title">
                                        UAE
                                    </h2>
                                </div> 
                            </div>  
                         </a>
                     </div>
                     <div class="col-md-3 mt-20">
                         <a href="thailand-tour-packages" target="_blank">
                            <div class="trip-card__img">
                               <img src="assets/img/tours/tour-img-08.jpg" alt="Trip image">
                                <div class="position-text-2">
                                   <div class="trip-card__location">
                                      <i class="fas fa-location-dot"></i>
                                   </div>
                                   <h2 class="trip-card__title box-title">
                                      Thailand
                                   </h2>
                                </div> 
                            </div>     
                         </a>
                     </div>
                     <div class="col-md-3 mt-20">
                        <a href="nepal-tour-packages" target="_blank">
                            <div class="trip-card__img">
                               <img src="assets/img/tours/tour-img-05.jpg" alt="Trip image">
                                <div class="position-text-2">
                                   <div class="trip-card__location">
                                      <i class="fas fa-location-dot"></i>
                                   </div>
                                   <h2 class="trip-card__title box-title">
                                       Nepal
                                   </h2>
                                </div>
                            </div>
                        </a>
                     </div>
                     <div class="col-md-3 mt-20">
                         <a href="bhutan-tour-packages" target="_blank">
                            <div class="trip-card__img">
                               <img src="assets/img/tours/tour-img-06.jpg" alt="Trip image">
                               <div class="position-text-2">
                                   <div class="trip-card__location">
                                      <i class="fas fa-location-dot"></i>
                                   </div>
                                   <h2 class="trip-card__title box-title">
                                      Bhutan
                                   </h2>
                                </div> 
                            </div>  
                        </a>
                     </div>
            </div>
         </div>
         <div class="shape-mockup jump-reverse d-none d-lg-block" data-top="2%" data-left="0%">
            <img src="assets/img/shape/plane_shape_1.svg" alt="shapes">
         </div>
         <div class="shape-mockup jump d-none d-xl-block" data-bottom="2%" data-right="0%">
            <img src="assets/img/shape/plane_shape_2.svg" alt="shapes">
         </div>
      </div>
      <section class="space bg-repeat bg-smoke" id="tour-sec" data-bg-src="assets/img/bg/pattern_bg_1.png">
         <div class="container">
            <div class="title-area text-center">
               <span class="sub-title justify-content-center">
                  <span class="shape left">
                     <span class="dots"></span>
                  </span> Featured Tour <span class="shape right">
                     <span class="dots"></span>
                  </span>
               </span>
               <h3 class="sec-title">Most Popular Tours</h3>
               <p>We have a unique way to meet your adventurous expectations!</p>
            </div>
            <div class="row gy-30">
                <asp:Repeater ID="dtlTourPackages" runat="server">
                    <ItemTemplate>
                        <div class="col-xl-4 col-lg-4 col-md-6">
                            <div class="tour-card">
                                <div class="tour-card__img">
                                <a href="tourpackage-<%# Eval("PageURL")%>" target="_blank"><img src="images/tours/<%#Eval("Image1") %>" alt="<%# Eval("PackageName")%>" /></a>
                                </div>
                                <div class="tour-card__content">
                                <div class="tour-card__top">
                                    <a href="tourpackage-<%# Eval("PageURL")%>" target="_blank" class="tour-card__location">
                                        <i class="fa-light fa-location-dot"></i> <%# Eval("PackageName")%> 
                                    </a>
                                </div>
                                    <a href="tourpackage-<%# Eval("PageURL")%>" target="_blank" class="trip-more">
                                        <h6><%# Eval("PackageName")%></h6>
                                    </a>
                                    <div class="tour-meta">
                                        <span>
                                            <i class="fa-light fa-clock"></i> <%# Eval("PackageDays")%> </span>
                                        <span>
                                    </div>
                                    <div class="tour-card__bottom">
                                        <span class="tour-card__price">From <span class="price">₹ <%# Eval("PackagePricePP")%></span>
                                        </span>
                                    </div>
                                    <a href="tourpackage-<%# Eval("PageURL")%>" target="_blank" class="link-btn mb-3">See Details <i class="fas fa-arrow-up-right"></i></a>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
         </div>
      </section>
      <section class="space-top" data-bg-src="assets/img/bg/deal_bg_1.jpg">
         <div class="container">
            <div class="row text-center text-lg-start justify-content-lg-between justify-content-center align-items-end">
               <div class="col-lg-8 mb-n2 mb-lg-0">
                  <div class="title-area">
                     <span class="sub-title justify-content-center justify-content-lg-start">
                        <span class="shape left d-inline-block d-lg-none">
                           <span class="dots"></span>
                        </span> Gallery <span class="shape right">
                           <span class="dots"></span>
                        </span>
                     </span>
                     <h3 class="sec-title text-white">Gallery</h3>
                  </div>
               </div>
               <div class="col-auto">
                  <div class="sec-btn">
                     <div class="icon-box style2">
                        <button data-slick-prev="#dealSlide1" class="slick-arrow default">
                           <i class="far fa-arrow-left"></i>
                        </button>
                        <button data-slick-next="#dealSlide1" class="slick-arrow default">
                           <i class="far fa-arrow-right"></i>
                        </button>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <div class="row gx-0 ot-carousel" id="dealSlide1" data-slide-show="4" data-ml-slide-show="3" data-lg-slide-show="3" data-md-slide-show="2" data-sm-slide-show="1">           
              <asp:Repeater ID="rptGallary" runat="server">
                    <ItemTemplate>
                        <div class="col-xl-3 col-lg-4 col-md-6">
                           <div class="tour-offer">
                              <div class="tour-offer__img">
                                 <img src="images/gallarythumbnail/<%# Eval("ImageName")%>" />
                              </div>
                           </div>
                        </div>
                    </ItemTemplate>
              </asp:Repeater>
         </div>
      </section>
      <section class="space-bottom">
         <div class="testi-sec space" data-bg-src="assets/img/bg/bg_map_2.png">
            <div class="container">
               <div class="title-area text-center">
                  <span class="sub-title justify-content-center">
                     <span class="shape left">
                        <span class="dots"></span>
                     </span> Testimonials <span class="shape right">
                        <span class="dots"></span>
                     </span>
                  </span>
                  <h4 class="sec-title">What Customer Say About Us</h4>
               </div>
               <div class="row slider-shadow ot-carousel" id="testiSlide1" data-slide-show="3" data-lg-slide-show="2" data-md-slide-show="2" data-sm-slide-show="1">
                    <asp:Repeater ID="RptReview" runat="server">
                        <ItemTemplate>
                             <div class="col-lg-6">
                                 <div class="testi-card">
                                    <div class="testi-card__rating">
                                       <i class="fa-solid fa-star-sharp"></i>
                                       <i class="fa-solid fa-star-sharp"></i>
                                       <i class="fa-solid fa-star-sharp"></i>
                                       <i class="fa-solid fa-star-sharp"></i>
                                       <i class="fa-solid fa-star-sharp"></i>
                                    </div>
                                    <p class="testi-card__text"><%#Eval("Review") %></p>
                                    <div class="testi-card__profile">
                                       <div class="testi-card__avater">
                                          <img src="images/review/<%#Eval("ImageName") %>" alt="Avater">
                                       </div>
                                       <div class="media-body">
                                          <h3 class="testi-card__name"><%#Eval("Title") %></h3>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                        </ItemTemplate>
                    </asp:Repeater>
               </div>
            </div>
         </div>
      </section>      
</asp:Content>

