<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Öykü.aspx.cs" Inherits="GenFarkWebSite.AdminSayfalar.Öykü" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


      <table class="table table-bordered">
        <tr>
             <th>ID</th>
            <th>Mail</th>
            <th>Öykü</th>
            <th>Tarih</th>
            <th>SİL</th>
            <th>GÜNCELLE</th>
        </tr>
        <asp:Repeater ID="Repeater5" runat="server">
            <ItemTemplate>
                 <tr>
                    <td><%# Eval("FHastalik_id") %></td>
                   <td><%# Eval("FHastalik_Kod") %></td>
                     <td><%# Eval("FHastalik_Bilgi") %></td>
                     <td><%# Eval("FHastalik_Tarih") %></td> 
                     <td>
                 <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "ÖyküSil.aspx?FHastalik_id=" +Eval("FHastalik_id") %>' CssClass="btn btn-danger">Sil</asp:HyperLink></td>
                    <td>
                         <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# "ÖyküGüncelle.aspx?FHastalik_id=" +Eval("FHastalik_id") %>' CssClass="btn btn-warning">Güncelle</asp:HyperLink>
                    </td>
                     </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>




</asp:Content>
