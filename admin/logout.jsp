<%
    session.removeAttribute("userId");
    session.invalidate();
    response.sendRedirect("../login.jsp");
%>