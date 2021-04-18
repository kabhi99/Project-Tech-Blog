
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
               <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
               <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
               <style>
                   
               </style> 
    </head>
    <body>
         <%@include file="normal_navbar.jsp" %>
         
         
          <main class="d-flex align-items-center bg-dark" style="height:100vh">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 offset-md-3">
                        
                   <div class="card">
                    <div class="card-header text-center" >
                        <span class="fa fa-user-plus fa-3x"></span>
                        <p>Login here </p>
                      
                    </div>
                   <div class="card-body">
                       
                       <form id="reg-form" action="RegisterServlet" method="POST">
                        
                            <div class="form-group">
                          <label for="user_name">User Name</label>
                          <input type="text" class="form-control" name="user_name"id="user_name" aria-describedby="emailHelp" placeholder="Enter user name">
                        </div>
                           
                                              
                        <div class="form-group">
                        <label for="exampleInputEmail1">Email address</label>
                        <input type="email" class="form-control" name="user_email" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                        <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                        </div>
                           
                       <div class="form-group">
                        <label for="exampleInputPassword1">Password</label>
                       <input type="password" class="form-control" name="user_password" id="exampleInputPassword1" placeholder="Password">
                        </div>
  
                        <div class="form-group">
                         <label for="gender">Select Gender</label>
                        
                       <br>
                         <input type="radio"  id="gender" name="gender" value="male">Male
                         <input type="radio"  id="gender" name="gender" value="female">Female
                       </div>
                           
                        <div class="form-group">
    
                            <textarea name="about" required class="form-control" id="" cols="30" rows="2" placeholder="Enter something about yourself"></textarea>
                         </div>

                         <div class="form-check">
                         <input type="checkbox" class="form-check-input" name="check" id="exampleCheck1">
                          <label class="form-check-label" for="exampleCheck1">Agree Terms & Conditions</label>
                          </div>
                           
                          <br>
                          <div class="container text-center" id="loader" style="display:none;">
                          <span class="fa fa-refresh fa-spin fa-4x"></span>
                          <h4>Please wait...</h4>
                          </div>
                         <button type="submit" id="submit-btn" class="btn btn-primary">Submit</button>
                   </form>
                      
       </div>
                </div>
                    
                        
                    </div>
                </div>
            </div>
            
        </main>
       
         
         
         <script
  src="https://code.jquery.com/jquery-3.4.1.min.js"
  integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
  crossorigin="anonymous"></script>
         <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
         <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
         
         <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQ<sAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
         <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
         <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
         <script>
             $(document).ready(function(){
                 console.log("loaded.....");
                 $('#reg-form').on('submit',function(event){
                     event.preventDefault();
                     let form=new FormData(this);
                     
                     $("#submit-btn").hide();
                     $("#loader").show();
                     
                     
                     $.ajax({
                         url:"RegisterServlet",
                         type:'POST',
                         data:form,
                         success:function(data,textStatus,jqXHR){
                            console.log(data); 
                            $("#submit-btn").show();
                            $("#loader").hide();
                            if(data.trim()==='done'){
                            swal("Successfully Registered..We are going to redirect to login page")
                             .then((value) => {
                                window.location="login_page.jsp"
                               });}else
                           {
                               swal(data);
                           }
                         },
                         error:function(jqXHR,textStatus,errorThrown){
                             console.log(jqXHR);
                             $("#submit-btn").show();
                             $("#loader").hide();
                             swal("Something went wrong...");
                             
                         },
                         processData:false,
                         contentType:false
                     });
                 });
             });
         </script>
    </body>
</html>
