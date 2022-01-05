<%@ Page Title="" Language="C#" Async="true" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="HastalikDetay.aspx.cs" Inherits="GenFarkWebSite.HastalikDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <!DOCTYPE HTML>
    <html>
    <head>

        <link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
        <link href="css/style.css" rel='stylesheet' type='text/css' />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!----webfonts---->
        <title></title>
        <link href='http://fonts.googleapis.com/css?family=Oswald:100,400,300,700' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900,300italic' rel='stylesheet' type='text/css'>
        <!----//webfonts---->
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
        <!--end slider -->
        <!--script-->
        <script type="text/javascript" src="web/js/move-top.js"></script>
        <script type="text/javascript" src="web/js/easing.js"></script>
        <link href="css/style.css" rel="stylesheet" />
    </head>
    <body>
        <div class="single">
            <div class="container">
                <div class="col-md-8 single-main">
                    <div class="single-grid">
                        <asp:Repeater ID="Repeater1" runat="server">
                            <ItemTemplate>
                                <img src="<%#Eval("KHastalik_foto")%>" alt="" style="height: 350px; width: 700px; margin-bottom: 20px" />

                                <h3><%#Eval("KHastalik_ad") %></h3>
                                <p><%#Eval("KHastalik_bilgi") %></p>
                            </ItemTemplate>
                        </asp:Repeater>

                    </div>
                    <asp:Repeater ID="Repeater2" runat="server">
                        <ItemTemplate>
                            <ul class="comment-list">
                                <li>
                                    <img src="images/avatar.png" class="img-responsive" alt="">
                                    <div class="desc">
                                        <p style="font-weight: bolder"><%#Eval("Yorum_ad") %> </p>:
                                        <p><%#Eval("Yorum_icerik") %></p>
                                    </div>
                                    <div class="clearfix"></div>
                                </li>
                            </ul>
                        </ItemTemplate>
                    </asp:Repeater>

                    <div class="content-form">
                        <h3>Yorumunuzu Paylaşınız</h3>
                        <form id="form1" runat="server">
                            <asp:TextBox ID="TextBox1" runat="server" placeholder="Adınızı giriniz" required=""></asp:TextBox>
                            <asp:TextBox ID="TextBox4" runat="server" placeholder="Soyadınızı giriniz" required=""></asp:TextBox>
                            <asp:TextBox ID="TextBox2" runat="server" placeholder="Mailinizi giriniz"></asp:TextBox>
                            <asp:TextBox ID="TextBox3" runat="server" placeholder="Hastalık hakkında yorumunuzu yazınız" TextMode="MultiLine" Height="100"></asp:TextBox>
                            <asp:Button ID="Button1" runat="server" Text="Yorumunuzu Paylaşınız" OnClick="Button1_Click" />
                   </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
    </html>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder4" runat="server">
</asp:Content>
