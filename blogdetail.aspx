<%@ Page Title="" Language="VB" MasterPageFile="~/web.master" AutoEventWireup="false" CodeFile="blogdetail.aspx.vb" Inherits="blogdetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="breadcumb-wrapper" data-bg-src="assets/img/bg/breadcumb-bg.jpg">
        <div class="container">
            <div class="breadcumb-content">
                <h1 class="breadcumb-title"><asp:Literal ID="LitBlogTitle" runat="server"></asp:Literal></h1>
                <ul class="breadcumb-menu">
                    <li>
                        <a href="/">Home</a>
                    </li>
                    <li><a href="blogs">Blogs</a></li>
                    <li><asp:Literal ID="LitBlogTitle2" runat="server"></asp:Literal></li>
                </ul>
            </div>
        </div>
    </div>
    <section class="th-blog-wrapper space-top space-extra-bottom">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-9">
                    <div class="th-blog blog-single has-post-thumbnail">
                        <div class="blog-img">
                            <a href="#.">
                                <asp:Image ID="ImgBlog" CssClass="blogimg" runat="server" />
                            </a>
                        </div>
                        <div class="blog-content">
                            <asp:Literal ID="LitBody" runat="server"></asp:Literal>   
                        </div>
                    </div>
                    <%--<asp:Repeater ID="dtlData" runat="server">
                        <ItemTemplate>      
                            <li>
                                <a href="<%#Eval("PageURL") %>-blog">
                                    <span class="text"><%# Eval("BlogTitle")%></span>
                                </a>
                            </li>     
                        </ItemTemplate>
                    </asp:Repeater> --%>
                </div>                
            </div>            
        </div>        
    </section>
</asp:Content>

