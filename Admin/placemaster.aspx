﻿<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="false" ValidateRequest="false" CodeFile="placemaster.aspx.vb" Inherits="Admin_placemaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="C1" Runat="Server">
<!-- Form components -->
            <div class="form-horizontal" >



                <!-- Basic inputs -->
                <div class="panel panel-default" id="div1" runat="server">
                    <div class="panel-heading"><h6 class="panel-title">Add/Edit Destination </h6> </div>
                    <div class="panel-body">
                        <asp:HiddenField ID="hfId" runat="server" />
                       <%-- <div class="alert alert-info fade in widget-inner">
                            <button type="button" class="close" data-dismiss="alert">×</button>
                            Default form components, including bootstrap additions and tags
                        </div>--%>
                        <asp:Literal ID="litmsg" runat="server"></asp:Literal>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">State </label>
                            <div class="col-sm-10">
                                <asp:DropDownList ID="ddlState" AppendDataBoundItems="true" class="select-search" runat="server">
                                    <asp:ListItem Value="">--Select--</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Place Name </label>
                            <div class="col-sm-10">
                                <asp:TextBox ID="txtPlace" class="form-control" runat="server"></asp:TextBox>
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

                         <div class="form-actions text-right">
                                <asp:Button ID="btnSubmit" runat="server" ValidationGroup="UserRegistration" class="btn btn-primary" Text="Submit" />
                       
                        </div>
                        </div></div>

                         <div class="panel panel-default" id="div2" runat="server">
                <div class="panel-heading"><h6 class="panel-title">Place List</h6>
                    <span style="text-align:right;display:block;">
                        <asp:Button ID="btnAdd" runat="server" Text="Add New" CssClass="btn btn-primary" />
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
                             <asp:BoundField DataField="Place" HeaderText="Place"></asp:BoundField>
                             <asp:BoundField DataField="State" HeaderText="State"></asp:BoundField>
                             <asp:BoundField DataField="Status" HeaderText="Status"></asp:BoundField>
                         
                   

                         <asp:TemplateField>
                         <ItemTemplate>
                             <asp:LinkButton ID="LinkButton3" CommandArgument='<%#Eval("Cnt") %>' CommandName="Edit1" runat="server">Edit</asp:LinkButton>
                         </ItemTemplate>
                         
                         </asp:TemplateField>
                         
                         <asp:TemplateField>
                         <ItemTemplate>
                             <asp:LinkButton ID="LinkButton2" CommandArgument='<%#Eval("Cnt") %>' CommandName="Delete1" runat="server">Delete</asp:LinkButton>
                         </ItemTemplate>
                         
                         </asp:TemplateField>
                         </Columns>
                        </asp:GridView>
                        </div></div>
</div>
</asp:Content>

