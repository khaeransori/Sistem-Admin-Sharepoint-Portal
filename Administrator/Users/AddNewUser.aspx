<%@ page title="Add New User" language="C#" masterpagefile="~/Dashboard.master" autoeventwireup="true" inherits="Users_AddNewUser, App_Web_bmhll3nk" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="portlet ui-widget ui-widget-content ui-helper-clearfix ui-corner-all form-container">
        <div class="portlet-header ui-widget-header">Add New User Account</div>
        <div class="portlet-content">
            <asp:Label ID="ErrorMessage" runat="server" Visible="false" EnableViewState="false" />
            <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" DisableCreatedUser="true" LoginCreatedUser="false" OnCreatingUser="CreateUserWizard1_CreatingUser" OnCreatedUser="CreateUserWizard1_CreatedUser">
                <WizardSteps>
                    <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server">
                        <ContentTemplate>
                            <ul>
                                <li>
                                    <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName" CssClass="desc">User Name:</asp:Label>
                                    <div>
                                        <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                                    </div>
                                </li>
                                <li>
                                    <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password" CssClass="desc">Password:</asp:Label>
                                    <div>
                                        <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                                    </div>
                                </li>
                                <li>
                                    <asp:Label ID="ConfirmPasswordLabel" runat="server" AssociatedControlID="ConfirmPassword" CssClass="desc">Confirm Password:</asp:Label>
                                    <div>
                                        <asp:TextBox ID="ConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                                    </div>
                                </li>
                                <li>
                                    <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email" CssClass="desc">E-mail:</asp:Label>
                                    <div>
                                        <asp:TextBox ID="Email" runat="server"></asp:TextBox>
                                    </div>
                                </li>
                                <li>
                                    <asp:Label ID="QuestionLabel" runat="server" AssociatedControlID="Question" CssClass="desc">Security Question:</asp:Label>
                                    <div>
                                        <asp:TextBox ID="Question" runat="server"></asp:TextBox>
                                    </div>
                                </li>
                                <li>
                                    <asp:Label ID="AnswerLabel" runat="server" AssociatedControlID="Answer" CssClass="desc">Security Answer:</asp:Label>
                                    <div>
                                        <asp:TextBox ID="Answer" runat="server"></asp:TextBox>
                                    </div>
                                </li>
                            </ul>
							<div align="right">
								<asp:Button ID="StepNextButton" runat="server" CommandName="MoveNext" Text="Create User" ValidationGroup="CreateUserWizard1" />
							</div>
                        </ContentTemplate>
                        <CustomNavigationTemplate />
                    </asp:CreateUserWizardStep>
                </WizardSteps>
            </asp:CreateUserWizard>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="SidebarContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="FooterContent" Runat="Server">
</asp:Content>

