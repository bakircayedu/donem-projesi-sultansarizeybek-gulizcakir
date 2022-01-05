<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YorumGüncelleme.aspx.cs" Inherits="GenFarkWebSite.AdminSayfalar.YorumGüncelleme" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <form runat="server" class="form-group">
          <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" placeholder="Hastalık ad" ></asp:TextBox>
         <br />
        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Yorum Ad" Enabled="false"></asp:TextBox>
        <br />
         <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" placeholder="Yorum Soyad" Enabled="false"></asp:TextBox>
         <br />
         <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" placeholder="Yorum Mail" Enabled="false"></asp:TextBox>
         <br />
        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="Yorum Tarih" Enabled="false"></asp:TextBox>
         <br />
           <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" placeholder="Deneyim" Height="100px" TextMode="MultiLine"></asp:TextBox>
       <br />
        <asp:Button ID="Button1" runat="server" Text="Kaydet" CssClass="btn btn-success" OnClick="Button1_Click" />


    </form>
</asp:Content>
