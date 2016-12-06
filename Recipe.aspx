<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="MasterPage.master" CodeFile="Recipe.aspx.cs" Inherits="Recipe" %>


<asp:Content ContentPlaceHolderID="head" runat="server">
    <title>Our Recipe Library</title>
    <!--Recipe List Page-->
</asp:Content>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
      <%-- <h1>Our Recipe Roster</h1>--%>
       Check out the Recipes submitted on this page. Try something new!

   </p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AllowPaging="True" PageSize="3" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataSourceID="SqlDataSource1">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Recipe_Id" HeaderText="Recipe_Id" SortExpression="Recipe_Id" InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="RecipeName" HeaderText="RecipeName" SortExpression="RecipeName" />
            <asp:BoundField DataField="Contributer" HeaderText="Contributer" SortExpression="Contributer" />
            <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
            <asp:BoundField DataField="CookingTime" HeaderText="CookingTime" SortExpression="CookingTime" />
            <asp:BoundField DataField="Portions" HeaderText="Portions" SortExpression="Portions" />
            <asp:BoundField DataField="Cuisine" HeaderText="Cuisine" SortExpression="Cuisine" />
            <asp:BoundField DataField="PrivateC" HeaderText="PrivateC" SortExpression="PrivateC" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RecipesConnectionString2 %>" SelectCommand="SELECT * FROM [Recipe]"></asp:SqlDataSource>
        </asp:Content>

<asp:Content ContentPlaceHolderID="credits" runat="server">
        
</asp:Content>