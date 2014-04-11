<%@ page title="" language="C#" masterpagefile="~/Student.master" autoeventwireup="true" inherits="Student_Dashboard, App_Web_c00dkmis" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="main-content-edit">
    <div class="page-title ui-widget-content ui-corner-all">
	    <h1>AzzureTeam&#8482; Application Dashboard</h1>
	    <div class="other">
            <p>
                Welcome to AzzureTeam&#8482; Application, you're logged in as <b><asp:LoginName ID="LoginName1" runat="server" /></b>.
                <br />Select menu on the right of you to manage AzzureTeam&#8482; Application.
            </p>
		    <div class="clearfix"></div>
	    </div>
    </div></div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="SidebarContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="FooterContent" Runat="Server">
</asp:Content>

