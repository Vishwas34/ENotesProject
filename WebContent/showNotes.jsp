
    <%@page import="com.DAO.PostDAO" %>
    <%@page import="com.Db.DBConnect" %>
    <%@page import="com.User.Post" %>
    <%@page import="java.util.List" %>
    <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
    UserDetails user3=(UserDetails) session.getAttribute("userD");
    
    if(user3 == null)
    {
    	response.sendRedirect("login.jsp");
    	session.setAttribute("Login-error","Please Login...");
    }
    %>
    
    
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Notes Page</title>
<%@include file="all_component/allcss.jsp" %>
</head>
<body>
<%@include file="all_component/navbar.jsp" %>

      <%
        String updateMsg=(String) session.getAttribute("updateMsg");
        if(updateMsg!=null)
        {
        	%>
        	<div class="alert alert-success" role="alert"><%=updateMsg %></div>
        <%
        session.removeAttribute("updateMsg");
        }
      %>
       
       <%
        String wrongMsg=(String) session.getAttribute("wrongMsg");
        if(wrongMsg!=null)
        {
        	%>
        	<div class="alert alert-danger" role="alert"><%=wrongMsg %></div>
        <%
        session.removeAttribute("wrongMsg");
        }
      %>
       
       
<div class="container">
    <h2 class="text-center">All Notes</h2>
    
    <div class="row">
        <div class="col-md-12">
        
       <%
        if(user3!=null)
        {
        	PostDAO ob=new PostDAO(DBConnect.getConn());
        	List<Post> post=ob.getData(user3.getId());
        	for(Post po:post)
        	{
        	%>
        	 <div class="card mt-3">
        <img alt="" src="img/pen2.jpg" class="card-img-top mt-2 mx-auto" style="max-width:100px"/>
        <div class="card-body p-4">
            <h5 class="card-title"><%= po.getTitle() %></h5>
            <p><%= po.getContent() %></p>
            <p>
                <b class="text-success">Published By:</b>
                <b class="text-success"><%= user3.getName() %></b>
            </p>
            <p>
                <b class="text-success">Published Date:</b>
                <b class="text-success"><%= po.getPdate() %></b>
            </p>
            <div class="container text-center mt-2">
                <a href="deleteServlet?note_id=<%=po.getId() %>" class="btn btn-danger">Delete</a>
                <a href="edit.jsp?note_id=<%=po.getId() %>" class="btn btn-primary">Edit</a>
            </div>
        </div>
    </div>
        	<%
        	}
        }
       %>
                
        
        </div>
    </div>
</div>
</body>
</html>