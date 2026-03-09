<%-- 
    Document   : registration
    Created on : 22 Jul, 2025, 2:01:19 PM
    Author     : maury
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>

<head>
    <title>IRCTC-Ticket Booking</title>
    <link rel="stylesheet" href="CSS/bootstrap.css" />
    <link rel="stylesheet" href="CSS/style.css" />
    <link rel="stylesheet" href="CSS/registration.css">
    <script src="JS/bootstrap.js"></script>
    <script src="JS/script.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css"
        integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script>
        let currentCaptcha = "";

        // Function to generate random alphanumeric string
        function generateRandomString(length) {
          const chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
          let result = "";
          for (let i = 0; i < length; i++) {
            const randomIndex = Math.floor(Math.random() * chars.length);
            result += chars[randomIndex];
          }
          return result;
        }

        // Show CAPTCHA
        function generateCaptcha() {
          currentCaptcha = generateRandomString(6); // 6-char captcha
          document.getElementById("captcha").innerText = currentCaptcha;
          document.getElementById("captchaInput").value = "";
          document.getElementById("result").innerText = "";
          document.getElementById("res").innerText = "";
        }

        // Check 
        function check() {
          const userInput = document.getElementById("captchaInput").value.trim();
          var pswd = document.getElementById("pwd").value.trim();
          var cpswd = document.getElementById("cpwd").value.trim();
          if(pswd != cpswd){
            document.getElementById("res").innerText = "Wrong! Try again.";
            document.getElementById("res").style.color = "red";
            return false;
          }
          if(pswd==cpswd){
              document.getElementById("res").innerText = "";
            if (userInput != currentCaptcha) {
              document.getElementById("result").innerText = "Wrong! Try again.";
              document.getElementById("result").style.color = "red";
              return false;
            }
        }
          else{
              return true;
          }

        }
    </script>
</head>

<body onload="generateCaptcha();">
    <div class="container-fluid">
                <!-- NAVBAR -->
                <jsp:include page="navbar.jsp"/>
                <!--NABAR END-->
        <div class="row mt-5 mb-5">
            <div class="col-sm-8 mx-auto form p-5" style="box-shadow: 5px 8px 10px #213D77">
                <form action="controller.jsp" method="post" onsubmit="return check()">
                    <input type="hidden" name="page" value="reg"/>
                    <h2 class="mb-5 text-center" style="color: #213D77;">Create Your IRCTC Account</h2><hr>
                    <div style="border: 1px solid #213D77;">
                        <ol>
                            <li>
                                Garbage / Junk values in profile may lead to deactivation of IRCTC account.
                            </li>
                            <li>
                                Opening Advance Reservation Period(ARP) ticket and Opening Tatkal ticket booking for
                                unauthenticated users is allowed only after 4 days from date of User Registration
                                (excluding the day of registration ). User may authenticate their user profile with
                                Aadhaar to book Opening Advance Reservation Period(ARP) ticket and Opening Tatkal
                                ticket.
                            </li>
                        </ol>
                    </div>
                    <div class="row">
                        <div class="box">
                            <i class="fa-solid fa-id-card"></i>
                            <label for="name"> Name:</label><input type="text" name="name" style="width: 88%;"
                                placeholder="Enter full name" required>
                        </div>
                        <div class="box">
                            <i class="fa-solid fa-envelope"></i>
                            <label for="mail"> Email:</label><input type="email" name="mail" style="width: 88%;"
                                placeholder="Enter Email" required>
                        </div>
                        <div class="box">
                            <i class="fa-solid fa-phone"></i>
                            <label for="mobile"> Mobile No:</label><input type="number" name="mobile" style="width: 83.5%;"
                                placeholder="Enter mobile number" required>
                        </div>
                        <div class="box">
                            <i class="fa-solid fa-unlock"></i>
                            <label for="pass"> Password:</label><input type="password" name="pwd" id="pwd" style="width: 83%;"
                                placeholder="Create strong password" required>
                        </div>
                        <div class="box">
                            <i class="fa-solid fa-lock"></i>
                            <label for="cpass"> Confirm Password:</label><input type="password" name="cpwd" id="cpwd" style="width: 74%;"
                                placeholder="Confirm password" required>
                        </div>
                        <p id="res"></p>
                        <div class="box text-center" style="background-color: #213d77; width: 48%; float: left;">
                            <span style="color: white; font-size:22px;user-select: none;" id="captcha"></span><span onclick="generateCaptcha()"
                                style="float:right; font-size:22px"><i
                                    class="fa-solid fa-rotate-right text-light mt-2"></i></span>
                        </div>
                        <div class="box" style="width: 48%; float:right;">
                            <input type="text" style="width: 100%;" name="captcha" id="captchaInput" placeholder="Enter Captcha" required>
                        </div>
                        <p id="result"></p>
                        <hr>
                        <div class="row mt-5">
                            <div class="btn1">
                                <button class="btn" type="submit" style="float: left;">Submit</button>
                            </div>
                            <div class="btn2">
                                <button class="btn me-2" type="reset" style="float: right;">Reset</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <!--footer-->
        <jsp:include page="footer.jsp"/>
        <!--footer end-->
    </div>
</body>

</html>