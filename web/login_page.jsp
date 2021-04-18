<%-- 
    Document   : login_page
    Created on : 03-Apr-2020, 1:06:34 pm
    Author     : abhik
--%>

<%@page import="com.tech.blog.entities.Message"%>
<a href="login_page.jsp"></a>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
               <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
               <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
               <style>
                   
               </style> 
    </head>
    <body>
         <%@include file="normal_navbar.jsp" %>
        <main class="d-flex align-items-center bg-dark" style="height:80vh">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 offset-md-4">
                        
                <div class="card" >
                    <div class="card-header text-center">
                        <span class="fa fa-user fa-3x"></span>
                        <p>Login here </p>
                      
                    </div>
   <%                   
 Message m=(Message)session.getAttribute("msg");
  if(m!=null)
  {
      %>
      <div class="alert <%= m.getCssClass()%>" role="alert">
          <%= m.getContent()%>
  </div>
      <%
  }
  session.removeAttribute("msg");
    %>
                    
                   <div class="card-body">
                       
 <form action="LoginServlet" method="post">
  
     <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input name="email" required type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input name="password" required type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
  </div>
  
   <div class="container text-center">                        
  <button type="submit" class="btn btn-primary">Submit</button>
   </div>
 </form>
                      
                    </div>
                </div>
  
                        
                    </div>
                </div>
            </div>
            
        </main>
        
        
         <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
         <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
         <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
         
         <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQ<sAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
         <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
         
    </body>
</html>