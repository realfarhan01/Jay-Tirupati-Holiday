<%@ Page Language="VB" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="false" CodeFile="blog.aspx.vb" Inherits="blog" title="ADD BLOG" ValidateRequest="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="C1" Runat="Server">
<script type="text/javascript" src="tinymce/tinymce.min.js"></script>
<script type="text/javascript">
    tinymce.init({
        selector: 'textarea',
        plugins: [
        "textcolor colorpicker fullscreen"
        ],
        toolbar: 'undo redo | formatselect | forecolor backcolor | ' +
        'bold italic backcolor | alignleft aligncenter ' +
        'alignright alignjustify | bullist numlist outdent indent | ' +
        'removeformat | help',
        paste_retain_style_properties : "margin, padding, width, height, font-size, font-weight, font-family, color, text-align, ul, ol, li, text-decoration, border, background, float, display",
        paste_enable_default_filters: false,
        paste_remove_styles_if_webkit: false,
        paste_remove_spans: true,
        paste_remove_styles: true,
        fix_list_elements: false,
          cleanup_on_startup : true,
        fix_nesting : false,
        fix_table_elements : false,
        paste_use_dialog: true,
        paste_auto_cleanup_on_paste: true,
        format_empty_lines: true,
        content_style: 'body { font-family:Helvetica,Arial,sans-serif; font-size:14px }'
    });
</script>
<div class="form-horizontal" runat="server" id="divAdd" visible="false" >
    <div class="panel panel-default">
        <div class="panel-heading"><h6 class="panel-title">Blog Manager</h6> </div>
        <div class="panel-body">
            <asp:Label ID="lblmsg" runat="server" Font-Bold="true" ForeColor="Coral"></asp:Label>
            
            <div class="form-group">
                <div class="col-sm-12">
                    <h1>Blog Title</h1>
                    <asp:TextBox ID="txtBlogTitle" Width="100%" AutoPostBack="true" MaxLength="200"  class="form-control" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-12">
                    <h1>Page URL</h1>
                    <asp:TextBox ID="txtPageURL" Width="100%"  class="form-control" MaxLength="200" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-12">
                    <h1>Page Title</h1>
                    <asp:TextBox ID="txtPageTitle" CssClass="span6" TextMode="SingleLine" MaxLength="200"  Height="50px" Width="100%" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-12">
                    <h1>Blog Image</h1>
                    <asp:FileUpload ID="FileUpload" CssClass="default" runat="server" />
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-12">
                    <h1>Meta Description</h1>
                    <asp:TextBox ID="txtMetaDescription" CssClass="span6" TextMode="SingleLine" MaxLength="160"  Height="50px" Width="100%" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-12">
                    <h1>Meta Keywords</h1>
                    <asp:TextBox ID="txtMetaKeywords" CssClass="span6" TextMode="SingleLine"  Height="50px" Width="100%" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-12">
                    <h1>Other Meta Tags</h1>
                    <asp:TextBox ID="txtMetaTag" CssClass="span6" TextMode="SingleLine"  Height="50px" Width="100%" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-12">
                    <h1>Blog Content</h1>
                    <asp:TextBox ID="txtcontent" CssClass="span6" TextMode="multiLine" Columns="60" Rows="30" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">Status </label>
                <div class="col-sm-10">
                    <asp:DropDownList ID="ddlStatus" class="select-full" runat="server">
                        <asp:ListItem Value="0">Active</asp:ListItem>
                        <asp:ListItem Value="1">Deactive</asp:ListItem>
                    </asp:DropDownList>
                                 
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-12">
                    <h1></h1>
                    <asp:Button ID="btnsave" runat="server" Text="SAVE" CssClass="btn btn-primary" Width="200px" ValidationGroup="CreateUser" />
                </div>
            </div>
        </div>
    </div>
</div>

    <div class="panel panel-default" runat="server" id="divData">
                            <asp:HiddenField ID="hfId" runat="server" />
                <div class="panel-heading"><h6 class="panel-title">Blog List</h6>
                    <span style="text-align:right;display:block;">
                        <asp:Button ID="btnAdd" runat="server" Text="Add New Blog" CssClass="btn btn-primary" />
                    </span>

                </div>
                <div class="table-responsive">
                
                        <asp:GridView ID="DataDisplay" class="table table-bordered table-check" AutoGenerateColumns="false" runat="server">
                        <Columns>
                            <asp:TemplateField HeaderText="S.No" >
                                <ItemTemplate>
                                    <%#Container.DataItemIndex + 1%>
                                </ItemTemplate>
                                                          
                            </asp:TemplateField>
                            <asp:BoundField DataField="BlogTitle" HeaderText="Blog Title"></asp:BoundField>
                            <asp:BoundField DataField="Hits" HeaderText="Hits"></asp:BoundField>
                            <asp:BoundField DataField="Status" HeaderText="Status"></asp:BoundField>
                       
                   

                       
                         <asp:TemplateField>
                         <ItemTemplate>
                             <asp:LinkButton ID="LinkButton1" CommandArgument='<%#Eval("BlogId") %>' CommandName="edit1" runat="server">Edit</asp:LinkButton>
                         </ItemTemplate>
                         
                         </asp:TemplateField>
                         
                         <asp:TemplateField>
                         <ItemTemplate>
                             <asp:LinkButton ID="LinkButton2" CommandArgument='<%#Eval("BlogId") %>' CommandName="Delete1" runat="server">Delete</asp:LinkButton>
                         </ItemTemplate>
                         
                         </asp:TemplateField>
                         </Columns>
                        </asp:GridView>
                        </div></div>
</asp:Content>

