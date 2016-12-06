<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="MasterPage.master" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ContentPlaceHolderID="head" runat="server">
    <!--homepage-->
</asp:Content>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
   <p>Welcome to Recipe Reader, your online recipe book! Here you can look at local recipes submitted by people just like you, and even share some of your own. Use the navigation bar above to check out the different pages. Join the community; cook like a champ!</p>
    <h1>LOGIN PAGE</h1>
    <asp:Login ID="Login1" runat="server" BackColor="#E3EAEB" BorderColor="#E6E2D8" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333" TextLayout="TextOnTop" Height="164px" Width="303px">
        <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
        <LoginButtonStyle BackColor="White" BorderColor="#C5BBAF" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#1C5E55" />
        <TextBoxStyle Font-Size="0.8em" />
        <TitleTextStyle BackColor="#1C5E55" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
</asp:Login>
   Don't have an account?  <asp:HyperLink ID="HyperLink1" NavigateUrl="SignUp.aspx"  runat="server">Sign Up</asp:HyperLink>
    </p>
</asp:Content>

<asp:Content ContentPlaceHolderID="credits" runat="server">
        
</asp:Content>