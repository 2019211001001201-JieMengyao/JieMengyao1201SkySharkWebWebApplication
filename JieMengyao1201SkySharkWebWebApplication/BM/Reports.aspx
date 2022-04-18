<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Reports.aspx.cs" Inherits="JieMengyao1201SkySharkWebWebApplication.BM.Reports" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    Business Manager
    <style type="text/css">
        .auto-style1 {
            width: 317px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <form id="form1" runat="server">
          <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal" BackColor="#F7F6F3" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#7C6F57" StaticSubMenuIndent="10px">
              <DynamicHoverStyle BackColor="#7C6F57" ForeColor="White" />
              <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
              <DynamicMenuStyle BackColor="#F7F6F3" />
              <DynamicSelectedStyle BackColor="#5D7B9D" />
            <Items>
                <asp:MenuItem NavigateUrl="~/BM/AddFl.aspx"  Text="Add Flight" Value="Add Flight"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/BM/RequestID.aspx"  Text="Request ID" Value="Request ID"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/BM/Reports.aspx" Selected="True"  Text="Reports" Value="Reports"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/BM/FreqFl.aspx" Text="Frequent Fliers" Value="Frequent Fliers"></asp:MenuItem>
            </Items>
              <StaticHoverStyle BackColor="#7C6F57" ForeColor="White" />
              <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
              <StaticSelectedStyle BackColor="#5D7B9D" />
        </asp:Menu>
          <div class="tabContents">
            <table>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label1" runat="server" Text="Generate Reports:"></asp:Label>
                    </td>
                    <td></td>  
                    <td></td>
                </tr>
                <tr>
                    <td class="auto-style1"></td>
                    <td> <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ChangePassword.aspx">Change Password</asp:HyperLink></td>  
                    <td>
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Logoff.aspx">Logoff</asp:HyperLink></td>
                </tr>
                <tr>
                    <td class="auto-style1">  
                        <asp:Label ID="Label2" runat="server" Text="Generate a flight usage repor tfor all flights flown by the airlinc."></asp:Label>
                    </td>
                     <td>  
                         <asp:Button ID="Button1" runat="server" Text="Generate Flight Usage Report" BackColor="Silver" BorderColor="Blue" OnClick="Button1_Click" />
                    </td>
                     <td>  </td>
                </tr>
                  <tr>
                    <td class="auto-style1">  
                        <asp:Label ID="Label3" runat="server" Text="Generate a customer affinity reportfor top 100 customers"></asp:Label>
                      </td>
                     <td>  
                         <asp:Button ID="Button2" runat="server" Text="Generate customer Affinity Report" BackColor="Silver" BorderColor="Blue" OnClick="Button2_Click" />
                      </td>
                     <td>  </td>
                </tr>
                  <tr>
                    <td class="auto-style1">  
                        <asp:Label ID="Label4" runat="server" Text="Generatec a total revenue report fromthe month"></asp:Label>
                        <asp:ListBox ID="lstMonth" runat="server" Height="68px" Width="54px">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:ListBox>
                        <asp:ListBox ID="lstYear" runat="server">
                            <asp:ListItem>2002</asp:ListItem>
                            <asp:ListItem>2003</asp:ListItem>
                            <asp:ListItem>2004</asp:ListItem>
                            <asp:ListItem>2005</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>2021</asp:ListItem>
                            <asp:ListItem>2022</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:ListBox>
                      </td>
                     <td>  
                         <asp:Button ID="Button3" runat="server" Text="Generate Revenue Report" BackColor="Silver" BorderColor="Blue" OnClick="Button3_Click" />
                      </td>
                     <td>  </td>
                </tr>
                <tr>
                    <td class="auto-style1">  </td>
                     <td>  </td>
                     <td>  </td>
                </tr>
                <tr>
                    <td colspan="3">  
                        <asp:GridView ID="DataGrid1" runat="server">
                        </asp:GridView>
                    </td>
                     <td>  </td>
                     <td>  </td>
                </tr>
                </table></div></form>
</asp:Content>
