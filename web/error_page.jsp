<%-- 
    Document   : error_page
    Created on : 04-Apr-2020, 12:44:06 am
    Author     : abhik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page  isErrorPage="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sorry ! something went wrong...</title>
        
         <!-- css -->
               <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
               <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
               <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    </head>
    <body>
        <div class="container text-center">
            <img src="img/Error.png" class="img-fluid">
            <h3>Sorry ! Something went wrong...</h3>
           <%= exception%>
            <a href="index.jsp" id="submit-btn" class="btn btn-primary bg-dark btn-lg mt-3">Home</a>

            
        </div>
    </body>
</html>
