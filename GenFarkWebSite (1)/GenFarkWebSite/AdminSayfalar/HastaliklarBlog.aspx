<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="HastaliklarBlog.aspx.cs" Inherits="GenFarkWebSite.AdminSayfalar.HastaliklarBlog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="table table-bordered">
        <tr>
             <th>ID</th>
            <th>Kalıtsal Hastalik Ad</th>
            <th>Kalıtsal Hastalık Tarih</th>
            <th>Kategori</th>
            <th>SİL</th>
            <th>GÜNCELLE</th>
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                 <tr>
                    <td><%# Eval("KHastalik_id") %></td>
                    <td><%# Eval("KHastalik_ad") %></td>
                   <td><%# Eval("KHastalik_tarih") %></td>
                     <td><%# Eval("Kategori_id") %></td>
                     <td>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "HastalikSil.aspx?KHastalik_id=" +Eval("KHastalik_id") %>' CssClass="btn btn-danger">Sil</asp:HyperLink></td>
                    <td>
                         <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# "HastalikGüncelle.aspx?KHastalik_id=" +Eval("KHastalik_id") %>' CssClass="btn btn-warning">Güncelle</asp:HyperLink>
                    </td>
                     </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>
    <a href="YeniHastalik.aspx" class="btn btn-primary"> Yeni Hastalık ekle</a>

</asp:Content>
