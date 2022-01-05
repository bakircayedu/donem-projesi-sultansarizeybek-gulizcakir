<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="İstatistikler.aspx.cs" Inherits="GenFarkWebSite.AdminSayfalar.İstatistikler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <form runat="server">

    <table class="table table-bordered">
        <tr>
            <td>Toplam  Kayıtlı Hastalık Sayısı:<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
            <td>Toplam Yorum Sayısı:<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></td>
        </tr>
        <tr>
            <td>Toplam Kalıtsal Hastalık Çeşitleri:<asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></td>

            <td>Toplam Kalıtsal Kan Hastalıkları :<asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></td>
        </tr>
        <tr>
            <td>Toplam kalıtsal solunum hastalıkları:<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></td>

            <td>En fazla yorum yapılan Hastalık id :<asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></td>
        </tr>

    </table>

   <asp:GridView ID="GridView2"  runat="server"  Width="647px" Height="401px"></asp:GridView>
          
   
          </form>
</asp:Content>
