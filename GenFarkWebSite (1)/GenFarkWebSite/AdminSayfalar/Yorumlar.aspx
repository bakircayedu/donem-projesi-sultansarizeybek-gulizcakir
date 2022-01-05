<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yorumlar.aspx.cs" Inherits="GenFarkWebSite.AdminSayfalar.Yorumlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="table table-bordered">
        <tr>
             <th>ID</th>
            <th> Ad</th>
            <th>Soyad</th>
            <th>mail</th>
            <th>Kalıtsal Hastalık</th>
            <th>yorum</th>
            <th>SİL</th>
            <th>GÜNCELLE</th>
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                 <tr>
                    <td><%# Eval("Yorum_id") %></td>
                    <td><%# Eval("Yorum_ad") %></td>
                   <td><%# Eval("Yorum_soyad") %></td>
                     <td><%# Eval("Yorum_mail") %></td>
                     <td><%# Eval("KHastalik_ad") %></td>
                     <td><%# Eval("Yorum_icerik") %></td>
                     
                     <td>
                 <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "YorumSil.aspx?Yorum_id=" +Eval("Yorum_id")%>' CssClass="btn btn-danger">Sil</asp:HyperLink></td>
                    <td>
                         <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# "YorumGüncelleme.aspx?Yorum_id=" +Eval("Yorum_id") %>' CssClass="btn btn-warning">Güncelle</asp:HyperLink>
                    </td>
                     </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>

</asp:Content>
