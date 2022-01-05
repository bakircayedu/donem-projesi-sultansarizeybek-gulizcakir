<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="GenFarkWebSite.iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">



    <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
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
</head>
<body>
  
    <div id="slider">
        <div class="slayt"><img src="https://www.nadirhastaliklaragi.org.tr/layout/images/nadir.png" /></div>
        <div class="slayt"><img src="https://www.nadirhastaliklaragi.org.tr/uploads/7c711779ae8e0472efc83d097c12e90e.jpg"  style="width:1300px; height:600px;"/></div>
        <div class="slayt"><img src="https://www.hangisieniyi.com/wp-content/uploads/2018/08/genetik-hastal%C4%B1klar.jpg"  style="width:1300px; height:600px;"/></div>
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
</body>
</html>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
       <!DOCTYPE html>

  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Contact Form</title>
           <link href="css/Contact.css" rel="stylesheet" />
    <script
      src="https://kit.fontawesome.com/64d58efce2.js"
      crossorigin="anonymous"
    ></script>
  </head>
    <div class="container">
      <span class="big-circle"></span>
      <img src="img/shape.png" class="square" alt="" />
      <div class="form">
        <div class="contact-info">
          <h3 class="title">Bizimle iletişime geçiniz</h3>
          <p class="text">
           İzmir Bakırçay Üniversitesi 
          </p>

          <div class="info">
            <div class="information">
              <img src="img/location.png" class="icon" alt="" />
              <p>Bilgisayar Mühendisligi</p>
            </div>
            <div class="information">
              <img src="img/email.png" class="icon" alt="" />
                <p>ogrenci@bakircay.edu.tr</p>
           
            </div>
            <div class="information">
              <img src="img/phone.png" class="icon" alt="" />
              <p></p>
            </div>
          </div>

          <div class="social-media">
            <p>Ulaşabileceginiz sosyal medyalar :</p>
            <div class="social-icons">
              <a href="#">
                <i class="fab fa-facebook-f"></i>
              </a>
              <a href="#">
                <i class="fab fa-twitter"></i>
              </a>
              <a href="#">
                <i class="fab fa-instagram"></i>
              </a>
              <a href="#">
                <i class="fab fa-linkedin-in"></i>
              </a>
            </div>
          </div>
        </div>

        <div class="contact-form">
          <span class="circle one"></span>
          <span class="circle two"></span>

          <form runat="server">
            <h3 class="title"></h3>
            <div class="input-container">
              <asp:TextBox ID="TextBox1" type="text" name="name" class="input" runat="server" >
              </asp:TextBox>
              <label for="">Mail adresiniz</label>
              
            </div>
            <div class="input-container">
                 <asp:TextBox ID="TextBox2" runat="server" name="name" class="input">
                  
                 </asp:TextBox>
              
              <label for="">mesaj konusu</label>
              <span>mesaj konusu</span>
            </div>
        
            <div class="input-container textarea">
              <asp:TextBox ID="TextBox3" runat="server" name="mesage" class="input"  Height="100px"></asp:TextBox>
              <label for="">Message</label>
              <span>Message</span>
            </div>
              <asp:Button ID="Button1" runat="server" Text="Gönder" OnClick="Button1_Click" />
           
          </form>
        </div>
      </div>
    </div>


   


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder4" runat="server">
</asp:Content>
