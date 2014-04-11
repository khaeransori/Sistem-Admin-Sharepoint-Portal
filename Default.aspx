<%@ page title="Log in" language="C#" masterpagefile="~/Site.Master" autoeventwireup="true" inherits="Account_Login, App_Web_kuppbg1u" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %> | AzzureTeam&#8482; Application</h1>
    </hgroup>
    
    <section id="loginForm">
        <h2>Use a local account to log in.</h2>
        <asp:Login ID="Login" runat="server" ViewStateMode="Disabled" RenderOuterTable="false" OnAuthenticate="Login_Authenticate" OnLoginError="Login_LoginError">
            <LayoutTemplate>
                <p class="validation-summary-errors">
                    <asp:Literal runat="server" ID="FailureText" />
                </p>
                <fieldset>
                    <legend>Log in Form</legend>
                    <ol>
                        <li>
                            <asp:Label runat="server" AssociatedControlID="UserName">User name</asp:Label>
                            <asp:TextBox runat="server" ID="UserName" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName" CssClass="field-validation-error" ErrorMessage="The user name field is required." />
                        </li>
                        <li>
                            <asp:Label runat="server" AssociatedControlID="Password">Password</asp:Label>
                            <asp:TextBox runat="server" ID="Password" TextMode="Password" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" CssClass="field-validation-error" ErrorMessage="The password field is required." />
                        </li>
                        <li>
                            <asp:CheckBox runat="server" ID="RememberMe" />
                            <asp:Label runat="server" AssociatedControlID="RememberMe" CssClass="checkbox">Remember me?</asp:Label>
                        </li>
                    </ol>
                    <asp:Button runat="server" CommandName="Login" Text="Log in" />
                </fieldset>
            </LayoutTemplate>
        </asp:Login>
        <asp:Label ID="RolesLabel" runat="server" Visible="false"></asp:Label>
    </section>

    <section id="socialLoginForm">
        <h2>Select Your Role To Login</h2>
        <div class="message-info">
            <p><b>
                <a href="Default.aspx?Roles=Administrator">Administrator</a><br />
                <a href="Default.aspx?Roles=Lecturer">Lecturer</a><br />
                <a href="Default.aspx?Roles=Student">Student</a></b>
            </p>
        </div>
    </section>
</asp:Content>