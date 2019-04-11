<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Reference Control="~/UserInfoBoxControl.ascx" %>
<%@ Register TagPrefix="My" TagName="EventUserControl" Src="~/EventUserControl.ascx" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <%Response.Write("HeIIo yalla"); %>
    <div class="jumbotron">
        <h1>Fetcher!</h1>
        <p class="lead">Fetcher is an automated tool which collects the logs.</p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
            <br />
            <br />
            PlaceHolder:
        <asp:PlaceHolder runat="server" ID="phUserInfoBox" />
            <h2>log Fetcher</h2>
            <p>
                ASP.NET Web Forms lets you build dynamic websites using a familiar drag-and-drop, event-driven model.
            A design surface and hundreds of controls and components let you rapidly build sophisticated, powerful UI-driven sites with data access.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301948">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Get more libraries</h2>
            <p>
                NuGet is a free Visual Studio extension that makes it easy to add, remove, and update libraries and tools in Visual Studio projects.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Web Hosting</h2>
            <p>
                You can easily find a web hosting company that offers the right mix of features and price for your applications.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
            </p>
        </div>
    </div>
    <asp:Label runat="server" ID="HelloWorldLabel"></asp:Label>
    <br />
    <br />
    <asp:TextBox runat="server" ID="TextInput" OnTextChanged="TextInput_TextChanged" />
    <asp:Button runat="server" ID="GreetButton" Text="Say Hello!" OnClick="GreetButton_Click" />
    <br />
    <asp:DropDownList runat="server" ID="GreetList" AutoPostBack="true" OnSelectedIndexChanged="GreetList_SelectedIndexChanged">
        <asp:ListItem Value="no one">No one</asp:ListItem>
        <asp:ListItem Value="world">World</asp:ListItem>
        <asp:ListItem Value="universe">Universe</asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />
    <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>

    <My:EventUserControl runat="server" ID="MyEventUserControl" OnOKay="MyEventUserControl_OKay" />

    Your name:<br />
    <asp:TextBox runat="server" ID="txtName" />
    <asp:RequiredFieldValidator runat="server" ID="reqName" ControlToValidate="txtName" ErrorMessage="Please enter your name!" />
    <br />
    <br />
    <asp:Button runat="server" ID="btnSubmitForm" Text="Ok" OnClick="btnSubmitForm_Click" />
    <asp:DropDownList runat="server" ID="ColorSelector" AutoPostBack="true" OnSelectedIndexChanged="ColorSelector_IndexChanged">
        <asp:ListItem Value="White" Selected="True">Select color...</asp:ListItem>
        <asp:ListItem Value="Red">Red</asp:ListItem>
        <asp:ListItem Value="Green">Green</asp:ListItem>
        <asp:ListItem Value="Blue">Blue</asp:ListItem>
    </asp:DropDownList>
</asp:Content>
