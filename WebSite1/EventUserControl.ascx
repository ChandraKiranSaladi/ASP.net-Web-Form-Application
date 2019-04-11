<%@ Control Language="C#" AutoEventWireup="true" CodeFile="EventUserControl.ascx.cs" Inherits="EventUserControl" %>
Page title: 
<asp:TextBox runat="server" ID="txtPageTitle" />
<asp:Button runat="server" ID="btnUpdatePageTitle" OnClick="btnUpdatePageTitle_Click" Text="Update" />