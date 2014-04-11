<%@ page title="Add New Lecturer" language="C#" masterpagefile="~/Dashboard.master" autoeventwireup="true" inherits="Administrator_Lecturer_AddNewLecturer, App_Web_3xebxaqv" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="portlet ui-widget ui-widget-content ui-helper-clearfix ui-corner-all form-container">
        <div class="portlet-header ui-widget-header">Add New Lecturer</div>
        <div class="portlet-content">
            <asp:Label ID="ErrorMessage" runat="server" Visible="false" EnableViewState="false" />
            <table cellspacing="0" cellpadding="0" id="MainContent_AddNewStudent" style="border-collapse:collapse;">
                <tr style="height:100%;">
                    <td>
                        <table cellspacing="0" cellpadding="0" style="height:100%;width:100%;border-collapse:collapse;">
                            <tr>
                                <td style="height:100%;width:100%;">
                                    <ul>
                                        <li>
                                            <asp:Label ID="NIPLabel" runat="server" AssociatedControlID="NIP" CssClass="desc">NIP:</asp:Label>
                                            <div>
                                                <asp:TextBox ID="NIP" runat="server"></asp:TextBox>
                                            </div>
                                        </li>
                                        <li>
                                            <asp:Label ID="NIDNLabel" runat="server" AssociatedControlID="NIDN" CssClass="desc">NIDN:</asp:Label>
                                            <div>
                                                <asp:TextBox ID="NIDN" runat="server"></asp:TextBox>
                                            </div>
                                        </li>
                                        <li>
                                            <asp:Label ID="FirstNameLabel" runat="server" AssociatedControlID="FirstName" CssClass="desc">First Name:</asp:Label>
                                            <div>
                                                <asp:TextBox ID="FirstName" runat="server"></asp:TextBox>
                                            </div>
                                        </li>
                                        <li>
                                            <asp:Label ID="LastNameLabel" runat="server" AssociatedControlID="LastName" CssClass="desc">Last Name:</asp:Label>
                                            <div>
                                                <asp:TextBox ID="LastName" runat="server"></asp:TextBox>
                                            </div>
                                        </li>
                                        <li>
                                            <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email" CssClass="desc">E-mail:</asp:Label>
                                            <div>
                                                <asp:TextBox ID="Email" runat="server" TextMode="Email"></asp:TextBox>
                                            </div>
                                        </li>
                                        <li>
                                            <asp:Label ID="PhoneLabel" runat="server" AssociatedControlID="Phone" CssClass="desc">Phone:</asp:Label>
                                            <div>
                                                <asp:TextBox ID="Phone" runat="server" TextMode="Phone"></asp:TextBox>
                                            </div>
                                        </li>
                                        <li>
                                            <asp:Label ID="AddressLabel" runat="server" AssociatedControlID="Address" CssClass="desc">Address:</asp:Label>
                                            <div>
                                                <asp:TextBox ID="Address" runat="server" TextMode="MultiLine"></asp:TextBox>
                                            </div>
                                        </li>
                                    </ul>
			                        <div align="right">
				                        <asp:Button ID="SubmitButton" runat="server" Text="Add Lecturer" OnClick="SubmitButton_Click"/>
			                        </div>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td align="right"></td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="SidebarContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="FooterContent" Runat="Server">
</asp:Content>

