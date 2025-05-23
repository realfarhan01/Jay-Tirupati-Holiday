<%@ Page Title="" Language="VB" MasterPageFile="~/web.master" AutoEventWireup="false" CodeFile="contact.aspx.vb" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .form-select{
            background-color:#fff;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="breadcumb-wrapper" data-bg-src="assets/img/bg/breadcumb-bg.jpg">
         <div class="container">
            <div class="breadcumb-content">
               <h1 class="breadcumb-title">Contact Us</h1>
               <ul class="breadcumb-menu">
                  <li>
                     <a href="/">Home</a>
                  </li>
                  <li>Contact Us</li>
               </ul>
            </div>
         </div>
      </div>
      <div class="space">
         <div class="container">
            <div class="row gy-40">
               <div class="col-xl-5">
                  <div class="contact-info-wrap">
                     <div class="shape-img">
                        <img src="assets/img/shape/contact_shape.png" alt="shape">
                     </div>
                     <h3 class="border-title2">Contact Info</h3>
                     <div class="contact-info-box">
                        <div class="contact-info">
                           <h4 class="contact-info__title">Contact Number:</h4>
                           <div class="contact-info__icon">
                              <i class="fal fa-phone"></i>
                           </div>
                           <div class="media-body">
                              <span class="contact-info__text">
                                 <a href="tel:+919667740384">+91 9667-740-384</a>
                                 <a href="tel:+919214377778">+91 9214-377-778</a>
                                 <a href="tel:+917891001010">+91 7891-001-010</a>
                                 <a href="tel:+919024442230">+91 9024-442-230</a>
                              </span>
                           </div>
                        </div>
                        <div class="contact-info">
                           <h4 class="contact-info__title">Mail Address:</h4>
                           <div class="contact-info__icon bg-theme">
                              <i class="fal fa-envelope"></i>
                           </div>
                           <div class="media-body">
                              <span class="contact-info__text">
                                 <a href="mailto:travels@jaytirupatiholiday.com">travels@jaytirupatiholiday.com</a>
                                 <a href="mailto:reservation@jaytirupatiholiday.com">reservation@jaytirupatiholiday.com</a>
                              </span>
                           </div>
                        </div>
                        <div class="contact-info">
                           <h4 class="contact-info__title">Office Address:</h4>
                           <div class="contact-info__icon bg-title">
                              <i class="fal fa-location-dot"></i>
                           </div>
                           <div class="media-body">
                              <span class="contact-info__text">A-6, 2nd Floor, Mall Rd, Vijay Vihar Colony, Sector-1, Vidyadhar Nagar, Jaipur, Rajasthan 302039</span>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="col-xl-7">
                  <div class="contact-map">
                     <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3556.2215101582306!2d75.77586997544114!3d26.95988377661913!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x396db3b4634402a9%3A0x36adcf9e6b430d00!2sJai%20Tirupati%20Holidays!5e0!3m2!1sen!2sin!4v1715325324303!5m2!1sen!2sin" width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <div class="space-bottom" data-bg-src="assets/img/bg/contact_bg_1.html">
         <div class="container">
            <div method="POST" class="contact-form ajax-contact">
               <h3 class="form-title">Make An Appointment</h3>
               <div class="row">
                  <div class="form-group col-md-6">
                     <asp:TextBox class="form-control style3" id="txtName" placeholder="Your Name" runat="server"></asp:TextBox>
                     <i class="fal fa-user"></i>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="mb-1" ControlToValidate="txtName" ValidationGroup="contact-page" runat="server" ErrorMessage="Fill Name*"></asp:RequiredFieldValidator>
                  </div>
                  <div class="form-group col-md-6">
                     <asp:TextBox class="form-control style3" id="txtEmail" placeholder="Email Address" runat="server"></asp:TextBox>
                     <i class="fal fa-envelope"></i>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="mb-1" ControlToValidate="txtEmail" ValidationGroup="contact-page" runat="server" ErrorMessage="Fill Email*"></asp:RequiredFieldValidator>
                  </div>
                  <div class="form-group col-md-6">
                     <asp:TextBox class="form-control style3" id="txtMobile" placeholder="Phone Number" runat="server"></asp:TextBox>
                     <i class="fal fa-phone"></i>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" CssClass="mb-1" ControlToValidate="txtMobile" ValidationGroup="contact-page" runat="server" ErrorMessage="Fill Phone Number*"></asp:RequiredFieldValidator>
                  </div>
                  <div class="form-group col-md-6">
                     <asp:DropDownList id="ddlRequirement" name="ddlState" runat="server"  CssClass="form-select nice-select">
                        <asp:ListItem Value="">Select Tour Packages</asp:ListItem>
                        <asp:ListItem Value="North India">North India</asp:ListItem>
                        <asp:ListItem Value="South India">South India</asp:ListItem>
                        <asp:ListItem Value="Central India">Central India</asp:ListItem>
                        <asp:ListItem Value="North-East India">North-East India</asp:ListItem>
                        <asp:ListItem Value="UAE">UAE</asp:ListItem>
                        <asp:ListItem Value="Thailand">Thailand</asp:ListItem>
                        <asp:ListItem Value="Nepal">Nepal</asp:ListItem>
                        <asp:ListItem Value="Bhutan">Bhutan</asp:ListItem>
                        <asp:ListItem Value="Other">Other</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" CssClass="mb-1" ControlToValidate="ddlRequirement" InitialValue="" ValidationGroup="contact-page" runat="server" ErrorMessage="Select Tour Packages*"></asp:RequiredFieldValidator>
                  </div>
                  <div class="form-group col-12">
                     <asp:TextBox class="form-control style3"  id="txtMsg" placeholder="Your Message" runat="server"></asp:TextBox>
                     <i class="fal fa-pencil"></i>
                  </div>
                  <div class="form-btn col-3">
                     <asp:Button formnovalidate="formnovalidate" ID="btnSubmit" ValidationGroup="contact-page" class="ot-btn" runat="server" Text="Send Message Now" />
                  </div>
               </div>
               <p class="form-messages mb-0 mt-3"></p>
            </div>
         </div>
      </div>
</asp:Content>

