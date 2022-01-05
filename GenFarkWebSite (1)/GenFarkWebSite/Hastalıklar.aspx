<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Hastalıklar.aspx.cs" Inherits="GenFarkWebSite.Hastalıklar" %>
  
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <section class="blogs" id="blogs">
        <div class="box-container">
            <br />
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <div class="box">  
            <div class="content">
                <div class="box">
            <div class="image">
                <img src=<%# Eval("KHastalik_foto") %> alt="">
            </div>
                <a href="HastalikDetay.aspx?KHastalik_id=<%# Eval("KHastalik_id") %>" class="title"><%# Eval("KHastalik_ad") %></a>
                <p><%# Eval("KHastalik_tarih") %></p>
                 <p><%# Eval("KHastalik_bilgi") %></p>
                     <a href="HastalikDetay.aspx?KHastalik_id=<%# Eval("KHastalik_id") %>" class="btn">Yorumları Oku ve paylaş</a>
               
            </div>
        </div>     
            </ItemTemplate>
        </asp:Repeater>
 </div>
     <script>
         function renkDegistir() {
             document.body.style.backgroundColor = "red";
         }
     </script>
  </section> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder4" runat="server">
</asp:Content>
