<%@ page title="Add New Student" language="C#" masterpagefile="~/Dashboard.master" autoeventwireup="true" inherits="Administrator_Student_AddNewUser, App_Web_hnt0g5tj" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="portlet ui-widget ui-widget-content ui-helper-clearfix ui-corner-all form-container">
        <div class="portlet-header ui-widget-header">Add New Student</div>
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
                                            <asp:Label ID="NIMLabel" runat="server" AssociatedControlID="NIM" CssClass="desc">NIM:</asp:Label>
                                            <div>
                                                <asp:TextBox ID="NIM" runat="server"></asp:TextBox>
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
                                            <asp:Label ID="DateofBirthLabel" runat="server" AssociatedControlID="DateofBirth" CssClass="desc">Date of Birth:</asp:Label>
                                            <div>
                                                <ajaxToolkit:CalendarExtender ID="CalendarDateofBirthExtender" TargetControlID="DateofBirth" runat="server"></ajaxToolkit:CalendarExtender>
                                                <asp:TextBox ID="DateofBirth" runat="server"></asp:TextBox>
                                            </div>
                                        </li>
                                        <li>
                                            <asp:Label ID="GenderLabel" runat="server" AssociatedControlID="Gender" CssClass="desc">Gender:</asp:Label>
                                            <div>
                                                <asp:RadioButtonList ID="Gender" runat="server">
                                                    <asp:ListItem Value="F">Female</asp:ListItem>
                                                    <asp:ListItem Value="M">Male</asp:ListItem>
                                                </asp:RadioButtonList>
                                            </div>
                                        </li>
                                        <li>
                                            <asp:Label ID="GenerationLabel" runat="server" AssociatedControlID="Generation" CssClass="desc">Generation:</asp:Label>
                                            <div>
                                                <asp:DropDownList ID="Generation" runat="server"></asp:DropDownList>
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
				                        <asp:Button ID="SubmitButton" runat="server" Text="Add Student" OnClick="SubmitButton_Click"/>
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

