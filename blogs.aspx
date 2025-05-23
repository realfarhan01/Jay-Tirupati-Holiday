<%@ Page Title="" Language="VB" MasterPageFile="~/web.master" AutoEventWireup="false" CodeFile="blogs.aspx.vb" Inherits="blog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="breadcumb-wrapper" data-bg-src="assets/img/bg/breadcumb-bg.jpg">
         <div class="container">
            <div class="breadcumb-content">
               <h1 class="breadcumb-title">Blogs</h1>
               <ul class="breadcumb-menu">
                  <li>
                     <a href="/">Home</a>
                  </li>
                  <li>Blogs</li>
               </ul>
            </div>
         </div>
      </div>
    <section class="th-blog-wrapper space-top space-extra-bottom">
        <div class="container">
            <div class="row">
                 <asp:Repeater ID="dtlBlogs" runat="server">
                    <ItemTemplate>  
                        <div class="col-xl-4">
                            <div class="th-blog blog-single has-post-thumbnail">
                                <div class="blog-img">
                                    <a href="<%#Eval("PageURL") %>-blog">
                                        <img src="images/blog/<%#Eval("ImageName") %>" alt="<%# Eval("BlogTitle")%>">
                                    </a>
                                </div>
                                <div class="blog-content">
                                    <h3 class="blog-title" style="font-size:25px;"><a href="<%#Eval("PageURL") %>-blog"><%#Eval("BlogTitle") %></a></h3>
                                    <p class="blog-text"><%#Eval("MetaDescription") %></p>
                                    <a href="<%#Eval("PageURL") %>-blog" class="ot-btn">Read More</a>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>                                  
            </div>
        </div>
    </section>
</asp:Content>

