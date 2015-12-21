<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
  	<script type="text/javascript">
  	function ajaxAsyncRequest(reqURL){
		  	var request = new XMLHttpRequest();
		  	 var url=reqURL;
		  	 alert(url);
		  		  url=url+"?name="+document.getElementById("n").value;
		  				  alert(url);
		  		
		  		  url=url+"&pass="+document.getElementById("p").value;
		  		  alert(url);
		  		request.open("GET",url,true);  //"true" makes the request asynchronous
		  		request.
		  		request.onreadystatechange = function() {
		  		
		  	    if (request.readyState == 4) {
		  	    	alert("hello");
		  	        if (request.status == 200)
		  	        {
							alert("hello");		  	            //request succeed
		  	        	 document.getElementById("message").innerHTML = request.responseText;
		  	        }
		  	        else
		  	        {
		  	            //request failed
		  	        	alert('In request Something is wrong !!');
		  	        }
		  	    }
		  	};
		  	 
			request.send(null);		
  	}

	</script>


</head>
<body>
<form>

		<h2 align ="center">Registration Page</h2>
		<hr color="red"></hr>
	
	<div align="center">
	
	<div>
	<div>EmailId/UserName:</div> <input type="text" id="n" ><br></br></div>
	<div>
	<div>Password:</div><input type="password" id="p"><br><br></div>
	<input type="submit" value="Register" onclick='ajaxAsyncRequest("DataServlet")'/><br>
	
	<div id="message" color="red">	
</div>
</div>
</form>
</body>
</html>