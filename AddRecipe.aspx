<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="MasterPage.master" CodeFile="AddRecipe.aspx.cs" Inherits="AddRecipe" %>

<asp:Content ContentPlaceHolderID="head" runat="server">
   <title>Add a Recipe</title>
    <!--Add Recipe Page-->
</asp:Content>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <p>
       Thanks for coming to this page! Every recipe you submit grows our library. We appreciate your efforts to create the ultimate recipe book online!
   </p><p>
       Even if you do not want the recipes visible to the public, you can keep track of your family's recipes privately here. They would become a search away!
   </p>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="#FF3300" />
    <h2>Recipe Submission Form</h2>

    <table style="border:dotted">
        <tr>
            <td>
                <asp:Label id="recipelbl" runat="server">*Recipe Name: </asp:Label>  
            </td>
            <td>
                <asp:TextBox id="recipeName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rqdName" runat="server" ControlToValidate="recipeName" Display="None" ErrorMessage="Please enter Recipe Name" ForeColor="#FF3300" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label runat="server">*Submitted By: </asp:Label>  
            </td>
            <td>
                <asp:TextBox id="contributer" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rqdCon" runat="server" ControlToValidate="contributer" Display="None" ErrorMessage="Please enter name." ForeColor="#FF3300" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label runat="server">Category: </asp:Label>  
            </td>
            <td>
                <asp:DropDownList id="category" runat="server"> 
                    <asp:ListItem>Dessert</asp:ListItem>
                    <asp:ListItem>Light Meal</asp:ListItem>
                    <asp:ListItem>Main Course</asp:ListItem>
                    <asp:ListItem>Snack</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
            </td>  
        </tr>
        <tr>
            <td>
                <asp:Label runat="server">Cooking Time: </asp:Label>  
            </td>
            <td>
                <asp:TextBox id="cookingTime" runat="server" TextMode="Number"></asp:TextBox> minutes
                <asp:RequiredFieldValidator ID="rqdTime" runat="server" ControlToValidate="cookingTime" Display="None" ErrorMessage="Please enter cooking time." ForeColor="#FF3300" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Please enter approximate time." Display="None" MinimumValue="1" ControlToValidate="cookingTime" MaximumValue="10000"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label runat="server">*Portions: </asp:Label> 
            </td>
            <td>
                <asp:TextBox id="portionSize" runat="server" TextMode="Number"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rqdPortions" runat="server" ControlToValidate="portionSize" Display="None" ErrorMessage="Please enter portion size." ForeColor="#FF3300" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator2" runat="server" ErrorMessage="Please enter approximate portion size." Display="None" MinimumValue="1" ControlToValidate="portionSize" MaximumValue="1000"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label runat="server">Cuisine: </asp:Label>  
            </td>
            <td>
                <asp:DropDownList id="cuisine" runat="server" DataSourceID="SqlDataSource1" DataTextField="CuisineName" Height="17px" Width="146px" DataValueField="CuisineName"></asp:DropDownList>
            </td>  
        </tr>
        <tr>
            <td>
                <asp:Label runat="server">Mark as Private: </asp:Label>  
            </td>
            <td>
                <asp:CheckBox id="privateConfirmation" runat="server" /> Yes, I'd like to keep my recipe private.
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label runat="server">*Recipe Description: </asp:Label>  
            </td>
            <td>
                <asp:TextBox id="recipeDescription" runat="server" Width="850px" Height="100px" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rqdDescription" runat="server" ControlToValidate="recipeDescription" Display="None" ErrorMessage="Please enter a description" ForeColor="#FF3300" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button id="submitButton" runat="server" text="Submit Recipe!" CausesValidation="true" OnClick="submitButton_Click" /> 
            </td>
        </tr>

    </table>

    <br />
    <asp:Label ID="AddConfirm" runat="server" Text=""></asp:Label>
    <br />
    <br />
    <br />

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RecipesConnectionString %>" SelectCommand="SELECT [CuisineName] FROM [Cuisine]"></asp:SqlDataSource>
</asp:Content>

<asp:Content ContentPlaceHolderID="credits" runat="server">
        
</asp:Content>