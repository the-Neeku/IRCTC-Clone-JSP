<html>

<head>
    <title>IRCTC-Ticket Booking</title>
    <link rel="stylesheet" href="../CSS/bootstrap.css" />
    <link rel="stylesheet" href="../CSS/style.css" />
    <link rel="stylesheet" href="../CSS/registration.css">
    <script src="../JS/bootstrap.js"></script>
    <script src="../JS/script.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css"
        integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>

<body>
    <div class="container-fluid">
        <!--navbar-->
        <jsp:include page="navbar.jsp"/>
        <!--navbar end-->
        <!--content-->
        <div class="row mt-5 mb-5">
            <div class="col-sm-5 mx-auto form p-5 pb-3" style="box-shadow: 5px 8px 10px #213D77">
                <form action="controller.jsp" method="post">
                    <input type="hidden" name="page" value="Pchange"/>
                    <h2 class="mb-5 text-center" style="color: #213D77;">Change Password</h2><hr>
                    <div class="row">
                        <div class="box">
                            <i class="fa-solid fa-user"></i>
                            <label> Old-Password:</label><input type="text" name="oldPwd" style="width: 65%;"
                                placeholder="Enter old password" required>
                        </div>
                        <div class="box">
                            <i class="fa-solid fa-unlock"></i>
                            <label for="pass">New-Password:</label><input type="password" name="pwd" style="width: 65%;"
                                placeholder="Enter new password" required>
                        </div>
                        <div class="box">
                            <i class="fa-solid fa-lock"></i>
                            <label for="pass">Confirm Password:</label><input type="password" name="cpwd" style="width: 58%;"
                                placeholder="Confirm new password" required>
                        </div>
                        <div class="row mt-3 mb-3 text-center">
                            <div>
                                <button class="btn" type="submit">Change</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <!--content end-->
        <!--footer-->
        <jsp:include page="../footer.jsp"/>
        <!--footer end-->
    </div>
</body>

</html>