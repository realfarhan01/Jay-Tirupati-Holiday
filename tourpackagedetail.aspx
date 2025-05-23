<%@ Page Title="" Language="VB" MasterPageFile="~/web.master" AutoEventWireup="false" CodeFile="tourpackagedetail.aspx.vb" Inherits="tourpackagedetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <asp:Literal runat="server" ID="LitHead" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <%--<div class="breadcumb-wrapper" data-bg-src="assets/img/bg/breadcumb-bg.jpg">
         <div class="container">
            <div class="breadcumb-content">
               <h1 class="breadcumb-title">Tour details</h1>
               <ul class="breadcumb-menu">
                  <li>
                     <a href="/">Home</a>
                  </li>
                  <li>Tour details</li>
               </ul>
            </div>
         </div>
      </div>--%>      
     <section class="ot-tour-wrapper space-extra-bottom">
        <div class="container">
            <div class="row">
                <h1><asp:Literal ID="LitWhatsappNumber" runat="server"></asp:Literal></h1>
                <div class="col-xxl-12">
                    <div class="tour-details">
                        <div class="tour-header d-block d-md-flex">
                            <div class="col-md-6" style="margin-right:20px;">
                                <div class="blog-grid ot-carousel" data-slide-show="1" data-lg-slide-show="1" data-md-slide-show="1" data-sm-slide-show="1">
                                    <%= SliderImage %>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <h1 class="tour-title"><asp:Literal ID="LitTitle" runat="server"></asp:Literal></h1>
                                <div class="meta-box-wrap">
                                    <div class="meta-box">
                                        <div class="meta-box_icon">
                                            <i class="fal fa-location-dot"></i>
                                        </div>
                                        <div class="media-body">
                                            <h5 class="meta-box_title">Location</h5>
                                            <p class="meta-box_text"><asp:Literal ID="LitRoadMap" runat="server"></asp:Literal></p>
                                        </div>
                                    </div>
                                    <div class="meta-box">
                                        <div class="meta-box_icon">
                                            <i>₹</i>
                                        </div>
                                        <div class="media-body">
                                            <h5 class="meta-box_title">Price</h5>
                                            <p class="meta-box_text"><asp:Literal ID="LitPackagePricePP" runat="server"></asp:Literal></p>
                                        </div>
                                    </div>
                                    <div class="meta-box">
                                        <div class="meta-box_icon">
                                            <i class="fal fa-clock"></i>
                                        </div>
                                        <div class="media-body">
                                            <h5 class="meta-box_title">Duration</h5>
                                            <p class="meta-box_text">(<asp:Literal ID="LitPackageDays" runat="server"></asp:Literal>)</p>
                                        </div>
                                    </div>
                                    <div class="meta-box">
                                        <div class="meta-box_icon">
                                            <i class="fal fa-users"></i>
                                        </div>
                                        <div class="media-body">
                                            <h5 class="meta-box_title">Book Now</h5>
                                            <p class="meta-box_text"><a href="contact">I Am Interested</a></p>
                                        </div>
                                    </div>
                                </div>
                            </div>                        
                        </div>
                        <div class="search-sec mt-50 mb-5">
                             <div class="search-box">
                                    <div method="POST" class="tour-search">
                                        <div class="form-group">
                                            <asp:TextBox class="form-control form-index" id="txtName" placeholder="Your Name" runat="server"></asp:TextBox>
                                            <i class="fas fa-user"></i>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" CssClass="mb-1" ControlToValidate="txtName" ValidationGroup="indexemail" runat="server" ErrorMessage="Please Enter Your Name*"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <asp:TextBox class="form-control form-index" id="txtMobile" placeholder="Phone Number" runat="server"></asp:TextBox>
                                            <i class="fas fa-phone"></i>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" CssClass="mb-1" ControlToValidate="txtMobile" ValidationGroup="indexemail" runat="server" ErrorMessage="Please Enter Your Number*"></asp:RequiredFieldValidator>
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
                                            <asp:ListItem Value="kashmir-tour-package">Kashmir Tour Package</asp:ListItem>
                                            <asp:ListItem Value="Other">Other</asp:ListItem>
                                        </asp:DropDownList>
                                        <i class="fas fa-location-dot"></i>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" CssClass="mb-1" ControlToValidate="ddlDestination" ValidationGroup="indexemail" runat="server" ErrorMessage="Please Select Tour Packages*"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                        <asp:DropDownList id="ddlRequirement" name="ddlState" runat="server"  CssClass="form-select nice-select">
                                            <asp:ListItem value="">Select Duration</asp:ListItem>
                                            <asp:ListItem value="3 Nights / 4 Days">3 Nights / 4 Days</asp:ListItem>
                                            <asp:ListItem value="4 Nights / 5 Days">4 Nights / 5 Days</asp:ListItem>
                                            <asp:ListItem value="5 Nights / 6 Days">5 Nights / 6 Days</asp:ListItem>
                                            <asp:ListItem value="6 Nights / 7 Days">6 Nights / 7 Days</asp:ListItem>
                                            <asp:ListItem value="8 Nights / 9 Days">8 Nights / 9 Days</asp:ListItem>
                                            <asp:ListItem value="Other">Other</asp:ListItem>
                                        </asp:DropDownList>
                                        <i class="fas fa-clock"></i>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" CssClass="mb-1" ControlToValidate="ddlRequirement" InitialValue="" ValidationGroup="indexemail" runat="server" ErrorMessage="Please Select Tour Duration*"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-btn">
                                            <asp:Button formnovalidate="formnovalidate" ID="btnSubmit" ValidationGroup="indexemail"  class="ot-btn" runat="server" Text="Check Price" Style="padding:18px 10px;" />
                                        </div>
                                        <p class="form-messages mb-0 mt-3"></p>
                                    </div>
                                </div>                            
                        </div>
                        <%--<ul class="nav tour-tab" id="tourTab" role="tablist">
                            <li class="nav-item" role="presentation">
                                <a class="nav-link ot-btn active" id="description-tab" data-bs-toggle="tab" href="#tourDescription" role="tab" aria-controls="tourDescription" aria-selected="true">Information</a>
                            </li>
                            <li class="nav-item" role="presentation">
                                <a class="nav-link ot-btn" id="insight-tab" data-bs-toggle="tab" href="#insight" role="tab" aria-controls="plan" aria-selected="false">Insight</a>
                            </li>
                            <li class="nav-item" role="presentation">
                                <a class="nav-link ot-btn" id="plan-tab" data-bs-toggle="tab" href="#plan" role="tab" aria-controls="plan" aria-selected="false">ITINERARY</a>
                            </li>
                            <li class="nav-item" role="presentation">
                                <a class="nav-link ot-btn" id="photos-tab" data-bs-toggle="tab" href="#photos" role="tab" aria-controls="photos" aria-selected="false">Tour Photos</a>
                            </li>
                            <li class="nav-item" role="presentation">
                                <a class="nav-link ot-btn" id="location-tab" data-bs-toggle="tab" href="#location" role="tab" aria-controls="location" aria-selected="false">Location</a>
                            </li>
                        </ul>--%>
                        <div class="row">
                            <div class="col-md-8 text-gradient">
                                <h3>Information</h3>
                                <asp:Literal ID="LitPackageDetails" runat="server"></asp:Literal>
                                <hr />
                                <h3>Insight</h3>
                                <asp:Literal ID="LitPackageInclusion" runat="server"></asp:Literal>
                                <hr />
                                <h3>Itinerary</h3>
                                <asp:Literal ID="LitPackageItinerary" runat="server"></asp:Literal>
                                <hr />  
                                <h3>Location</h3>
                                <asp:Literal ID="LitLocationEmbed" runat="server"></asp:Literal>
                                <hr />
                                <asp:Image ID="ImgRoadMap" CssClass="blogimg" runat="server" alt="Road Map" />
                            </div>
                            <div class="col-md-4">
                                <div class="g-4">
                                    <div class="filter-item">
                                       <%= GallaryImage %>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <a href="https://wa.me/+919667740384?text=Hello, Jay Tirupati Holiday- Best Travel Agecny in India." target="_blank"><img src="assets/img/whatsapp-img.gif" alt="whatsapp-img" width="100%" /></a>
                            </div>
                        </div>                                             
                    </div>
                </div>
            </div>
            </div>
    </section>    
</asp:Content>

