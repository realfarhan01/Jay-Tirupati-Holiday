<%@ Page Title="" Language="VB" MasterPageFile="~/web.master" AutoEventWireup="false" CodeFile="flights-booking.aspx.vb" Inherits="flights_booking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        
        input[type="date"]::-webkit-calendar-picker-indicator {
          position: absolute;
          top: 0;
          left: 0;
          right: 0;
          bottom: 0;
          width: auto;
          height: auto;
          color: transparent;
          background: transparent;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="breadcumb-wrapper" data-bg-src="assets/img/bg/breadcumb-bg.jpg">
        <div class="container">
            <div class="breadcumb-content">
                <h1 class="breadcumb-title">Flights Booking</h1>
                <ul class="breadcumb-menu">
                    <li>
                        <a href="/">Home</a>
                    </li>
                    <li>Flights Booking</li>
                </ul>
            </div>
        </div>
    </div>
    <div class="font-sans flex min-h-full p-10">
       <div class="m-auto bg-white drop-shadow-lg rounded-lg overflow-hidden accent-gray-800 col-md-6">
          <div class="p-6">
             <div class="flex">
                <div>                    
                   <input class="cursor-pointer text-gray-800" id="2" type="radio" name="type">
                   <label class="cursor-pointer font-bold" for="2">One Way</label>
                </div>
                <div  class="ml-8">
                   <input class="cursor-pointer text-gray-800" id="1" type="radio" name="type">
                   <label class="cursor-pointer font-bold" for="1">Round Trip</label>
                </div>
             </div>
             <div class="mt-4 relative">
                <div class="absolute top-3 left-0 w-8 h-8 flex justify-center items-center">
                   <i class="text-sm text-gray-400 fa-regular fa-location-dot"></i>
                </div>
                <asp:TextBox ID="TextBox1" class="w-full bg-gray-100 font-bold border-none py-2 pl-8 pr-4 rounded placeholder:text-gray-800" placeholder="From..." runat="server"></asp:TextBox>
             </div>
             <div class="mt-4 relative">
                <div class="absolute top-3 left-0 w-8 h-8 flex justify-center items-center">
                   <i class="text-sm text-gray-400 fa-regular fa-location-dot"></i>
                </div>
                <asp:TextBox ID="TextBox2" class="w-full bg-gray-100 font-bold border-none py-2 pl-8 pr-4 rounded placeholder:text-gray-800" placeholder="To..."  runat="server"></asp:TextBox>
             </div>
             <div class="flex max-xs:flex-col gap-4 mt-4">
                <div class="flex-1 relative">
                   <div class="absolute top-3 left-0 w-8 h-8 flex justify-center items-center">
                      <i class="text-sm text-gray-400 fa-regular fa-calendar"></i>
                   </div>
                    <asp:TextBox ID="TextBox3" class="w-full bg-gray-100 font-bold border-none py-2 pl-8 pr-4 rounded placeholder:text-gray-800" placeholder="Departure" onfocus="(this.type='date')"  runat="server"></asp:TextBox>
                </div>
                <div class="flex-1 relative">
                   <div class="absolute top-3 left-0 w-8 h-8 flex justify-center items-center">
                      <i class="text-sm text-gray-400 fa-regular fa-calendar"></i>
                   </div>
                   <asp:TextBox ID="TextBox4" class="w-full bg-gray-100 font-bold border-none py-2 pl-8 pr-4 rounded placeholder:text-gray-800" placeholder="Return" onfocus="(this.type='date')"  runat="server"></asp:TextBox>
                </div>
             </div>
             <div class="flex max-md:flex-col gap-4 mt-4">
                <div class="flex-1 relative">
                   <div class="absolute top-3 left-0 w-8 h-8 flex justify-center items-center">
                      <i class="text-sm text-gray-400 fa-regular fa-user"></i>
                   </div>
                    <asp:DropDownList id="ddlRequirement" class="w-full bg-gray-100 font-bold border-none py-2 pl-8 pr-4 rounded placeholder:text-gray-800" runat="server">
                        <asp:ListItem selected="True" Value="">ADULTS (12y +)</asp:ListItem>
                        <asp:ListItem Value="1">1</asp:ListItem>
                        <asp:ListItem Value="2">2</asp:ListItem>
                        <asp:ListItem Value="3">3</asp:ListItem>
                        <asp:ListItem Value="4">4</asp:ListItem>
                        <asp:ListItem Value="5">5</asp:ListItem>
                        <asp:ListItem Value="6">6</asp:ListItem>
                        <asp:ListItem Value="7">7</asp:ListItem>
                        <asp:ListItem Value="8">8</asp:ListItem>
                        <asp:ListItem Value="9">9</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="flex-1 relative">
                   <div class="absolute top-3 left-0 w-8 h-8 flex justify-center items-center">
                      <i class="text-sm text-gray-400 fa-regular fa-seat-airline"></i>
                   </div>
                    <asp:DropDownList id="DropDownList1" class="w-full bg-gray-100 font-bold border-none py-2 pl-8 pr-4 rounded placeholder:text-gray-800" runat="server">
                        <asp:ListItem selected="True" Value="">CHILDREN (2y - 12y )</asp:ListItem>
                        <asp:ListItem Value="1">1</asp:ListItem>
                        <asp:ListItem Value="2">2</asp:ListItem>
                        <asp:ListItem Value="3">3</asp:ListItem>
                        <asp:ListItem Value="4">4</asp:ListItem>
                        <asp:ListItem Value="5">5</asp:ListItem>
                        <asp:ListItem Value="6">6</asp:ListItem>
                        <asp:ListItem Value="7">7</asp:ListItem>
                        <asp:ListItem Value="8">8</asp:ListItem>
                        <asp:ListItem Value="9">9</asp:ListItem>
                    </asp:DropDownList>                   
                </div>
             </div>
             <div class="flex max-xs:flex-col gap-4 mt-4">
                <div class="flex-1 relative">
                   <div class="absolute top-3 left-0 w-8 h-8 flex justify-center items-center">
                      <i class="text-sm text-gray-400 fa-regular fa-seat-airline"></i>
                   </div>
                    <asp:DropDownList id="DropDownList2" class="w-full bg-gray-100 font-bold border-none py-2 pl-8 pr-4 rounded placeholder:text-gray-800" runat="server">
                        <asp:ListItem selected="True" Value="">Selecte</asp:ListItem>
                        <asp:ListItem Value="Economy">Economy</asp:ListItem>
                        <asp:ListItem Value="Premium-Economy">Premium Economy</asp:ListItem>
                        <asp:ListItem Value="Business">Business</asp:ListItem>
                        <asp:ListItem Value="First Class">First Class</asp:ListItem>
                    </asp:DropDownList>
                </div>
             </div>
          </div>
          <asp:Button ID="Button1" class="uppercase pt-3 pb-3 w-100 text-white" style="background: linear-gradient(93deg, #ff7b26, #ec048c);" runat="server" Text="Search Flights" />
       </div>
    </div>
</asp:Content>

