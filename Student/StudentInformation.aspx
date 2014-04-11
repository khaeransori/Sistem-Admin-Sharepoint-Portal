<%@ page title="Student Information" language="C#" masterpagefile="~/Student.master" autoeventwireup="true" inherits="Student_StudentInformation, App_Web_c00dkmis" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="portlet ui-widget ui-widget-content ui-helper-clearfix ui-corner-all form-container">
        <div class="portlet-header ui-widget-header">Student Information</div>
        <div class="portlet-content">
            <asp:Label ID="ErrorMessage" runat="server" Visible="false" EnableViewState="false" />
            <ul>
                <li>
                    <asp:Label ID="NIMLabel" AssociatedControlID="NIM" runat="server" CssClass="desc">NIM:</asp:Label>
                    <div>
                        <asp:Label ID="NIM" runat="server" />
                    </div>
                </li>
                <li>
                    <asp:Label ID="FirstNameLabel" AssociatedControlID="FirstName" runat="server" CssClass="desc">First Name:</asp:Label>
                    <div>
                        <asp:TextBox ID="FirstName" runat="server" />
                    </div>
                </li>
                <li>
                    <asp:Label ID="LastNameLabel" AssociatedControlID="LastName" runat="server" CssClass="desc">Last Name:</asp:Label>
                    <div>
                        <asp:TextBox ID="LastName" runat="server" />
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
                        <asp:Label ID="Generation" runat="server" />
                    </div>
                </li>
                <li>
                    <asp:Label ID="AddressLabel" runat="server" AssociatedControlID="Address" CssClass="desc">Address:</asp:Label>
                    <div>
                        <asp:TextBox ID="Address" runat="server" TextMode="MultiLine"></asp:TextBox>
                    </div>
                </li>
                <li>
                    <asp:Label ID="AccountCreatedLabel" AssociatedControlID="AccountCreated" runat="server" CssClass="desc">Account Created:</asp:Label>
                    <div>
                        <asp:Label ID="AccountCreated" runat="server" />
                    </div>
                </li>
                <li>
                    <asp:Label ID="LastPasswordChangedDateLabel" AssociatedControlID="LastPasswordChangedDate" runat="server" CssClass="desc">Password Last Changed:</asp:Label>
                    <div>
                        <asp:Label ID="LastPasswordChangedDate" runat="server" />
                    </div>
                </li>
                <li>
                    <asp:Label ID="NewPasswordLabel" AssociatedControlID="NewPassword" runat="server" CssClass="desc">New Password:</asp:Label>
                    <div>
                        <asp:TextBox ID="NewPassword" TextMode="Password" runat="server" />
                    </div>
                </li>
                <li>
                    <asp:Label ID="NewPasswordConfirmLabel" AssociatedControlID="NewPasswordConfirm" runat="server" CssClass="desc">Confirm New Password:</asp:Label>
                    <div>
                        <asp:TextBox ID="NewPasswordConfirm" TextMode="Password" runat="server" />
                    </div>
                </li>
                <li class="button">
                    <asp:Button ID="UpdateUser" runat="server" Text="Update User" OnClick="UpdateUser_Click" />
                    <asp:Button ID="CancelUpdate" CausesValidation="false" runat="server" Text="Cancel" OnClick="CancelUpdate_Click" />

                </li>
            </ul>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="SidebarContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="FooterContent" Runat="Server">
</asp:Content>