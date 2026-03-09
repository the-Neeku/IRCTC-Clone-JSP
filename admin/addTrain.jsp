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
        <div class="row mt-5 mb-5">
            <div class="col-sm-8 mx-auto form p-5" style="box-shadow: 5px 8px 10px #213D77">
                <form action="controller.jsp" method="post">
                    <input type="hidden" name="page" value="train"/>
                    <h2 class="mb-5 text-center" style="color: #213D77;">Add Train</h2><hr>
                    <div class="row">
                        <div class="box">
                            <label for="name">Train No:</label><input type="number" name="tNo" style="width: 87%;"
                                placeholder="Enter train number" required>
                        </div>
                        <div class="box">
                            <label for="mail">Train Name:</label><input type="text" name="tName" style="width: 85%;"
                                placeholder="Enter train name" required>
                        </div>
                        <div class="box">
                            <label for="mobile">Source:</label><input type="text" name="source" style="width: 90%;"
                                placeholder="Enter source" required>
                        </div>
                        <div class="box">
                            <label for="pass">Destination:</label><input type="text" name="destination" id="pwd" style="width: 85%;"
                                placeholder="Enter destination" required>
                        </div>
                        <div class="box">
                            <label for="cpass">Departure time:</label><input type="text" name="depart" id="cpwd" style="width: 81%;"
                                placeholder="Enter departure time" required>
                        </div>
                        <div class="box">
                            <label for="cpass">Arrival time:</label><input type="text" name="arrival" id="cpwd" style="width: 84%;"
                                placeholder="Enter arrival time" required>
                        </div>
                        <div class="box">
                            <label for="cpass">Price:</label><input type="number" name="price" id="cpwd" style="width: 84%;"
                                placeholder="Enter arrival time" required>
                        </div>
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
    </div>
</body>

</html>