<%@ Page Title="" Language="VB" MasterPageFile="~/web.master" AutoEventWireup="false" CodeFile="cabservices.aspx.vb" Inherits="cabservices" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="breadcumb-wrapper" data-bg-src="assets/img/bg/breadcumb-bg.jpg">
        <div class="container">
            <div class="breadcumb-content">
                <h1 class="breadcumb-title">Car Rental Services in Dubai</h1>
                <ul class="breadcumb-menu">
                    <li>
                        <a href="/">Home</a>
                    </li>
                    <li>Car Rental Services in Dubai</li>
                </ul>
            </div>
        </div>
    </div>
    <section class="ot-blog-wrapper blog-details space-top space-extra-bottom">
         <div class="container">
             <asp:Repeater ID="dtlData" runat="server">
                <ItemTemplate>
                    <div class="row mt-5 justify-content-center">
                        <div class="col-md-5">
                            <img src="images/vehicles/<%# Eval("ImageName")%>">
                        </div>
                        <div class="col-md-6">
                            <h3><%# Eval("VehicleName")%></h3>
                            <p style="text-align:justify;"><%# Eval("DetailDesc")%></p>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
            <%--<div class="row mt-5">
               <div class="col-md-6">
                   <img src="assets/img/cab/cab-img-01.jpg" alt="Alternate Text" width="100%" />
               </div>
               <div class="col-md-6">
                   <h2>SWIFT DZIRE</h2>
                   <p>We are providing Swift Dzire car rental service in <strong>Jay Tirupati Holidays</strong> with its reliable manufacturing quality and comfort level Swift Dzire car is the ideal car for any kind of trip it doesn't matter whether you're traveling through country roads or national highway we always get good reviews for this car. If you are 3 to 4 number of travelers and looking for the adequate type of vehicle that fits in the budget, then Swift Dzire car is made for your requirement only, this car provide really good boot space and leg space and can be available at rupees 9.00 per kilomete <br>Rate Per Day 250 Km Base // ₹ 9.00 / Km <br>Rate Per Kms 8 Hours / 80 Km Base // ₹1500.00 / Per Day <br>Driver Allowance(Per Day) // ₹300.00</p>
               </div>
            </div>
            <div class="row mt-5">
               <div class="col-md-6">
                   <img src="assets/img/cab/cab-img-02.jpg" alt="Alternate Text" width="100%" />
               </div>
               <div class="col-md-6">
                   <h2>INNOVA CRYSTA</h2>
                   <p>Toyota Innova Crysta and Innova cab for outstation is the first choice of travellers because of the comfort and reliability it provides. The car comes with a well-equipped cabin, a sturdy engine, feature-filled interior, seven airbags, and tremendous fuel efficiency. "It is said that Toyota makes such vehicles that you can take to your grave and Innova Crysta is the most loved one for long distance family trip Innova cab booking at <strong>Jay Tirupati Holidays</strong> is fairly simple, reliable and most affordable way to make your journey comfortable and enjoyable <br>Rate Per Day 250 Km Base // ₹ 14.00 / Km <br>Rate Per Kms 8 Hours / 80 Km Base // ₹2000.00 / Per Day <br>Driver Allowance(Per Day) // ₹300.00</p>
               </div>
            </div>
            <div class="row mt-5">
               <div class="col-md-6">
                   <img src="assets/img/cab/cab-img-03.jpg" alt="Alternate Text" width="100%" />
               </div>
               <div class="col-md-6">
                   <h2>TEMPO TRAVELLER</h2>
                   <p>Now travel to ”INDIA” in ultimate comfort with Tempo Traveller in <strong>Jay Tirupati Holidays</strong> We provide comfortable and convenient tempo travellers in Jay Tirupati Holidays which ensure that the passenger travels in utmost leisure and comfort. Our aim is to ensure that every customer gets comfortable, well-maintained tempo travellers at an affordable price without any hassles. Our company is staffed with experienced drivers who know how to get you from one place to another without getting stuck in traffic<br>Rate Per Day 250 Km Base // ₹ 19.00 / Km <br>Rate Per Kms 8 Hours / 80 Km Base // ₹4500.00 / Per Day <br>Driver Allowance(Per Day) // ₹300.00</p>
               </div>
            </div>--%>
         </div>
      </section>
</asp:Content>

