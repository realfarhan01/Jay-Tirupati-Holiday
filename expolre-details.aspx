<%@ Page Title="" Language="VB" MasterPageFile="~/web.master" AutoEventWireup="false" CodeFile="expolre-details.aspx.vb" Inherits="expolre_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="breadcumb-wrapper" data-bg-src="assets/img/bg/breadcumb-bg.jpg">
         <div class="container">
            <div class="breadcumb-content">
               <h1 class="breadcumb-title">Expolre Details</h1>
               <ul class="breadcumb-menu">
                  <li>
                     <a href="/">Home</a>
                  </li>
                  <li>Expolre Details</li>
               </ul>
            </div>
         </div>
      </div>
      <section class="ot-blog-wrapper blog-details space-top space-extra-bottom">
         <div class="container">
            <div class="row justify-content-center">
               <div class="col-xl-9">
                  <div class="ot-blog blog-single">
                     <div class="blog-img">
                        <asp:Image ID="ImgBlog" CssClass="blogimg" runat="server" />
                     </div>
                     <div class="blog-content">
                        <asp:Literal ID="LitBody" runat="server"></asp:Literal>                     
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
</asp:Content>

