<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ include file="logincheck.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>ATRI Annual Calendar</title>
<meta name="keywords" content="free design template, download web templates, Crazy Website, XHTML, CSS" />
<meta name="description" content="Crazy - Free CSS Template, Free XHTML CSS Design Layout" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<link href="fullsize/fullsize.css" media="screen" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="fullsize/jquery.js"></script>
<script type="text/javascript" src="fullsize/jquery.fullsize.minified.js"></script>
<script language="javascript" type="text/javascript">
$(function(){
				$("div.templatemo_gallery img").fullsize();
			});
</script>
<script type="text/javascript" src="Functions.js" ></script>

<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<link href="css/jquery.ennui.contentslider.css" rel="stylesheet" type="text/css" media="screen,projection" />
<link rel="stylesheet" type="text/css" href="tabcontent.css" />
<script type="text/javascript" src="js/jquery.min.1.3.2.js"></script>
<script type="text/javascript" src="Functions.js"></script>
<%@ page import="java.sql.*" %>
<script type="text/javascript" src="js/tabcontent.js">
/***********************************************
* Tab Content script v2.2- © Dynamic Drive DHTML code library (www.dynamicdrive.com)
* This notice MUST stay intact for legal use
* Visit Dynamic Drive at http://www.dynamicdrive.com/ for full source code
***********************************************/
</script>

<script language="javascript" type="text/javascript">
function clearText(field)
{
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;
}

// Event Calendar
// copyright Stephen Chapman, 10th June 2006, 22nd January 2010

var tb = 't'; // top or bottom (t or b)
var headbg = '#2F4F4F';  // table heading background colour
var todaybg = '#00BFFF'; // current selected date background colour
var textclr = '#ffffff'; // text colour
var linkclr = '#ff9999';// link text colour
var noMessage =  '<h2>Important Notifications</h2>'; // message to display when no entry in array
var weekday= '#ffcc11';

var dA = new Array(); var x = 0;
// first 8 characters in ccyymmdd format for single date events
// first 8 characters in 0000mmdd format for every year events

<%
Class.forName("com.mysql.jdbc.Driver");
Connection con3=DriverManager.getConnection("jdbc:mysql://localhost:3306/eventcalender","root","root");
Statement stmt3=con3.createStatement();
ResultSet rs3=stmt3.executeQuery("select * from events");
String s1=null;
String[] s;
String msg=null;
while(rs3.next())
{
	s1=rs3.getString(3);
	//System.out.println("1");
	String DATE_FORMAT = "yyyy-MM-dd";
	SimpleDateFormat sdf = new SimpleDateFormat(DATE_FORMAT);
	
	Date d=sdf.parse(rs3.getString(3));
	 msg=rs3.getString(1);
	msg=msg+" On Date "+rs3.getString(3);

	int y=d.getYear();
	int m=d.getMonth();
	int dat=d.getDay();
	int y1=d.getYear();

	//my code
	String fdate=rs3.getString(3);	
	
     s=rs3.getString(3).split("-");
    
	System.out.println(s[0]);
	System.out.println(s[1]);
	
	//end my code
	%>

	var myDate = new Date(<%=y%>,<%=m%>,<%=dat%>);
	
	var v=('<%=s[0]%>'+""+'<%=s[1]%>'+""+'<%=s[2]%>');
	
	var vs=v+" <%=msg%>";
 	dA[x++]= vs;
	<%
}

%>

// permission is granted to use this javascript provided that the below code is not altered
var pageLoaded = 0; window.onload = function() {pageLoaded = 1;}
function loaded(i,f)
{
 	if (document.getElementById && document.getElementById(i) != null) f();
 	else if (!pageLoaded) setTimeout('loaded(\''+i+'\','+f+')',100);
}
function monthlength(month,year) 
{
//alert(month+":"+year);
var dd = new Date(year, month, 0);
//alert(dd);
//alert(dd.getDate());
return dd.getDate();
}
var moy = ['January','February','March','April','May','June','July','August','September','October','November','December'];
var today = new Date();
var selDate = today.getFullYear()+getmmdd(today.getMonth()+1,today.getDate());
function dispCal(yy,mm) 
{
	if (mm < 0 || mm > 12) 
	{
	//	alert('month must be between 1 and 12'); 
		return false;
		} 
	if (yy != 0 && (yy < 1901 || yy > 2100)) 
	{
		//alert('year must be after 1900 and before 2101');
		return false;
		}
	var a=0;
	var dow = ['Sun','Mon','Tue','Wed','Thu','Fri','Sat'];
    
	var calendar = new Date();  
	var today = calendar.getDate(); calendar.setDate(1); 
	if (yy > 1900) 
		calendar.setFullYear(yy); 
	if (mm > 0) 
		calendar.setMonth(mm-1); 
	var yy = year = calendar.getFullYear();
	var month = calendar.getMonth(); 
	calendar.setDate(today); 
	var weekday = calendar.getDay();
	var daysInMonth = monthlength(month+1,year); 
	var hilite_start = '<td width="30" style="background:' + todaybg + '" align="center"><b>'; 
	var td_start = '<td width="30" align="center" style="color:#ffffff">'; 
	var td_start1 = '<td width="30" align="center" style="color:#000000">'; 
	var cal = '<div id="cal"><div style="border:1pt solid red;width:238px"><table border="0" cellspacing="0" cellpadding="2" align="center"><tr><td colspan="7" style="background:' + headbg + '" align="center"><b>' + moy[month]  + ' ' + year + '<\/b><\/td><\/tr><tr>'; 
	for(dex=0; dex < 7; dex++) 
	{
		if(dex==0)
		cal += td_start + dow[dex] ;
	
		else
			cal += td_start1 + dow[dex] + '</td>';
     }
	cal += '<\/tr><tr>'; 
     var day2 = today; 
     
     for (dex = today; dex > 6; dex -=7) 
    	 day2 = dex; 
     weekday -= day2 - 1; 
    	 while (weekday < 0) 
    		 weekday += 7; 
    	 for(dex=0; dex < weekday; dex++) 
    		 cal += td_start + ' <\/td>'; 
    		 
    		 
    		 for(dex=1; dex <= daysInMonth; dex++) {
    			 if(weekday == 7) 
    			 {
    				 cal += '</tr><tr>'; 
    				 weekday = 0;
    			 }
    			 if(selDate==year+getmmdd(month+1,dex))
    	         cal += hilite_start +'<span '+clickDate(dex,month,year) + '>'+ dex + '<\/span><\/b><\/td>'; 
                else if(weekday)
                	{
                 cal += td_start1 + '<span '+clickDate(dex,month,year) + '>' + dex + '<\/span><\/td>'; 
                
                	}else 
                	cal += td_start + '<span '+clickDate(dex,month,year) + '>' + dex + '<\/span><\/td>'; 
                 weekday += 1;
    }
    		 
    		 for(dex=weekday; dex < 7; dex++) 
    			 cal += td_start + ' <\/td>';
    			 
    			 cal += '<\/tr><\/table><\/div>';
    			 if (document.getElementById)
    			 {
    				 var mmb = month; 
    				 mm = month + 1;
    				 var yya = yyb = yy; 
    				 if (mmb <1) {mmb += 12; yyb--;
    		     }
    		  var mma = month + 2; 
    		  if (mma > 12) 
    		  {
    			  mma -= 12; 
    			  yya++;
    		  }
    		  var yb = yy -1;
    		  var ya = yy +1; 
    		//  alert(mm);
    		  cal += '<table border="0" cellspacing="0" cellpadding="2" width="210"><tr><td><a href="#" onclick="if (cala = dispCal('+yb+','+mm+')) {document.getElementById(\'cal\').innerHTML = cala; return false;}"><<</a></td><td><a href="#" onclick="if (cala = dispCal('+yyb+','+mmb+')) {document.getElementById(\'cal\').innerHTML = cala; return false;}"><</a></td><td align="right"><a href="#" onclick="if (cala = dispCal('+yya+','+mma+')) {document.getElementById(\'cal\').innerHTML = cala; return false;}">></a></td><td align="right"><a href="#" onclick="if (cala = dispCal('+ya+','+mm+')) {document.getElementById(\'cal\').innerHTML = cala; return false;}">>></a></td></tr></table>';
    		  
    		  
    		  }
    	      else 
    	      {
    	    	  cal += '<div> </div>';
    	      }
    			 cal += '</div>'; 
    			 return cal;
	}

function start() 
{
	//alert('HI');
	var x = '<div id="calDate" style="border:1pt ;width:238px"><\/div>'; 
	var y = ''; 
	if (tb == 't') 
		y = x + dispCal(0,0); 
	else 
		y = dispCal(0,0) + x; 
	document.getElementById('calendar').innerHTML = y; 
	ev();
}
loaded('calendar',start);
function clickDate(day, month, year) 
{
	var ct = nextDate(year + getmmdd(month+1,day));if (ct == '') ct = nextDate('0000' + getmmdd(month+1,day));if (ct == '') return 'style=""'; else return 'style="cursor:pointer;color:'+linkclr+'" onclick="selDate = '+year+ getmmdd(month+1,day)+'; isDate(' + day + ',' + month + ',' + year + ');return false;"';}function isDate(dayVal,monthVal,yearVal) {var ct = nextDate(yearVal + getmmdd(monthVal+1,dayVal));if (ct == '') ct = nextDate('0000' + getmmdd(monthVal+1,dayVal));if (ct == '') ct = noMessage;document.getElementById('calDate').innerHTML =ct; return false;}function nextDate(yymmdd) {var x = dA.length;for (var i = 0; i < x; i++) {if (dA[i].substr(0,8) == yymmdd) return dA[i].substr(8);}return '';}function getmmdd(mm,dd) {return (mm > 9 ? '' + mm : '0' + mm) + (dd > 9 ? dd : '0' + dd);
}
function ev() 
{
	
	
	var ct = nextDate(selDate);
	if (ct == '') 
		ct = nextDate('0000' + selDate.substr(4));
	if (ct == '') 
		ct = noMessage; 
	document.getElementById('calDate').innerHTML =ct;
	//alert(document.getElementById('calDate').innerHTML);
}

</script>

    <script type="text/javascript">
            var mypets=new ddtabcontent("pettabs")
            mypets.setpersist(true)
            mypets.setselectedClassTarget("link")
            mypets.init(false)   
    </script>     


</head>
<body>
	<div id="templatemo_container">
    	<div id="templatemo_content_area">
        	<div id="templaetmo_left">
            	<div id="templatemo_logo_area">
                	<div id="templaetmo_logo">
                    
                    </div>
                    <div id="templaetmo_slogan">
                    	
                    </div>
                </div>
                
                <div class="templatemo_menu">
                	<ul>
						<li><a href="#" class="current" onclick="adminhome('home')">Home</a></li>
						<li><a href="#" onclick="adminhome('student')">Acc/Rej</a></li>						
						<li><a href="#" onclick="adminhome('faculty')">Add Faculty</a></li>						
						<li><a href="#" onclick="adminhome('efaculty')">Edit Faculty</a></li>				
						<li><a href="#" onclick="adminhome('dfaculty')">Delete Faculty</a></li>
						
						<li><a href="index.html">Logout</a></li>
					</ul>
                </div>
              
            </div><!-- End Of left -->
            
            <div id="templaetmo_right">
            	<div id="templaetmo_right_top">
                	<h1>St.Mary's Engineering College Annual Calendar</h1>
                
                	<div id="calendar" style="top: 120px;right: 40px;position: absolute;">
								<div id="calDate"
									style="border: 1pt solid #cccccc; width: 238px;color:#2F4F4F;position: absolute;top: 600px;right: 60px">
									20130629:<br> No event messages to display for today 
								</div>
								<div id="cal">
									<div id="cal">
										<div style="border: 1pt solid #cccccc; width: 238px;">
											<table border="0" cellspacing="0" cellpadding="2"
												align="center">
												<tbody>
													<tr>
														<td colspan="7" style="background: #cccccc" align="center"><b>June
																2018</b></td>
													</tr>
													<tr>
														<td width="30" align="center" >Sun</td>
														<td width="30" align="center">Mon</td>
														<td width="30" align="center">Tue</td>
														<td width="30" align="center">Wed</td>
														<td width="30" align="center">Thu</td>
														<td width="30" align="center">Fri</td>
														<td width="30" align="center">Sat</td>
													</tr>
													<tr>
														<td width="30" align="center" ></td>
														<td width="30" align="center"></td>
														<td width="30" align="center"></td>
														<td width="30" align="center"><span
															style="color: #000000">1</span></td>
														<td width="30" align="center"><span
															style="color: #000000">2</span></td>
														<td width="30" align="center"><span
															style="color: #000000">3</span></td>
														<td width="30" align="center"><span
															style="color: #000000">4</span></td>
													</tr>
													<tr>
														<td width="30" align="center" ><span
															style="color: #000000">5</span></td>
														<td width="30" align="center"><span
															style="color: #000000">6</span></td>
														<td width="30" align="center"><span
															style="color: #000000">7</span></td>
														<td width="30" align="center"><span
															style="color: #000000">8</span></td>
														<td width="30" align="center"><span
															style="color: #000000">9</span></td>
														<td width="30" align="center"><span
															style="color: #000000">10</span></td>
														<td width="30" align="center"><span
															style="color: #000000">11</span></td>
													</tr>
													<tr>
														<td width="30" align="center" style="color:white"><span
															style="color: #000000">12</span></td>
														<td width="30" align="center"><span
															style="color: #000000">13</span></td>
														<td width="30" align="center"><span
															style="color: #000000">14</span></td>
														<td width="30" align="center"><span
															style="color: #000000">15</span></td>
														<td width="30" align="center"><span
															style="color: #000000">16</span></td>
														<td width="30" align="center"><span
															style="color: #000000">17</span></td>
														<td width="30" align="center"><span
															style="color: #000000">18</span></td>
													</tr>
													<tr>
														<td width="30" align="center" style="color:white"><span
															style="color: #000000">19</span></td>
														<td width="30" align="center"><span
															style="color: #000000">20</span></td>
														<td width="30" align="center"><span
															style="color: #000000">21</span></td>
														<td width="30" align="center"><span
															style="color: #000000">22</span></td>
														<td width="30" align="center"><span
															style="color: #000000">23</span></td>
														<td width="30" align="center"><span
															style="color: #000000">24</span></td>
														<td width="30" align="center"><span
															style="color: #000000">25</span></td>
													</tr>
													<tr>
														<td width="30" align="center" style="color:white"><span
															style="color: #000000">26</span></td>
														<td width="30" align="center"><span
															style="color: #000000">27</span></td>
														<td width="30" align="center"><span
															style="color: #000000">28</span></td>
														<td width="30" align="center"><span
															style="color: #000000">29</span></td>
														<td width="30" align="center"><span
															style="color: #000000">30</span></td>
														<td width="30" align="center"></td>
														<td width="30" align="center"></td>
													</tr>
												</tbody>
											</table>
										</div>
										<table border="0" cellspacing="0" cellpadding="2" width="210">
											<tbody>
												<tr>
 													<td><a 
														href="http://javascript.about.com/library/blevent1.htm#"
 														onclick="if (cala = dispCal(2015,6)) {document.getElementById(&#39;cal&#39;).innerHTML = cala; return false;}">&lt;&lt;</a></td>
													<td><a
														href="http://javascript.about.com/library/blevent1.htm#"
														onclick="if (cala = dispCal(2016,5)) {document.getElementById(&#39;cal&#39;).innerHTML = cala; return false;}">&lt;</a></td>
													<td align="right"><a
														href="http://javascript.about.com/library/blevent1.htm#"
														onclick="if (cala = dispCal(2016,7)) {document.getElementById(&#39;cal&#39;).innerHTML = cala; return false;}">&gt;</a></td>
													<td align="right"><a
														href="http://javascript.about.com/library/blevent1.htm#"
														onclick="if (cala = dispCal(2017,6)) {document.getElementById(&#39;cal&#39;).innerHTML = cala; return false;}">&gt;&gt;</a></td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
                    
                    
                    
                    
                    
                        <!-- Site JavaScript -->
                        <script type="text/javascript" src="jquery.min.1.3.2.js"></script>
                        <script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
                        <script type="text/javascript" src="js/jquery.ennui.contentslider.js"></script>
                        <script type="text/javascript">
                                $(function() {
                                    $('#one').ContentSlider({
                                        width : '640x',
                                        height : '260px',
                                        speed : 800,
                                        easing : 'easeInOutBack'
                                    });
                                });
                            </script>
                        <script src="js/jquery.chili-2.2.js" type="text/javascript"></script>
                        <script src="js/chili/recipes.js" type="text/javascript"></script>
        		
         
           
        	<div class="cleaner"></div>

                	
                	
                </div>
                
                <div id="middle" style="top: 200px;position: absolute; left: 520px;"> <br></br>
            <br></br>
              
                       
			
			
			
                 Scheduled Events<br></br> <%
            ResultSet rs2=stmt3.executeQuery("select * from events"); 
            String name1=null,eno1=null,eno11=null,dat1=null;
            while(rs2.next()) {
            	name1=rs2.getString(1);
            	eno1=rs2.getString(2);
            	dat1=rs2.getString(3);
            	eno11=rs2.getString(4);%>
            	 Event:<%=name1 %> on <%=eno1 %> Time <%=eno11 %> Date<%=dat1 %><br></br>
            	 <%} %></div>
                <br></br>
                <% 
                Date myDate = new Date();
                String DATE_FORMAT = "yyyy-MM-dd";
            	SimpleDateFormat sdf = new SimpleDateFormat(DATE_FORMAT);
            	
            	String d=sdf.format(myDate);
            	
            	System.out.println(d);
                   ResultSet rs1=stmt3.executeQuery("select * from events where Ondate='"+d+"'");
int count=0;
String name=null,eno=null,eno12=null;
while(rs1.next())
{
	name=rs1.getString(1);
	eno=rs1.getString(2);
	eno12=rs1.getString(4);
	count++;
}
if(count==1)
{
	%>
	<marquee>Today Event:<%=name %> on <%=eno %> Time <%=eno12 %></marquee><% 
	
}
else
{%>
	<marquee>Today Their is no Event</marquee><% 
} %>
                   
                                   </div><!-- End Of right mid-->
               
         
			
			
			
                    
			</div><!-- End Of right-->
</div>

        </div>
    </div>
</body>
</html>