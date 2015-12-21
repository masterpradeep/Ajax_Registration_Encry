<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Username Availability</title>  
<style type="text/css">  
.flable {  
 color: gray;  
}  
  
.status {  
 font-family: verdana;  
 font-size: 12px;  
}  
  
.uname {  
 color: blue;  
}  
</style>  
<script src="E:\Eclipse wokspace\Ajax_Registration_Encry\WebContent\WEB-INF\jquery.js" type="text/javascript"></script>  
 <script type="text/javascript">  
          $(document).ready(function(){  
              $(".uname").change(function(){  
                  var uname = $(this).val();  
                  if(uname.length >= 3){  
                      $(".status").html("<img src='images/loading.gif'><font color=gray> Checking availability...</font>");  
                       $.ajax({  
                          type: "POST",  
                          url: "check",  
                          data: "uname="+ uname,  
                          success: function(msg){  
  
                              $(".status").ajaxComplete(function(event, request, settings){  
                                     
                                  $(".status").html(msg);  
  
                              });  
                          }  
                      });   
                  }  
                  else{  
                         
                      $(".status").html("<font color=red>Username should be <b>3</b> character long.</font>");  
                  }  
                    
              });  
          });  
        </script>  
</head>
<body>


 <div>  
  <label class="flable">User Name :</label> <input class="uname" type="text"> <span class="status"></span>  
 </div>  










</body>
</html>