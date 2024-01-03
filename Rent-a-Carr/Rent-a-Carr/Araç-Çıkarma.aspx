<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Araç-Çıkarma.aspx.cs" Inherits="Rent_a_Carr.Araç_Çıkarma" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="carForm" runat="server">

        <h2>Program Sil</h2>
        <p>
            <asp:ListBox ID="ListBox1" runat="server" Height="267px" Width="168px"></asp:ListBox>
        </p>
        
        <p>
            <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox1_CheckedChanged" Text="Onaylıyorum" />
        </p>
        
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Sil" />
        </p>
        <p>
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </p>

    </form>
</asp:Content>
