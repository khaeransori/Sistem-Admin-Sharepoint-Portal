<%@ page title="User Information" language="C#" masterpagefile="~/Dashboard.master" autoeventwireup="true" inherits="Users_UserInformation, App_Web_bmhll3nk" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="portlet ui-widget ui-widget-content ui-helper-clearfix ui-corner-all form-container">
        <div class="portlet-header ui-widget-header">User Information</div>
        <div class="portlet-content">
            <asp:Label ID="ErrorMessage" runat="server" Visible="false" EnableViewState="false" />
            <ul>
                <li>
                    <asp:Label ID="UserNameLabel" AssociatedControlID="UserName" runat="server" CssClass="desc">User Name:</asp:Label>
                    <div>
                        <asp:Label ID="UserName" runat="server" />
                    </div>
                </li>
                <li>
                    <asp:Label ID="ApprovedLabel" AssociatedControlID="IsApproved" runat="server" CssClass="desc">Approved:</asp:Label>
                    <div>
                        <asp:CheckBox ID="IsApproved" AutoPostBack="true" runat="server" OnCheckedChanged="IsApproved_CheckedChanged" />
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
                <li>
                    <asp:Label ID="LockedOutLabel" AssociatedControlID="LastLockedOutDateLabel" runat="server" CssClass="desc">Locked Out:</asp:Label>
                    <div>
                        <asp:Label ID="LastLockedOutDateLabel" runat="server" Text="Label"></asp:Label>
                        <asp:Button ID="UnlockUserButton" runat="server" Text="Unlock User" OnClick="UnlockUserButton_Click" />
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

