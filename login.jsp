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
    if (userInput != currentCaptcha) {
      document.getElementById("result").innerText = "Wrong! Try again.";
      document.getElementById("result").style.color = "red";
      return false;
    }
    else{
      return true;
  }
}

// First time load
generateCaptcha();
    </script>
</head>

<body onload="generateCaptcha();">
    <div class="container-fluid">
                <!-- NAVBAR -->
                <jsp:include page="navbar.jsp"/>
                <!--NABAR END-->
        <div class="row mt-5 mb-5">
            <div class="col-sm-5 mx-auto form p-5 pb-3" style="box-shadow: 5px 8px 10px #213D77">
                <form action="controller.jsp" method="post" onsubmit="return check()">
                    <input type="hidden" name="page" value="login"/>
                    <h2 class="mb-5 text-center" style="color: #213D77;">Login Your Account</h2><hr>
                    <div class="row">
                        <div class="box">
                            <i class="fa-solid fa-user"></i>
                            <label for="email"> Userid:</label><input type="email" name="userid" style="width: 79%;"
                                placeholder="Enter Email" required>
                        </div>
                        <div class="box">
                            <i class="fa-solid fa-unlock"></i>
                            <label for="pass"> Password:</label><input type="password" name="pwd" style="width: 74%;"
                                placeholder="Enter your password" required>
                        </div>
                        <div class="box text-center" style="background-color: #213d77; width: 48%; float: left;">
                            <span style="color: white; font-size:22px;user-select: none;" id="captcha"></span><span onclick="generateCaptcha()"
                                style="float:right; font-size:22px"><i
                                    class="fa-solid fa-rotate-right text-light mt-2"></i></span>
                        </div>
                        <div class="box" style="width: 48%; float:right;">
                            <input type="text" style="width: 100%;" name="captcha" id="captchaInput" placeholder="Enter Captcha" required>
                        </div>
                        <p id="result"></p>
                        <div class="row mt-3 mb-3 text-center">
                            <div>
                                <button class="btn" type="submit" onclick="check()">Login</button>
                            </div>
                        </div>
                        <hr>
                        <div class="row text-center">
                            <p>Don't have account <a href="registration.jsp"
                                    style="font-weight:bold; text-decoration: none;">Register</a></p>
                            <p><a href="#"><u>Forget Password</u></a></p>
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