<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Öyküler.aspx.cs" Inherits="GenFarkWebSite.Öyküler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
 <%--//slider öykü motive edici js kullanımı --%>
     <style>
        #slider {
          font: 19px sans-serif;
          margin: 0px auto;
          position: relative;
          width: 1300px;
          height: 600px;
          overflow: hidden;
          background-color:aqua;
         
        }
      
        #kontrol {
          position: absolute;
          right: 0px;
          bottom: 10px;
        }
      
        #kontrol a {
          color: #ffffff;
          background-color: rgba(0, 0, 0, 0.5);
          padding: 10px;
          text-decoration: none;
        }
      </style>

  
    <div id="slider">
        <div class="slayt"><img src="https://www.kreatifbiri.com/wp-content/uploads/2018/04/nadir-gorulen-hastaliklar-kapak-bilimfilicom.jpg"  style="width:1300px; height:600px;"/></div>
        <div class="slayt"><img src="https://www.myogen.com.tr/genetik/wp-content/uploads/2019/09/girisimsel-olmayan-dogum-oncesi-test.jpg" style="width:1300px; height:600px;" /></div>
        <div id="kontrol">
          <a href="javascript:oncekiSlayt()">Önceki</a>
          <a href="javascript:sonrakiSlayt()">Sonraki</a>
        </div>
      </div>
      <script>
     
          var _slayt = document.getElementsByClassName("slayt");
          var slaytSayisi = _slayt.length;
          var slaytNo = 0;
          var i = 0;

          slaytGoster(slaytNo);

          function sonrakiSlayt() {
              slaytNo++;
              slaytGoster(slaytNo);
          }

          function oncekiSlayt() {
              slaytNo--;
              slaytGoster(slaytNo);
          }

          function slaytGoster(slaytNumarasi) {
              slaytNo = slaytNumarasi;

              if (slaytNumarasi >= slaytSayisi) slaytNo = 0;

              if (slaytNumarasi < 0) slaytNo = slaytSayisi - 1;

              for (i = 0; i < slaytSayisi; i++) {
                  _slayt[i].style.display = "none";
              }

              _slayt[slaytNo].style.display = "block";

          }
        </script>



      
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
       
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder4" runat="server">

        <link href="css/style.css" rel="stylesheet" />

     <h1 class="heading"> Farkındalık <span></span> Hastalıklar </h1>
    <div class="box-container">
        <asp:Repeater ID="Repeater3" runat="server">
            <ItemTemplate>
                <ul class="comment-list">
                                <li>
                                    <div class="desc">
                                        <p style="font-weight: bolder"><%#Eval("FHastalik_Bilgi") %> </p>
                                    </div>
                                    <div class="clearfix"></div>
                                </li>
                            </ul>
            </ItemTemplate>       

        </asp:Repeater>
     
        </div>

</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder5" runat="server">
      <div class="content-form">
                        <h3>Öykünüzü Paylaşınız</h3>
                        <form id="form1" runat="server">
                            <asp:TextBox ID="TextBox1" runat="server" placeholder="Mail adresinizi giriniz" required=""></asp:TextBox>
                            <asp:TextBox ID="TextBox3" runat="server" placeholder="Yaşam Hikayenizi yazınız" TextMode="MultiLine" Height="100"></asp:TextBox>
                            <asp:Button ID="Button1" runat="server" Text="Hikayenizi Başkalarına Umut Olmak Paylaşınız" OnClick="Button1_Click"  />
                   </form>
                    </div>

</asp:Content>
