<%@ Page Title="" Language="VB" MasterPageFile="~/web.master" AutoEventWireup="false" CodeFile="hotelservices.aspx.vb" Inherits="hotelservices" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .rating-start img {
            width: 70px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="breadcumb-wrapper" data-bg-src="assets/img/bg/breadcumb-bg.jpg">
        <div class="container">
            <div class="breadcumb-content">
                <h1 class="breadcumb-title">Hotel</h1>
                <ul class="breadcumb-menu">
                    <li>
                        <a href="/">Home</a>
                    </li>
                    <li>Hotel</li>
                </ul>
            </div>
        </div>
    </div>
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="search-sec">
                <div class="container">
                    <div class="search-box">
                    <div action="#." method="POST" class="tour-search">
                        <div class="form-group">
                            <asp:DropDownList ID="ddlState" AppendDataBoundItems="true" AutoPostBack="true" runat="server" CssClass="form-select nice-select">
                                <asp:ListItem Value="">Select State</asp:ListItem>
                            </asp:DropDownList>
                            <i class="fas fa-location-dot"></i>
                        </div>
                        <div class="form-group">
                            <asp:dropdownlist id="ddlPlace" CssClass="form-select nice-select" AppendDataBoundItems="true"  runat="server">
                                <asp:ListItem Value="">Place</asp:ListItem>
                            </asp:dropdownlist>
                        <i class="fas fa-hotel"></i>
                        </div>
                        <div class="form-group">
                            <asp:dropdownlist id="ddlHotelType" CssClass="form-select nice-select" AppendDataBoundItems="true"  runat="server">
                                <asp:ListItem Value="">Hotel Type</asp:ListItem>
                            </asp:dropdownlist>
                        <i class="fas fa-star"></i>
                        </div>
                        <div class="form-btn">
                            <asp:Button ID="btnSubmit" runat="server" class="ot-btn"  Text="Search" />
                        </div>
                        <p class="form-messages mb-0 mt-3"></p>
                    </div>
                </div>
                </div>
            </div>
            <section class="ot-blog-wrapper blog-details space-top space-extra-bottom">
                 <div class="container">
                     <asp:Repeater ID="dtlData" runat="server">
                        <ItemTemplate>
                            <div class="row">
                                <div class="col-md-5">
                                    <%--<h2><%# Eval("Place")%></h2>--%>
                                    <img src="images/hotels/<%# Eval("ImageName")%>"  alt="<%# Eval("HotelName")%>" title="<%# Eval("HotelName")%>" class="img-fluid" />                                    
                                </div>
                                <div class="col-md-6">
                                    <h3 class="hotel-name mb-0"><%# Eval("HotelName")%></h3>
                                    <div class="rating-start" title="<%# Eval("HotelType")%>">
                                        <img src="images/<%# Eval("HotelStar")%>.png" class="width<%# Eval("HotelStarWidth")%>" alt="<%# Eval("HotelType")%>" title="<%# Eval("HotelType")%>"/>
                                    </div>
                                    <p style="text-align:justify;"><%# Eval("DetailDesc")%></p>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                 </div>
            </section>
            
        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="ddlState" EventName="SelectedIndexChanged" />
            <asp:AsyncPostBackTrigger ControlID="btnSubmit" EventName="Click" />
        </Triggers>
    </asp:UpdatePanel>    
</asp:Content>

