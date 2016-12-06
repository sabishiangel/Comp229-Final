<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="MasterPage.master" CodeFile="Contact.aspx.cs" Inherits="Contact" %>
<%@ Register Src="infoInput.ascx" TagPrefix="UseCon" TagName="info" %>

<asp:Content ContentPlaceHolderID="head" runat="server">
    <title>Contact Us</title>
<!--Contact Page-->
</asp:Content>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>Have any questions? Fill out our contact form and we will get back to you as soon as possible!</p>
   <UseCon:info runat="server" setLabel="Message: " setButton="Submit"/>
   <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="#FF3300" />
</asp:Content>

<asp:Content ContentPlaceHolderID="credits" runat="server">
        
</asp:Content>