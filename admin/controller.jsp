<%@page import="dbpack.DbManager"%>
<%@page import="java.sql.ResultSet"%>
<%
    if(request.getParameter("page").equals("Pchange")){
        String oldPwd=request.getParameter("oldPwd");
        String password=request.getParameter("pwd");
        String userId=session.getAttribute("userId").toString();
        DbManager db=new DbManager();
        if(db.insertUpdateDelete("update registration set Pwd='"+password+"' where Email='"+userId+"' and Pwd='"+oldPwd+"' "))
        {
            out.print("<script>alert('updated');window.location.href='adminHome.jsp'</script>");
        }
        else{
             out.print("<script>alert('error');window.location.href='change-pwd.jsp'</script>");
        }
    }
    if(request.getParameter("page").equals("train")){
        String tNo=request.getParameter("tNo");
        String tName=request.getParameter("tName");
        String source=request.getParameter("source");
        String destination=request.getParameter("destination");
        String depart=request.getParameter("depart");
        String arrival=request.getParameter("arrival");
        String price=request.getParameter("price");
        DbManager db=new DbManager();
        String query="insert into train_details(TrainNo,TrainName,Source,Destination,DepartureTime,ArrivalTime,Price,Date) value('"+tNo+"','"+tName+"','"+source+"','"+destination+"','"+depart+"','"+arrival+"','"+price+"',now())";
        if(db.insertUpdateDelete(query))
        {
            out.print("<script>alert('Inserted');window.location.href='adminHome.jsp'</script>");
        }
        else
        {
            out.print("<script>alert('error');window.location.href='addTrain.jsp'</script>");
        }
    }
%>