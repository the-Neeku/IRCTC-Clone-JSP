<%@page import="java.sql.ResultSet"%>
<%@page import="dbpack.DbManager"%>
<%
if(request.getParameter("page").equals("reg")){
    String name=request.getParameter("name");
    String mail=request.getParameter("mail");
    String mobile=request.getParameter("mobile");
    String password=request.getParameter("pwd");
    DbManager db=new DbManager();
    String query="insert into registration(Name,Email,Mobile,Pwd,Status,Date) value('"+name+"','"+mail+"','"+mobile+"','"+password+"','user',now())";
    if(db.insertUpdateDelete(query))
    {
        out.print("<script>alert('Inserted');window.location.href='login.jsp'</script>");
    }
    else
    {
        out.print("<script>alert('error');window.location.href='registration.jsp'</script>");
    }
}
if(request.getParameter("page").equals("login")){
    String userId=request.getParameter("userid");
    String password=request.getParameter("pwd");
    String query="select * from registration where Email='"+userId+"' and Pwd='"+password+"'";
    DbManager db=new DbManager();
    ResultSet rs=db.select(query);
    if(rs.next())
    {
        if(rs.getString("status").equals("admin"))
        {
            session.setAttribute("userId",userId);
            response.sendRedirect("admin/adminHome.jsp");
        }
        else
        {
            session.setAttribute("userId",userId);
            response.sendRedirect("user/userHome.jsp");
        }
    }
else
{
    out.print("<script>alert('invalid userid or Password');window.location.href='login.jsp'</script>");
}
}
if(request.getParameter("page").equals("contact")){
    String name=request.getParameter("name");
    String mobile=request.getParameter("mobile");
    String mail=request.getParameter("mail");
    String type=request.getParameter("type");
    String msg=request.getParameter("msg");
    DbManager cd=new DbManager();
    String query="insert into contact(Name,Mobile,Mail,Type,Massage,Date) value('"+name+"','"+mobile+"','"+mail+"','"+type+"','"+msg+"',now())";
    if(cd.insertUpdateDelete(query)){
        out.print("<script>alert('Thankyou, "+name+" your "+type+" has successfully submited.');window.location.href='index.jsp'</script>");
    }
    else{
        out.print("<script>alert('Something went wrong! Please try again. ');window.location.href='contact.jsp'</script>");
    }
}
%>