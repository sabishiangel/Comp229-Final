<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="MasterPage.master" CodeFile="Search.aspx.cs" Inherits="Search" %>

<asp:Content ContentPlaceHolderID="head" runat="server">
    <title>Search for a Recipe</title>
<!--Search Recipe Page-->
    <style type="text/css">
        .auto-style3 {
            width: 175px;
        }
    </style>
</asp:Content>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>Looking for something specific? Type in the kind of recipe you're looking for, and we'll try to find it if it's in our database. Good Luck!</p>

    <table>
        <tr>
            <td>
                <asp:Label runat="server">Search by Recipe Name: </asp:Label>
            </td>
            <td>
                <asp:TextBox runat="server" ID="searchRecipes"></asp:TextBox>
            </td>
            <td class="auto-style3">
                <asp:Button ID="rSearchSubmit" text="Search Recipes" runat="server" OnClick="rSearchSubmit_Click" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label runat="server">Search by Contributer Name: </asp:Label>
            </td>
            <td>
                <asp:TextBox runat="server" ID="searchContributers"></asp:TextBox>
            </td>
            <td class="auto-style3">
                <asp:Button ID="cSearchSubmit" text="Search Contributers" runat="server" OnClick="cSearchSubmit_Click" />
            </td>
        </tr>
        <tr>
            <td>
            <p>
                You searched for: <asp:Label ID="searched" runat="server"></asp:Label>
            </p>
            </td>
        </tr>
    </table>
    
    <asp:GridView ID="Results" runat="server"></asp:GridView>

    <br />
   
</asp:Content>

<asp:Content ContentPlaceHolderID="credits" runat="server">
        
</asp:Content>