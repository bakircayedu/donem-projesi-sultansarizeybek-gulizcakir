<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YeniHastalik.aspx.cs" Inherits="GenFarkWebSite.AdminSayfalar.YeniHastalik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server" class="form-group">
        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Kalıtsal Hastalık Ad"></asp:TextBox>
        <br />
        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="Kalıtsal Hastalık Tarih"></asp:TextBox>
         <br />
        <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" placeholder="Kalıtsal Hastalık Foto"></asp:TextBox>
         <br />
        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" DataTextField="Kategori_ad" DataValueField="Kategori_id" ></asp:DropDownList>
         <br />  
         <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" placeholder="Kalıtsal Hastalık bilgi veriniz" Height="100px" TextMode="MultiLine"></asp:TextBox>
       <br />
        <asp:Button ID="Button1" runat="server" Text="Kaydet" CssClass="btn btn-success" OnClick="Button1_Click" />


    </form>
</asp:Content>
