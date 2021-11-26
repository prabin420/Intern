<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ShoppingCart.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            background-color: #33CCFF;
        }
        .auto-style2 {
            text-align: center;
            background-color: #FFFFFF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <p style="font-family: SimSun; font-size: medium; text-decoration: blink; font-style: italic; font-variant: normal; line-height: 5px; vertical-align: 5%; text-indent: 5px; word-spacing: 2em; letter-spacing: 1em; background-color: #FFFF00">
            &nbsp;ShoppingCart</p>
        <p style="color: #800000; font-size: large;">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Welcome to Mud&#39;s Shopping&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; No of Products in Your Cart&nbsp;
            <asp:Label ID="Label4" runat="server" Font-Size="X-Large" Text="Label"></asp:Label>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AddToCart.aspx">Show Cart</asp:HyperLink>
        </p>
        <p style="color: #800000">
            &nbsp;&nbsp;<asp:DataList ID="DataList1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource1" GridLines="Both" RepeatColumns="3" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand">
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <ItemTemplate>
                    <table border="0" class="auto-style1" style="color: #00FF00">
                        <tr>
                            <td class="auto-style2" style="color: #FF0000">&nbsp;&nbsp;Product ID<asp:Label ID="Label1" runat="server" Text='<%# Eval("ProductID") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2" style="color: #FF0000">
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("ProductName") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2" style="color: #FF0000">
                                <asp:Image ID="Image1" runat="server" Height="200px" ImageUrl='<%# Eval("ProductImage") %>' Width="200px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2" style="color: #FF0000">Rs<asp:Label ID="Label3" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2" style="color: #FF0000">
                                <asp:ImageButton ID="ImageButton1" runat="server" CommandName="addtocart" Height="39px" ImageUrl="~/images/download.jpg" Width="198px" CommandArgument='<%# Eval("ProductID") %>'/>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
                <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            </asp:DataList>
&nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ShoppingCartItemsConnectionString %>" SelectCommand="SELECT * FROM [ProductDetail]" OnSelecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
        </p>
    </form>
</body>
</html>
