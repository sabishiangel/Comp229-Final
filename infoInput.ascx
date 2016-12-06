<%@ Control Language="C#" AutoEventWireup="true" CodeFile="infoInput.ascx.cs" Inherits="infoInput" %>

<script runat="server">

    public string getText
    {
        get
        {
            return txt.Text;
        }
    }

    public string setLabel
    {
        set
        {
            lbl.Text = value;
        }
    }

    public string setButton
    {
        set
        {
            submit.Text = value;
        }
    }

</script>

<table>
        <tr>
            <td>
                <asp:Label ID="lblFirst" runat="server">First Name: </asp:Label>  
            </td>
            <td>
                <asp:TextBox id="firstText" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rqdName" runat="server" ControlToValidate="firstText" Display="None" ErrorMessage="Please enter First Name" ForeColor="#FF3300" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label id="last" runat="server">Last Name: </asp:Label>  
            </td>
            <td>
                <asp:TextBox id="lastText" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rqdLName" runat="server" ControlToValidate="lastText" Display="None" ErrorMessage="Please enter Last Name" ForeColor="#FF3300" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label id= "email" runat="server">Email:  </asp:Label>  
            </td>
            <td>
                <asp:TextBox id="emailText" runat="server" TextMode="Email"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rqdEmail" runat="server" ControlToValidate="emailText" Display="None" ErrorMessage="Please enter email" ForeColor="#FF3300" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="emailText" Display="None" ErrorMessage="Please enter valid email." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lbl"></asp:Label>  
            </td>
            <td>
                <asp:TextBox runat="server" ID="txt" Width="850px" Height="100px"></asp:TextBox>
            </td>
        </tr>        
        <tr>
            <td>
                <asp:Button runat="server" id="submit" value="Submit" CausesValidation="true" /> 
            </td>
        </tr>
    </table>


