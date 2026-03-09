<%@page import="java.sql.ResultSet"%>
<%@page import="dbpack.DbManager"%>
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
        <!--navbar-->
        <jsp:include page="navbar.jsp"/>
        <!--navbar end-->
        <div class="row">
            <div class="col-sm-12">
                <h2 class="mb-5 text-center"style="color: #213D77;">Train List</h2><hr>
                <%
                    String  From=request.getParameter("From");
                    String  To=request.getParameter("To");
                    String  Date=request.getParameter("Date");
                    DbManager db=new DbManager();
                    ResultSet rs=db.select("select * from train_details where Source='"+From+"' and Destination='"+To+"'");
                    while(rs.next()){
                %>
                <div class="row m-3" style="box-shadow: 5px 8px 10px #213D77">
                    <a href="user/booknow.jsp?id=<%=rs.getString("id")%>" class="col-sm-8 mx-auto form p-3">
                        <div class="box text-center" style="background-color: #213d77; width: 48%; float: left; margin: 5; padding: 0;">
                            <span style="color: white; font-size:22px"><%=rs.getString("TrainNo")%></span>
                        </div>
                        <div class="box text-center" style="background-color: #213d77; width: 48%; float: right; margin: 5; padding: 0;">
                            <span style="color: white; font-size:22px"><%=rs.getString("TrainName")%></span>
                        </div><br>
                        <div class="box text-center" style="background-color: #213d77; width: 48%; float: left; margin: 5; padding: 0;">
                            <span style="color: white; font-size:22px"><%=rs.getString("DepartureTime")%></span>
                        </div>
                        <div class="box text-center" style="background-color: #213d77; width: 48%; float: right; margin: 5; padding: 0;">
                            <span style="color: white; font-size:22px"><%=rs.getString("ArrivalTime")%></span>
                        </div><br>
                        <div class="box text-center" style="background-color: #213d77; width: 48%; float: left; margin: 5; padding: 0;">
                            <span style="color: white; font-size:22px">Runs Daily</span>
                        </div>
                        <div class="box text-center" style="background-color: #213d77; width: 48%; float: right; margin: 5; padding: 0;">
                            <span style="color: white; font-size:22px"> <%=rs.getString("Price")%> /-</span>
                        </div>
                    </a>
                </div>
                <%
                    }
                %>
            </div>
          </div>
        <!--footer-->
        <jsp:include page="footer.jsp"/>
        <!--footer end-->
    </div>
</body>

</html>