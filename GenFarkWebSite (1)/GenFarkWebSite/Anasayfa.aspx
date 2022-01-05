<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Anasayfa.aspx.cs" Inherits="GenFarkWebSite.Anasayfa" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <style>
   .home{
   background: url(/anasayfa.jpg) no-repeat;
    background-size: cover;
    background-position: center;
        }
    </style>
      <div class="content">
        <h3> GenoFark nedir ? </h3>
         <p>Kalıtsal hastalıklar, Avrupa ve diğer gelişmiş ülkelerdeki tanımıyla; 2000’de 1 ya da daha az sıklıkta görülen, çoğu ilerleyici, metabolik, kronik ve günlük hayatı zorlaştıran hastalıklardır. 
Literatürde yaklaşık 8000  hastalık tanımlanmıştır ve bu hastalıkların % 80'i genetik geçişlidir.
Kalıtsalhastalıga sahip çocukların %30’u 5 yaşını görememektedir. Bu durumun en temel sebebi; kalıtsal hastalıkların %95’inin tedavisinin olmamasıdır.
Kalıtsal hastalıklar Türkiye’de her 16 kişiden 1’inde görülürken; Türkiye’de 5 milyon, dünyada yaklaşık 350 milyon kişi kalıtsal bir hastalığa sahiptir.
Her bir hastalığın kendine ait bir özelliği vardır. Aynı kalıtsal hastalıga sahip bireyleri bir araya getirmeyi,onların yaşadıkları zorlukları,hikayelerini paylaşmalarını amaçlayan bir platformdur.</p>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
<div class="row">

        <div class="image">
            <img src="https://sa1s3optim.patientpop.com/assets/images/provider/photos/2343536.jpg" alt="">
        </div>

        <div class="content">
            <h3>Kalıtsal hastalık nedir ?</h3>
            <p>Kalıtsal hastalıklar, anne veya babadan kaynaklı kromozom veya genlerdeki farklılıkları, bozuklukları nedeniyle doğacak bebeğin DNA’sında meydana gelen mutasyonlara bağlı olarak ortaya çıkan hastalıklardır. Genetik hastalıkların çok fazla türü bulunmaktadır. Genetik rahatsızlıkların bazıları doğuştan itibaren, bazıları ise hayatın başka bir evresinde ortaya çıkmaktadır. Örneğin; ailesinde kansere yatkınlık taşıyan bireyler kanser gibi hayati risk yaratan bu hastalıklara genellikle toplumda görülenden daha yüksek sıklıkla ve hayatın ileri evresinde karşılaşmaktadırlar</p>
            <p></p>
          
           
        </div>

    </div>
    <script>
        document.querySelector("#yönlendir").onclick = function(){
            window.location.href = "login.aspx";
        }
    </script>
    </asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <h1 class="heading"> Kalıtsal Hastalık<span> Çeşitleri </span> </h1>
    <div class="box-container">
   <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <div class="box">
            <img src=<%# Eval("KategoriFoto") %> alt="">
          <a href="Hastalıklar.aspx?KHastalik_id=<%# Eval("Kategori_id") %>" class="title"><h3><%# Eval("Kategori_ad") %></h3></a>
        </div>
    </ItemTemplate>
        </asp:Repeater>
        
    </div>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder4" runat="server">
   <h1 class="heading"> Son <span></span> Yazılanlar </h1>
    <div class="box-container">
        <asp:Repeater ID="Repeater2" runat="server">
            <ItemTemplate>
                 <div class="box">

            <p><%# Eval("Yorum_icerik") %></p> 

            <h3><%# Eval("Yorum_ad") %> <%# Eval("Yorum_soyad") %></h3>
            </div>
            </ItemTemplate>
        </asp:Repeater>
       <%-- veritabanından bir şey çekmeyecegim için repeter dışına yazdım--%>
         <div class="box">
           <h3>Sende yorumunu paylaş</h3>
             <a href="Hastalıklar.aspx" class="btn">Daha Fazlasını okuyunuz</a>
         </div>
           </div>
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder5" runat="server">
   <h1 class="heading"> Farkındalık <span></span> Hastalıklar </h1>
    <div class="box-container">
        <asp:Repeater ID="Repeater3" runat="server">
            <ItemTemplate>
                 <div class="box">

            <p><%# Eval("FHastalik_Bilgi") %></p> 
            </div>
            </ItemTemplate>
        </asp:Repeater>
        </div>
</asp:Content>


