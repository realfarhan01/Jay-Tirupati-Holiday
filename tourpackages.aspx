<%@ Page Title="" Language="VB" MasterPageFile="~/web.master" AutoEventWireup="false" CodeFile="tourpackages.aspx.vb" Inherits="tourpackages" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <asp:Literal ID="LitHead" runat="server"></asp:Literal>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="breadcumb-wrapper" style=<%= BannerImage %>>
        <div class="container">
            <div class="breadcumb-content">
               <h1 class="breadcumb-title"><asp:Literal ID="LitPageTitle" runat="server"></asp:Literal></h1>
               <ul class="breadcumb-menu">
                  <li>
                     <a href="/">Home</a>
                  </li>
                  <li><asp:Literal ID="LitPageTitle2" runat="server"></asp:Literal></li>
               </ul>
            </div>
         </div>
      </div>
    <section class="p-5 space-extra-bottom">
         <div class="container">            
            <div class="row">                
               <h2 class="text-center pb-4 pt-4"><asp:Literal ID="LitPageTitle3" runat="server"></asp:Literal></h2>
                <asp:Repeater ID="dtlTourPackages" runat="server">
                    <ItemTemplate> 
                        <div class="col-xl-4 col-lg-4 col-md-6 mb-35">
                          <div class="trip-box">
                              <div class="trip-box-sec">
                                    <div class="trip-box__img">
                                        <a href="tourpackage-<%# Eval("PageURL")%>" target="_blank"><img src="images/tours/<%#Eval("Image1") %>" alt="<%# Eval("PackageName")%>" /></a>                     
                                    </div>
                                    <div class="trip-box__content">
                                        <h2 class="trip-box__title box-title">
                                            <a href="tourpackage-<%# Eval("PageURL")%>" target="_blank"><%# Eval("PackageName")%></a>
                                        </h2>
                                    </div>
                                    <p><i class="fas fa-location-dot icon-color"></i> <%# Eval("RoadMap")%></p>
                                    <p><i class="fa-light fa-clock icon-color"></i> (<%# Eval("PackageDays")%>)</p>
                                    <p><i class=" icon-color">₹</i> <%# Eval("PackagePricePP")%></p>
                              </div>
                          </div>
                       </div>
                    </ItemTemplate>
                </asp:Repeater>
                <p><asp:Literal ID="LitDesc" runat="server"></asp:Literal></p>
            </div>            
         </div>
      </section>
</asp:Content>

