<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="GenFarkWebSite.AdminSayfalar.iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table class="table table-bordered">
        <tr>
             <th>ID</th>
            <th> Ad</th>
          
            <th>mail Konusu</th>
            <th>İletişim İçerigi</th>
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                 <tr>
                    <td><%# Eval("İletisim_id") %></td>
                    <td><%# Eval("İletisim_sahip") %></td>
                          <td><%# Eval("İletisim_konusu") %></td>
                          <td><%# Eval("İletisim_icerik") %></td>
                     </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>
</asp:Content>
 
 