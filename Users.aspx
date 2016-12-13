<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="MasterPage.master" CodeFile="Users.aspx.cs" Inherits="Users" %>

<asp:Content ContentPlaceHolderID="head" runat="server">
    <!--homepage-->
</asp:Content>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <p>View all users, add new users, change their roles, or add new roles here.</p>
    <asp:TextBox ID="Role" runat="server"></asp:TextBox>
    <%--<asp:Button ID="createRole" runat="server" Text="Create Role" OnClick="createRole_Click" />--%>

    <br />
    <br />
    <asp:GridView ID="RoleList" runat="server" AutoGenerateColumns="False" DataKeyNames="ApplicationId,LoweredRoleName" DataSourceID="Roles">
        <Columns>
            <asp:BoundField DataField="ApplicationId" HeaderText="ApplicationId" ReadOnly="True" SortExpression="ApplicationId" />
            <asp:BoundField DataField="RoleId" HeaderText="RoleId" SortExpression="RoleId" />
            <asp:BoundField DataField="RoleName" HeaderText="RoleName" SortExpression="RoleName" />
            <asp:BoundField DataField="LoweredRoleName" HeaderText="LoweredRoleName" ReadOnly="True" SortExpression="LoweredRoleName" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
        </Columns>
    </asp:GridView>

<asp:SqlDataSource ID="Roles" runat="server" ConnectionString="<%$ ConnectionStrings:rcplgndtbsConnectionString %>" SelectCommand="SELECT * FROM [vw_aspnet_Roles]"></asp:SqlDataSource>

</asp:Content>

<asp:Content ContentPlaceHolderID="credits" runat="server">
</asp:Content>
