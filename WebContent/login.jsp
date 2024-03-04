<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
<%@include file="all_component/allcss.jsp" %>
</head>
<body>
<%@include file="all_component/navbar.jsp" %>
<div class="container-fluid div-color">
    <div class="row">
        <div class="col-md-4 offset-md-4">
            <div class="card mt-4">
                <div class="card-header text-center text-white bg-custom">
                 <i class="fa fa-user-plus fa-3x" aria-hidden="true"></i>
                 <h4>Login Page</h4>
                </div>
                
                 
                     <%
                     String invalidMsg=(String) session.getAttribute("login-failed");
                     if(invalidMsg!=null)
                     {
                    	 %>
                    	 <div class="alert alert-danger" role="alert"><%=invalidMsg %></div>
                    	 <% 
                    	 session.removeAttribute("login-failed");
                     }
                     %>               
                   <%
                   String withoutLogin=(String)session.getAttribute("Login-error");
                   if(withoutLogin!=null)
                   {%>
                	 <div class="alert alert-danger" role="alert"><%=withoutLogin %></div>  
                   <%
                   session.removeAttribute("Login-error");
                   }
                   %>
                   <%
                   String lgMsg=(String)session.getAttribute("logoutMsg");
                   if(lgMsg!=null)
                   {%>
                	   <div class="alert alert-success" role="alert"><%=lgMsg %></div>
                   <%
                   session.removeAttribute("logoutMsg");
                   }
                   %>
                   
                <div class="card-body">
                <form action="loginServlet" method="post">
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="uemail">
   
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Enter Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1" name="upassword">
  </div>
  
  <button type="submit" class="btn btn-primary badge-pill btn-block">Login</button>
</form>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="container-fluid bg-dark">
    <p class="text-center text-white">Note: Any Errors occur then contact With JACK and Developed by JACK AND JONES</p><br>
    <p class="text-center text-white">All Right Reserved @CodeWithJACk-2020-23</p><br>
</div>
</body>
</html>