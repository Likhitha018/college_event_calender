function homepage(ev) {

	if(ev=="login"){
		if (window.XMLHttpRequest)
		{
		  xmlhttp1=new XMLHttpRequest();
		}
		else
		{
		  xmlhttp1=new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp1.onreadystatechange=function()
		{
		  if (xmlhttp1.readyState==4 && xmlhttp1.status==200)
		  {		    
		    	//alert(xmlhttp1.responseText)
		    	document.getElementById("middle").innerHTML=xmlhttp1.responseText;

		  }
		}
		//alert("regi.action?loginid="+t3+"&password="+t4+"&qualification="+t6+"&name="+t7+"&dob="+t8+"&email="+t9+"&phone="+t10)
		xmlhttp1.open("GET","logins.jsp");	
		xmlhttp1.send();
	}
	

	if(ev=="register"){
		if (window.XMLHttpRequest)
		{
		  xmlhttp1=new XMLHttpRequest();
		}
		else
		{
		  xmlhttp1=new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp1.onreadystatechange=function()
		{
		  if (xmlhttp1.readyState==4 && xmlhttp1.status==200)
		  {		    
		    	//alert(xmlhttp1.responseText)
		    	document.getElementById("middle").innerHTML=xmlhttp1.responseText;

		  }
		}
		//alert("regi.action?loginid="+t3+"&password="+t4+"&qualification="+t6+"&name="+t7+"&dob="+t8+"&email="+t9+"&phone="+t10)
		xmlhttp1.open("GET","regis.jsp");	
		xmlhttp1.send();
	}
	if(ev=="home"){
		document.getElementById('middle').innerHTML="<img src='images/2.png'>";
	}
	if(ev=="about"){
		if (window.XMLHttpRequest)
		{
		  xmlhttp1=new XMLHttpRequest();
		}
		else
		{
		  xmlhttp1=new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp1.onreadystatechange=function()
		{
		  if (xmlhttp1.readyState==4 && xmlhttp1.status==200)
		  {		    
		    	//alert(xmlhttp1.responseText)
		    	document.getElementById("middle").innerHTML=xmlhttp1.responseText;

		  }
		}
		//alert("regi.action?loginid="+t3+"&password="+t4+"&qualification="+t6+"&name="+t7+"&dob="+t8+"&email="+t9+"&phone="+t10)
		xmlhttp1.open("GET","about.jsp");	
		xmlhttp1.send();
	
	}
	if(ev=="contact"){
		document.getElementById('middle').innerHTML="<br><br><br><br><br>Address:Deshmukhi,Pochampally,Yadadri-Bhuvanagiri District-508 284<br>Phone number:+91-84980-93080<br>Website: smecprincipal@stmarysgroup.com";
	}
	if(ev=="log"){
		var n1=document.logi.n1.value;
		var n2=document.logi.n2.value;
		if(!n1){
			alert("Enter Any Value For Name")
			return false;
		}
		if(!n2){
			alert("Enter Any Value For Password")
			return false;
		}
	}
if(ev=="reg"){
	var n1=document.regi.n1.value;
	var n2=document.regi.n2.value;
	var n3=document.regi.n3.value;
	var n4=document.regi.n4.value;
	var n5=document.regi.n5.value;
	var n6=document.regi.n6.value;
	var n7=document.regi.n7.value;
	if(!n1){
		alert("Enter Any Value For User Id")
		return false;
	}
	if(!n2){
		alert("Enter Any Value For Password")
		return false;
	}
	if(!n3){
		alert("Enter Any Value For Conform Password")
		return false;
	}
	if(n2!=n3){
		alert("Password doesn't Match")
		return false;
	}
		if(!n4){
		alert("Enter Any Value For Name ")
		return false;
	}
	if(!n5){
		alert("Enter Any Value For Mobile No")
		return false;
	}
	var phoneno = /^\d{10}$/; 
    if(n5.match(phoneno))  
          {  
        
          }  
        else 
          {  
          alert("enter valid phone number");  
          return false;  
          }
	if(!n6){
		alert("Enter Any Value For Email Id")
		return false;
	}
	var atpos = n6.indexOf("@");
    var dotpos = n6.indexOf(".");
    if (atpos == -1 && dotpos == -1) {
        alert("Not a valid e-mail address");
        return false;
    }
	if(!n7){
		alert("Enter Any Value For Address")
		return false;
	}
	
	}
}



function validate() {
	var n1=document.reg.n1.value;
	var namecheck = new RegExp("^[a-zA-Z]+$","g");
			
	if(n1 == "") 
	{
		alert("Enter your Name");
		return false;
	}
	else if(!n1.match(namecheck))
	{
		alert(" NAME:  name should not contain any special characters");
		
		return false;
	}
	var n2=document.reg.n2.value;
	if(n2 == "") 
	{
		alert("Enter your id");
		
		return false;
	}
	
	var name3=document.reg.n3.value;
 	if (name3==null || name3=="")
 	  {
 	  alert("password must be filled out");
 	 document.reg.n4.focus();
 	 return false;
 	  }
 	
 	
 	var name3=document.reg.n3.value;
 	var name4=document.reg.n4.value;
 	if ((name3) != (name4)) 
	  { 
	   alert("Your password and confirmation password do not match.");
	   document.reg.n4.focus();
	   return false; 
	  }
 	if ( ( reg.n5[0].checked == false ) && ( reg.n5[1].checked == false ) )
	{
	alert ( "Please choose your Gender: Male or Female" );
	return false;
	}
	
 	var n6=document.reg.n6.value;
	
	if(isNaN(n6) || n6=="" || n6.length < 0 || n6.length > 2){
		alert("please valid age ");
		return false;
		}
	
	var n7=document.reg.n7.value;
	
	var atpos = n7.indexOf("@");
    var dotpos = n7.lastIndexOf(".");
    if (atpos<1 || dotpos<atpos+2 || dotpos+2>=n7.length) {
        alert("Not a valid e-mail address");
        return false;
    }
	
    
   var n9=document.reg.n9.value;
    
    if(n9 == "")
    	{
    	
    	alert("Enter your Address ");
    	 return false;
    	}
    
     var phone=document.reg.n8.value;
    var phoneno = /^\d{10}$/; 
    if(phone.match(phoneno))  
          {  
        return true;  
          }  
        else  
          {  
          alert("enter valid phone number");  
          return false;  
          }
	
}


function adminhome(ev) {
	if(ev=="home"){
		document.getElementById('middle').innerHTML="<img src='images/f.png'>";
	}
	if(ev=="student"){
		if (window.XMLHttpRequest)
		{
		  xmlhttp1=new XMLHttpRequest();
		}
		else
		{
		  xmlhttp1=new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp1.onreadystatechange=function()
		{
		  if (xmlhttp1.readyState==4 && xmlhttp1.status==200)
		  {		    
		    	//alert(xmlhttp1.responseText)
		    	document.getElementById("middle").innerHTML=xmlhttp1.responseText;

		  }
		}
		//alert("regi.action?loginid="+t3+"&password="+t4+"&qualification="+t6+"&name="+t7+"&dob="+t8+"&email="+t9+"&phone="+t10)
		xmlhttp1.open("GET","viewstudents.jsp");	
		xmlhttp1.send();
	}
	if(ev=="dfaculty"){
		if (window.XMLHttpRequest)
		{
		  xmlhttp1=new XMLHttpRequest();
		}
		else
		{
		  xmlhttp1=new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp1.onreadystatechange=function()
		{
		  if (xmlhttp1.readyState==4 && xmlhttp1.status==200)
		  {		    
		    	//alert(xmlhttp1.responseText)
		    	document.getElementById("middle").innerHTML=xmlhttp1.responseText;

		  }
		}
		//alert("regi.action?loginid="+t3+"&password="+t4+"&qualification="+t6+"&name="+t7+"&dob="+t8+"&email="+t9+"&phone="+t10)
		xmlhttp1.open("GET","viewfaculty.jsp");	
		xmlhttp1.send();

	}
	if(ev=="efaculty"){
		if (window.XMLHttpRequest)
		{
		  xmlhttp1=new XMLHttpRequest();
		}
		else
		{
		  xmlhttp1=new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp1.onreadystatechange=function()
		{
		  if (xmlhttp1.readyState==4 && xmlhttp1.status==200)
		  {		    
		    	//alert(xmlhttp1.responseText)
		    	document.getElementById("middle").innerHTML=xmlhttp1.responseText;

		  }
		}
		//alert("regi.action?loginid="+t3+"&password="+t4+"&qualification="+t6+"&name="+t7+"&dob="+t8+"&email="+t9+"&phone="+t10)
		xmlhttp1.open("GET","editfaculty.jsp");	
		xmlhttp1.send();

	}

	if(ev=="faculty"){
		if (window.XMLHttpRequest)
		{
		  xmlhttp1=new XMLHttpRequest();
		}
		else
		{
		  xmlhttp1=new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp1.onreadystatechange=function()
		{
		  if (xmlhttp1.readyState==4 && xmlhttp1.status==200)
		  {		    
		    	//alert(xmlhttp1.responseText)
		    	document.getElementById("middle").innerHTML=xmlhttp1.responseText;

		  }
		}
		//alert("regi.action?loginid="+t3+"&password="+t4+"&qualification="+t6+"&name="+t7+"&dob="+t8+"&email="+t9+"&phone="+t10)
		xmlhttp1.open("GET","students.jsp");	
		xmlhttp1.send();

	}
	if(ev=="event"){
		if (window.XMLHttpRequest)
		{
		  xmlhttp1=new XMLHttpRequest();
		}
		else
		{
		  xmlhttp1=new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp1.onreadystatechange=function()
		{
		  if (xmlhttp1.readyState==4 && xmlhttp1.status==200){		    
		    	//alert(xmlhttp1.responseText)
		    	document.getElementById("middle").innerHTML=xmlhttp1.responseText;
		  }
		}
		//alert("regi.action?loginid="+t3+"&password="+t4+"&qualification="+t6+"&name="+t7+"&dob="+t8+"&email="+t9+"&phone="+t10)
		xmlhttp1.open("GET","eventname.jsp");	
		xmlhttp1.send();

	}
	if(ev=="about"){
		if (window.XMLHttpRequest)
		{
		  xmlhttp1=new XMLHttpRequest();
		}
		else
		{
		  xmlhttp1=new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp1.onreadystatechange=function()
		{
		  if (xmlhttp1.readyState==4 && xmlhttp1.status==200)
		  {		    
		    	//alert(xmlhttp1.responseText)
		    	document.getElementById("middle").innerHTML=xmlhttp1.responseText;

		  }
		}
		//alert("regi.action?loginid="+t3+"&password="+t4+"&qualification="+t6+"&name="+t7+"&dob="+t8+"&email="+t9+"&phone="+t10)
		xmlhttp1.open("GET","about.jsp");	
		xmlhttp1.send();}
	if(ev=="contact"){
		document.getElementById('middle').innerHTML="<br><br><br><br><br>Address: Deshmukhi,Pochampally,Yadadri-Bhuvanagiri District-508 284<br>Phone number:+91-84980-93080<br>Website: smecprincipal@stmarysgroup.com";
	}
}
function facultyhome(ev) {
	if(ev=="home"){
		document.getElementById('middle').innerHTML="<img src='images/f.png'>";
	}
	if(ev=="delete"){
		if (window.XMLHttpRequest)
		{
		  xmlhttp1=new XMLHttpRequest();
		}
		else
		{
		  xmlhttp1=new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp1.onreadystatechange=function()
		{
		  if (xmlhttp1.readyState==4 && xmlhttp1.status==200)
		  {		    
		    	//alert(xmlhttp1.responseText)
		    	document.getElementById("middle").innerHTML=xmlhttp1.responseText;

		  }
		}
		//alert("regi.action?loginid="+t3+"&password="+t4+"&qualification="+t6+"&name="+t7+"&dob="+t8+"&email="+t9+"&phone="+t10)
		xmlhttp1.open("GET","deleteevent.jsp");	
		xmlhttp1.send();

	}
	
	if(ev=="password"){
		if (window.XMLHttpRequest)
		{
		  xmlhttp1=new XMLHttpRequest();
		}
		else
		{
		  xmlhttp1=new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp1.onreadystatechange=function()
		{
		  if (xmlhttp1.readyState==4 && xmlhttp1.status==200)
		  {		    
		    	//alert(xmlhttp1.responseText)
		    	document.getElementById("middle").innerHTML=xmlhttp1.responseText;

		  }
		}
		//alert("regi.action?loginid="+t3+"&password="+t4+"&qualification="+t6+"&name="+t7+"&dob="+t8+"&email="+t9+"&phone="+t10)
		xmlhttp1.open("GET","changepassword.jsp");	
		xmlhttp1.send();

	}
	if(ev=="event"){
		if (window.XMLHttpRequest)
		{
		  xmlhttp1=new XMLHttpRequest();
		}
		else
		{
		  xmlhttp1=new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp1.onreadystatechange=function()
		{
		  if (xmlhttp1.readyState==4 && xmlhttp1.status==200){		    
		    	//alert(xmlhttp1.responseText)
		    	document.getElementById("middle").innerHTML=xmlhttp1.responseText;
		  }
		}
		//alert("regi.action?loginid="+t3+"&password="+t4+"&qualification="+t6+"&name="+t7+"&dob="+t8+"&email="+t9+"&phone="+t10)
		xmlhttp1.open("GET","eventname.jsp");	
		xmlhttp1.send();

	}
	if(ev=="about"){
		if (window.XMLHttpRequest)
		{
		  xmlhttp1=new XMLHttpRequest();
		}
		else
		{
		  xmlhttp1=new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp1.onreadystatechange=function()
		{
		  if (xmlhttp1.readyState==4 && xmlhttp1.status==200)
		  {		    
		    	//alert(xmlhttp1.responseText)
		    	document.getElementById("middle").innerHTML=xmlhttp1.responseText;

		  }
		}
		//alert("regi.action?loginid="+t3+"&password="+t4+"&qualification="+t6+"&name="+t7+"&dob="+t8+"&email="+t9+"&phone="+t10)
		xmlhttp1.open("GET","about.jsp");	
		xmlhttp1.send();}
	if(ev=="contact"){
		document.getElementById('middle').innerHTML="<br><br><br><br><br>Address: Parvathapur,Uppal,Hyderabad-39<br><br>Phone number:+91-40-27201001,27201006<br><br>Fax: 27208855<br><br>Website: www.atri.edu.in";
	}
}
function studentpage(ev) {
	if(ev=="home"){
		document.getElementById('middle').innerHTML="<img src='images/stu.png'>";
	}
	if(ev=="event"){
		if (window.XMLHttpRequest)
		{
		  xmlhttp1=new XMLHttpRequest();
		}
		else
		{
		  xmlhttp1=new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp1.onreadystatechange=function()
		{
		  if (xmlhttp1.readyState==4 && xmlhttp1.status==200){		    
		    	//alert(xmlhttp1.responseText)
		    	document.getElementById("middle").innerHTML=xmlhttp1.responseText;
		  }
		}
		//alert("regi.action?loginid="+t3+"&password="+t4+"&qualification="+t6+"&name="+t7+"&dob="+t8+"&email="+t9+"&phone="+t10)
		xmlhttp1.open("GET","eventname2.jsp");	
		xmlhttp1.send();

	}
	if(ev=="about"){
		if (window.XMLHttpRequest)
		{
		  xmlhttp1=new XMLHttpRequest();
		}
		else
		{
		  xmlhttp1=new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp1.onreadystatechange=function()
		{
		  if (xmlhttp1.readyState==4 && xmlhttp1.status==200)
		  {		    
		    	//alert(xmlhttp1.responseText)
		    	document.getElementById("middle").innerHTML=xmlhttp1.responseText;

		  }
		}
		//alert("regi.action?loginid="+t3+"&password="+t4+"&qualification="+t6+"&name="+t7+"&dob="+t8+"&email="+t9+"&phone="+t10)
		xmlhttp1.open("GET","about1.jsp");	
		xmlhttp1.send();}
	if(ev=="contact"){
		document.getElementById('middle').innerHTML="<br><br><br><br><br>Address: Parvathapur,Uppal,Hyderabad-39<br>Phone number:+91-40-27201001,27201006<br>Fax: 27208855<br>Website: www.atri.edu.in";
	}
	
}

function facultyreg() {
	var n1=document.streg.n1.value;
	var n2=document.streg.n2.value;
	var n3=document.streg.n3.value;
	var n4=document.streg.n4.value;
	var n5=document.streg.n5.value;
	var n6=document.streg.n6.value;
	var n7=document.streg.n7.value;
	var n8=document.streg.n8.value;
	var n9=document.streg.n9.value;
	if(!n1){
		alert("Enter Any value for Name");
		return false;
	}
	if(!n2){
		alert("Enter Any value for UserId");
		return false;
	}
	if(!n3){
		alert("Enter Any value for Password");
		return false;
	}
	if(!n4){
		alert("Enter Any value for Confirm Password");
		return false;
	}
	if(n3!=n4){
		alert("Password Doesn't Match");
		return false;
	}
	if(!n6){
		alert("Enter Any value for Age");
		return false;
	}	
	//alert(n7)
	if(!n7){
		alert("Enter Any value for Email Id");
		return false;
	}
	if(n7.indexOf("\\@")== -1){
		alert("Invalid Mail Id");
		return false;
	}
	if(n7.indexOf("com")== -1){
		alert("Invalid Mail Id");
		return false;
	}	
	if(!isNaN(n8)){
		alert("Enter Any value for phone");
		return false;
	}
	if(n8.length!=10){
		alert("Enter only 10 numbers");
		return false;
	}
	if(!n9){
		alert("Enter Any value for address");
		return false;
	}
}





