<%@ page title="Users And Roles" language="C#" masterpagefile="~/Dashboard.master" autoeventwireup="true" inherits="Roles_UsersAndRoles, App_Web_25dgsnrt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="two-column">
        <div class="column">
            <div class="portlet ui-widget ui-widget-content ui-helper-clearfix ui-corner-all form-container">
                <div class="portlet-header ui-widget-header">Manage Roles By User</div>
                <div class="portlet-content">
                    <asp:Label ID="ErrorMessage" runat="server" Visible="false" EnableViewState="false" />
                    <ul>
                        <li>
                            <label class="desc">Select a User</label>
                            <div>
                                <asp:DropDownList ID="UserList" runat="server" AutoPostBack="True" DataTextField="UserName" DataValueField="UserName" onselectedindexchanged="UserList_SelectedIndexChanged"></asp:DropDownList>
                            </div>
                        </li>
                        <li>
                            <label class="desc">Select Roles</label>
                            <div>
                                <asp:Repeater ID="UsersRoleList" runat="server"> 
                                    <ItemTemplate> 
                                        <asp:CheckBox runat="server" ID="RoleCheckBox" AutoPostBack="true" Text='<%# Container.DataItem %>' OnCheckedChanged="RoleCheckBox_CheckChanged" /> 
                                        <br /> 
                                    </ItemTemplate> 
                                </asp:Repeater> 
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="column">
            <div class="portlet ui-widget ui-widget-content ui-helper-clearfix ui-corner-all form-container">
                <div class="portlet-header ui-widget-header">Manage Users By Role</div>
                <div class="portlet-content">
                    <asp:Label ID="NoticeMessage" runat="server" Visible="false" EnableViewState="false" />
                    <ul>
                        <li>
                            <label class="desc">Select a Role</label>
                            <div>
                                <asp:DropDownList ID="RoleList" runat="server" AutoPostBack="true" onselectedindexchanged="RoleList_SelectedIndexChanged" />
                            </div>
                        </li>
                    </ul>
                    <div class="hastable">
                        <asp:GridView ID="RolesUserList" runat="server" AutoGenerateColumns="False" EmptyDataText="No users belong to this role." OnRowDeleting="RolesUserList_RowDeleting"> 
                          <Columns> 
                               <asp:TemplateField HeaderText="Users"> 
                                    <ItemTemplate> 
                                         <asp:Label runat="server" id="UserNameLabel" Text='<%# Container.DataItem %>'></asp:Label> 
                                    </ItemTemplate> 
                               </asp:TemplateField> 
                               <asp:CommandField HeaderText="Actions" DeleteText="[Remove]" ShowCancelButton="False" ShowDeleteButton="True" />
                          </Columns> 
                     </asp:GridView>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="SidebarContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="FooterContent" Runat="Server">
</asp:Content>

