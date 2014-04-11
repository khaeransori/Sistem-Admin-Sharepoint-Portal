<%@ page title="Manage Roles" language="C#" masterpagefile="~/Dashboard.master" autoeventwireup="true" inherits="Roles_ManageRoles, App_Web_25dgsnrt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<div class="portlet ui-widget ui-widget-content ui-helper-clearfix ui-corner-all form-container">
    <div class="portlet-header ui-widget-header">Add New Role</div>
    <div class="portlet-content">
        <asp:Label ID="ErrorMessage" runat="server" Visible="false" EnableViewState="false" />
        <ul>
            <li>
                <label class="desc">Role Name</label>
                <div>
                    <asp:TextBox ID="RoleName" runat="server" CssClass="field text medium" />
                </div>
            </li>
            <li class="button">
                <asp:Button ID="CreateRole" runat="server" Text="Create the Role" OnClick="CreateRole_Click" />
            </li>
        </ul>
    </div>
</div>
<br />    
<div class="portlet ui-widget ui-widget-content ui-helper-clearfix ui-corner-all form-container">
    <div class="portlet-header ui-widget-header">View Roles</div>
    <div class="portlet-content">
        <asp:Label ID="NoticeMessage" runat="server" Visible="false" EnableViewState="false" />
        <div class="hastable">
            <asp:GridView ID="RoleList" runat="server" AutoGenerateColumns="False" OnRowDeleting="RoleList_RowDeleting" OnRowDataBound="RoleList_RowDataBound">
                <Columns>
                    <asp:TemplateField HeaderText="Role Name">    
                        <ItemTemplate>    
                            <asp:Label runat="server" ID="RoleNameLabel" Text='<%# Container.DataItem %>' />    
                        </ItemTemplate> 
                    </asp:TemplateField>   
                    <asp:TemplateField ShowHeader="true" HeaderText="Actions">
                            <ItemTemplate>
                                <asp:LinkButton ID="DeleteButton" CommandArgument="<%# Container.DataItem %>" CommandName="Delete" runat="server" CssClass="btn_no_text btn ui-state-default ui-corner-all tooltip"><span class="ui-icon ui-icon-circle-close"></span></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </div>
</div>      
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="SidebarContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="FooterContent" Runat="Server">
</asp:Content>

