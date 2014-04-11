<%@ page title="View Students" language="C#" masterpagefile="~/Dashboard.master" autoeventwireup="true" inherits="Administrator_Student_ViewStudents, App_Web_hnt0g5tj" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="portlet ui-widget ui-widget-content ui-helper-clearfix ui-corner-all form-container">
       <div class="portlet-header ui-widget-header">View Students</div>
        <div class="portlet-content">
            <asp:Label ID="ErrorMessage" runat="server" Text="Label" Visible="false" EnableViewState="false" />
            <div class="hastable">
                <ul class="pagination">
                    <li>
                        <asp:Repeater ID="FilteringUI" runat="server" OnItemCommand="FilteringUI_ItemCommand">
                            <ItemTemplate>
                                <asp:LinkButton runat="server" ID="lnkFilter" Text='<%# Container.DataItem %>' CommandName='<%# Container.DataItem %>'></asp:LinkButton>
                            </ItemTemplate>
                        </asp:Repeater>
                    </li>
                </ul>
                <div class="clearfix"></div>
                <asp:Label ID="NoticeMessage" runat="server" Text="Label" Visible="false" EnableViewState="false" />
                <asp:GridView ID="Students" runat="server" AutoGenerateColumns="False" OnRowDataBound="Students_RowDataBound" OnRowDeleting="Students_RowDeleting">
                    <Columns>
                        <asp:TemplateField HeaderText="NIM">
                            <ItemTemplate>
                                <asp:Label runat="server" ID="NIMLabel" Text='<%# DataBinder.Eval(Container.DataItem, "UserName") %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="FirstName" HeaderText="First Name" />
                        <asp:BoundField DataField="LastName" HeaderText="Last Name" />
                        <asp:CheckBoxField DataField="IsLockedOut" HeaderText="Locked Out?" />
                        <asp:TemplateField ShowHeader="true" HeaderText="Actions">
                            <ItemTemplate>
                                <asp:HyperLink ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" CssClass="btn_no_text btn ui-state-default ui-corner-all tooltip" NavigateUrl='<%# "~/Administrator/Student/StudentInformation.aspx?user="+Eval("UserName") %>'><span class="ui-icon ui-icon-wrench"></span></asp:HyperLink>
                                <asp:LinkButton ID="DeleteButton" CommandArgument="<%# Container.DataItem %>" CommandName="Delete" runat="server" CssClass="btn_no_text btn ui-state-default ui-corner-all tooltip"><span class="ui-icon ui-icon-circle-close"></span></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <span class="pagination">
                    <asp:LinkButton ID="lnkFirst" runat="server" OnClick="lnkFirst_Click">&laquo;First</asp:LinkButton>
                    <asp:LinkButton ID="lnkPrev" runat="server" OnClick="lnkPrev_Click">  Prev</asp:LinkButton>
                    <asp:LinkButton ID="lnkNext" runat="server" OnClick="lnkNext_Click">Next  </asp:LinkButton>
                    <asp:LinkButton ID="lnkLast" runat="server" OnClick="lnkLast_Click">Last&raquo;</asp:LinkButton>
                </span>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="SidebarContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="FooterContent" Runat="Server">
</asp:Content>

