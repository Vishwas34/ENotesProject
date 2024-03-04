<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
.bg-custom
{
	background:#8e24aa;
}

.div-color
{
	background-image:linear-gradient(to right top,#ed6700,#ec9000,#e5b500,#d9d828,#c8f95a);
	height:560px;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register page</title>
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
                 <h4>Registration</h4>
                </div>
                
             
                
                <%
                String regMsg=(String) session.getAttribute("reg-sucess");
                if(regMsg!=null)
                {
                	%>
                	 <div class="alert alert-success" role="alert"><%=regMsg %>Login<a href="login.jsp">Click Here</a></div>
                <% 
                session.removeAttribute("reg-sucess");
                }
                %>
                
                 <%
                String FailedMsg=(String) session.getAttribute("failedMsg");
                if(FailedMsg!=null)
                {
                	%>
                	 <div class="alert alert-danger" role="alert"><%=FailedMsg %></div>
                <% 
                session.removeAttribute("failed-msg");
                }
                %>
                
                <div class="card-body">
                <form action="UserServlet" method="post">
                 <div class="form-group">
    <label for="exampleInputEmail1">Enter Full Name</label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"  name="fname"/>
   
  </div>
                
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="uemail"/>
   
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Enter Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1" name="upassword"/>
  </div>
  
  <button type="submit" class="btn btn-primary badge-pill btn-block">Register</button>
</form>
                </div>
            </div>
        </div>
    </div>
</div>
<%@include file="all_component/footer.jsp" %>
</body>
</html>