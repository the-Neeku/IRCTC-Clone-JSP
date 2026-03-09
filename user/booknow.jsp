<%
    if(session.getAttribute("userId")==null || session.getAttribute("userId")=="")
    {
    response.sendRedirect("../login.jsp");
    }
    else
    {
        String id=request.getParameter("id");
    
%>

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
        <div class="col-sm-8 mx-auto form p-3 mt-5" style="box-shadow: 5px 8px 10px #213D77">
        <form action="controller.jsp" method="post">
                    <input type="hidden" name="page" value="booknow"/>
                    <h2 class="mb-5 text-center" style="color: #213D77;">Booking Form</h2>
                    <div class="row">
                        <input type="hidden" name="trainid" value="<%out.print(id);%>">
                        <div class="box">
                            <label for="mail">Name:</label><input type="text" name="name" style="width: 92%;"
                                placeholder="Enter name" required>
                        </div>
                        <div class="box">
                            <label for="mobile">Age:</label><input type="number" name="age" style="width: 94%;"
                                placeholder="Enter age" required>
                        </div>
                        <div class="box">
                            <input type="date" name="date" style="width: 99%;"
                               required>
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
        <!--footer-->
        <jsp:include page="footer.jsp"/>
        <!--footer end-->
    </div>
</body>

</html>
<%}%>