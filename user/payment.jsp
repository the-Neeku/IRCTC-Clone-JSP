<%-- 
    Document   : userHome
    Created on : Jul 23, 2025, 10:14:19 AM
    Author     : yuvra
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="dbpack.DbManager"%>
<%
if(session.getAttribute("userId")==null || session.getAttribute("userId")=="")
{
response.sendRedirect("../login.jsp");
}
else
{
    String id=request.getParameter("id");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Home</title>
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
       <div class="container-fluid p-0">
          <!--navbaar-->
          <jsp:include page="navbar.jsp"/>
          <div  class="col-sm-8 mx-auto form p-3 mt-5"  style="box-shadow: 5px 8px 10px #213D77;width: max-content;">
              <h2 class="mb-5 text-center" style="color: #213D77;">Payment</h2><hr>
            <a href="paymentScript.jsp?status=Success" class="btn btn-success">Payment Success</a>
            <a href="paymentScript.jsp?status=Failed" class="btn btn-danger">Payment Failed</a>
            
           </div>
          <!--footer-->
        <jsp:include page="footer.jsp"/>
        <!--footer end-->
       </div>
    </body>
</html>
<% } %>
