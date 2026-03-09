<%-- 
    Document   : contect-us
    Created on : 22 Jul, 2025, 2:02:15 PM
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
</head>

<body>
    <div class="container-fluid">
                <!-- NAVBAR -->
                <jsp:include page="navbar.jsp"/>
                <!--NABAR END-->
        <div class="row m-5">
            <div class="col-sm-8 mx-auto form p-5 pb-3 fs-5" style="box-shadow: 5px 8px 10px #213D77">
                <form action="controller.jsp" method="post">
                    <input type="hidden" name="page" value="contact">
                    <h2 class="mb-5 text-center" style="color: #213D77;">Contact us</h2><hr>
                    <div class="box">
                        <label for="Name">Name:</label>
                        <input type="text" style="width: 90%;" name="name" placeholder="Enter your mane" required>
                    </div>
                    <div class="box">
                        <label for="phone">Mobile No:</label>
                        <input type="number" style="width: 85%;" name="mobile" placeholder="Enter your mobile" required>
                    </div>
                    <div class="box">
                        <label for="Email">Email:</label>
                        <input type="email" style="width: 90%;" name="mail" placeholder="example@gmail.com" required>
                    </div>
                    <input type="radio" value="Complain" name="type" style="margin-left: 30px;" required> Complain
                    <input type="radio" value="Feedback" name="type" style="margin-left: 30px;" required> Feedback
                    <textarea id="textarea" name="msg" placeholder="Write Complain or Feedback..." required></textarea><br><br>
                    <div class="row mt-3 mb-3 text-center">
                        <div>
                            <button class="btn" type="submit">Submit</button>
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