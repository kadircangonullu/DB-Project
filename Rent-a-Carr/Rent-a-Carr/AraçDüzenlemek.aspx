<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AraçDüzenlemek.aspx.cs" Inherits="Rent_a_Carr.AraçDüzenlemek" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <html>
    <head>
        <style type="text/css">
            .auto-style1 {
                width: 600%;
            }

            .auto-style3 {
                font-weight: normal;
            }

            .auto-style4 {
                height: 30px;
                font-weight: normal;
            }

            .auto-style2 {
                height: 30px;
            }

        </style>
    </head>
    <body>
        <form id="carForm" runat="server">

            <h3>LİSTEYİ GÜNCELLE</h3>
            <p>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateSelectButton="True" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
            </p>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">Vehicle Band:
            <asp:TextBox ID="TextBox1" runat="server" Width="186px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">Vehicle Model:
            <asp:TextBox ID="TextBox2" runat="server" Width="186px"></asp:TextBox>
                    </td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style3">Vehicle Serial Number:
            <asp:TextBox ID="TextBox3" runat="server" Width="186px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Vehicle Product Year:
            <asp:TextBox ID="TextBox4" runat="server" TextMode="Number" Width="186px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Maintenance ID:
            <asp:TextBox ID="TextBox5" runat="server" TextMode="Number" Width="186px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Güncelle" />
                        <asp:HiddenField ID="HiddenField1" runat="server" />
                        <br />
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </form>
    </body>
    </html>
</asp:Content>
