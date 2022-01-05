<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ÖyküGüncelle.aspx.cs" Inherits="GenFarkWebSite.AdminSayfalar.ÖyküGüncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <form runat="server" class="form-group">
        
         <br />
        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Öykü mail" Enabled="false"></asp:TextBox>
        <br />
        <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" placeholder="tarih" Enabled="false"></asp:TextBox>
         <br />
      
           <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" placeholder="Deneyim" Height="100px" TextMode="MultiLine"></asp:TextBox>
       <br />
        <asp:Button ID="Button1" runat="server" Text="Kaydet" CssClass="btn btn-success" OnClick="Button1_Click" />


    </form>
</asp:Content>
