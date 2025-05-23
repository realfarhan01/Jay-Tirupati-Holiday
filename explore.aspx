<%@ Page Title="" Language="VB" MasterPageFile="~/web.master" AutoEventWireup="false" CodeFile="explore.aspx.vb" Inherits="explore" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="breadcumb-wrapper" data-bg-src="assets/img/bg/breadcumb-bg.jpg">
         <div class="container">
            <div class="breadcumb-content">
               <h1 class="breadcumb-title">Explore</h1>
               <ul class="breadcumb-menu">
                  <li>
                     <a href="/">Home</a>
                  </li>
                  <li>Explore</li>
               </ul>
            </div>
         </div>
      </div>
      <div class="search-sec">
         <div class="container">
            <div class="search-box">
               <div action="#." method="POST" class="tour-search">
                  <div class="form-group">
                    <asp:DropDownList ID="ddlState" CssClass="form-select nice-select" AppendDataBoundItems="true" AutoPostBack="true" runat="server">
                        <asp:ListItem Value="">Select Destination</asp:ListItem>
                    </asp:DropDownList>
                     <i class="fas fa-location-dot"></i>
                  </div>
                  <div class="form-group">
                    <asp:dropdownlist id="ddlPlace" CssClass="form-select nice-select" AppendDataBoundItems="true"  runat="server">
                        <asp:ListItem Value="">Select</asp:ListItem>
                    </asp:dropdownlist>
                     <i class="fas fa-location-dot"></i>
                  </div>
                  <div class="form-btn">
                      <asp:Button ID="btnSubmit" runat="server" class="ot-btn" Text="Search" />
                  </div>
                  <p class="form-messages mb-0 mt-3"></p>
               </div>
            </div>
         </div>
      </div>
      <section class="space-top space-extra-bottom">
         <div class="container">
            <div class="row justify-content-center">
                <asp:Repeater ID="dtlBlogs" runat="server">
                    <ItemTemplate> 
                        <div class="col-xl-4 col-lg-4 col-md-6 mb-35">
                           <a href="expolre-details">
                               <div class="trip-box">
                                 <div class="trip-box__img">
                                     <a href="<%#Eval("PageURL") %>-blog"><img src="images/blog/<%#Eval("ImageName") %>" alt="<%# Eval("BlogTitle")%>"></a>
                                 </div>
                                 <div class="trip-box__content">
                                    <h2 class="trip-box__title box-title">
                                       <a href="<%#Eval("PageURL") %>-blog"><%#Eval("BlogTitle") %></a>
                                    </h2>
                                 </div>
                                    <p><%#Eval("MetaDescription") %></p>
                                  <a href="<%#Eval("PageURL") %>-blog" class="btn view-btn-default">View More</a>
                              </div>
                           </a>                  
                       </div>                        
                    </ItemTemplate>
                </asp:Repeater>
            </div>            
         </div>
      </section>
</asp:Content>

