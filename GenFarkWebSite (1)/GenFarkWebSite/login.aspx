<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="GenFarkWebSite.login"%>

<!DOCTYPE html>





<html>
<head>
    <title></title>
    <link href="adminStyle.css" rel="stylesheet" />
</head>
<body>
    <div class="main">
        <div class="form-box">
            <div class="button-box">
                <div id="btn"></div>
                <button type ="button" class="toggle-btn" onclick="login()">Giriş Yapınız</button>
                <button id="git" type ="button" class="toggle-btn">Anasayfaya git</button>
            </div>
            <div class="social-icons">
            <lottie-player src="https://assets6.lottiefiles.com/packages/lf20_bwejzlrc.json"  background="transparent"  speed="1"   loop  autoplay></lottie-player>
            <lottie-player src="https://assets7.lottiefiles.com/packages/lf20_puu4hfmk.json"  background="transparent"  speed="1"    loop  autoplay></lottie-player>
            <lottie-player src="https://assets7.lottiefiles.com/packages/lf20_yly38x6y.json"  background="transparent"  speed="1"    loop  autoplay></lottie-player>
            <lottie-player src="https://assets2.lottiefiles.com/packages/lf20_6ywhhblw.json"  background="transparent"  speed="1"     loop  autoplay></lottie-player>
            <lottie-player src="https://assets2.lottiefiles.com/packages/lf20_ijoepf55.json"  background="transparent"  speed="1"    loop  autoplay></lottie-player>
            </div>
            <form id="Login" class="input-group" runat="server">
                <asp:TextBox ID="TextBox1" runat="server" class="input-field"></asp:TextBox>
                <asp:TextBox ID="TextBox2"  type="password" runat="server" class="input-field"></asp:TextBox>

               <%-- <input type="text"  placeholder="ad" required />
                <input type="password"  placeholder="Şifre" required />--%>
                <br />
                 <asp:Button ID="Button2" runat="server" Text="Gönder" OnClick="Button2_Click1"    />
            </form>
           
        </div>
    </div>
    <script>
        var x = document.getElementById("Login");
        var z = document.getElementById("anasayfa");
        
        function login() {
          
        }
        document.querySelector("#git").onclick = function () {
            window.location.href="Anasayfa.aspx"
        }

    </script>



   <script src="https://unpkg.com/@lottiefiles/lottie-player@latest/dist/lottie-player.js"></script>
    <script src="https://unpkg.com/@lottiefiles/lottie-player@latest/dist/lottie-player.js"></script>
    <script src="https://unpkg.com/@lottiefiles/lottie-player@latest/dist/lottie-player.js"></script>
    <script src="https://unpkg.com/@lottiefiles/lottie-player@latest/dist/lottie-player.js"></script>
    <script src="https://unpkg.com/@lottiefiles/lottie-player@latest/dist/lottie-player.js"></script>


</body>
</html>
