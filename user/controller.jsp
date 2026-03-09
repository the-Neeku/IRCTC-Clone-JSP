<%@page import="java.util.Random"%>
<%@page import="dbpack.DbManager"%>
<%
    if(request.getParameter("page").equals("change")){
        String oldPwd=request.getParameter("oldPwd");
        String password=request.getParameter("pwd");
        String userId=session.getAttribute("userId").toString();
        DbManager db=new DbManager();
        if(db.insertUpdateDelete("update registration set Pwd='"+password+"' where Email='"+userId+"' and Pwd='"+oldPwd+"' "))
        {
            out.print("<script>alert('updated');window.location.href='userHome.jsp'</script>");
        }
        else{
             out.print("<script>alert('error');window.location.href='change-pwd.jsp'</script>");
        }
    }
    else if(request.getParameter("page").equals("booknow")){
        String userId=session.getAttribute("userId").toString();
        String name=request.getParameter("name");
        String age=request.getParameter("age");
        String date=request.getParameter("date");
        String trainid=request.getParameter("trainid");
                Random rm=new Random();
                int fn=rm.nextInt(10000000);
                String fnrand=Integer.toString(fn);
        String pnr=trainid+age+fnrand;
        out.print(pnr);
        String query="insert into bookingrecords(Name,Age,JoineryDate,Trainid,Userid,Pnr,Date) values('"+name+"','"+age+"','"+date+"','"+trainid+"','"+userId+"','"+pnr+"',now())";
        DbManager dm=new DbManager();
        if(dm.insertUpdateDelete(query))
        {
            session.setAttribute("pnr", pnr);
        response.sendRedirect("payment.jsp");
        }
        else
        {
        out.print("<script>alert('Something Went Wrong Please Try Again');window.location.href='../index.jsp';</script>");
        }
    }
%>