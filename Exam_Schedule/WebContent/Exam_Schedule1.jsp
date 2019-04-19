<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<%@ page import="java.sql.*"%>
<%
	ResultSet resultset = null;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Exam Schedule</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<style>
div.col-lg-6 {
	width: 100%;
	border-radius: 15px;
	background-color: #f2f2f2;
	padding: 50px;
	opacity: 0.8;
}

h3 {
	font-size: 36px;
}

button, input[type=text], input[type=email], input[type=number],input[type=date], select
	{
	width: 100%;
	padding: 12px 20px;
	margin: 8px;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

footer{
	position: fixed;
	left: 0;
    bottom: 0;
    text-align: center;
    width: 100%;
}

input[type=submit] {
	width: 15%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
	background-color: #373E4A;
	color: white;
}

input[type=submit]:hover {
	background-color: #739ee2;
}


.w3-bar .w3-button {
	padding: 16px;
}

div.ex {
	width: 50%;
	border-radius: 15px;
	background-color: #f2f2f2;
	padding: 50px;
	opacity: 0.8;
}

/* First image (Logo. Full height) */
body {
	min-height: 100%;
	background-color: #2d2423;
	background-image:
		url(https://images.unsplash.com/photo-1462536943532-57a629f6cc60?ixlib=rb-1.2.1&auto=format&fit=crop&w=1352&q=80);
	background-attachment: fixed;
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
	height: 100%;
	line-height: 1.8;
}
button{
	width: 60%;
	padding: 12px 20px;
	margin: 8px 0;
	color: white;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
	background-color: #bc513c;
}


.w3-win8-lime {
	color: #f9f6ef;
	background-color: #436a6d;
	opacity: 0.7;
	font-size: 20px;
}

/* Second image (Portfolio) */

/* Turn off parallax scrolling for tablets and phones */
@media only screen and (max-device-width: 1600px) {
	div.col-lg-6, body {
		background-attachment: scroll;
		min-height: 400px;
	}
}
</style>
</head>
<body>

	<div class="w3-top">
		<div class="w3-bar w3-white w3-card" id="myNavbar">
			<img src="icon.png" alt="HTML5 Icon"
				style="width: 190px; height: 60px;">
			<div class="w3-right w3-hide-small">
				<a href="#" class="w3-bar-item w3-button"><i
					class="fa fa-graduation-cap"></i>Student Registration</a> <a href="#"
					class="w3-bar-item w3-button"><i class="fa fa-user-circle-o"></i>
					Faculty Registration</a> <a href="#" class="w3-bar-item w3-button"><i
					class="fa fa-book"></i> Course</a> <a href="Fee2.jsp"
					class="w3-bar-item w3-button"><i class="fa fa-inr"></i>Fee
					Payment</a> <a href="" class="w3-bar-item w3-button"><i
					class=" fa fa-calendar"></i>Exam Schedule </a>
			</div>
			<a href="javascript:void(0)"
				class="w3-bar-item w3-button w3-right w3-hide-large w3-hide-medium"
				onclick="w3_open()"> <i class="fa fa-bars"></i>
			</a>
		</div>
	</div>


	<nav
		class="w3-sidebar w3-bar-block w3-black w3-card w3-animate-left w3-hide-medium w3-hide-large"
		style="display:none" id="mySidebar"> <a
		href="javascript:void(0)" onclick="w3_close()"
		class="w3-bar-item w3-button w3-large w3-padding-16">Close ×</a> <a
		href="#team" onclick="w3_close()" class="w3-bar-item w3-button">Student
		Registration</a> <a href="#work" onclick="w3_close()"
		class="w3-bar-item w3-button">Faculty Registration</a> <a
		href="#pricing" onclick="w3_close()" class="w3-bar-item w3-button">COURSE</a>
	<a href="#contact" onclick="w3_close()" class="w3-bar-item w3-button">Fee
		Payment</a> <a href="#about" onclick="w3_close()"
		class="w3-bar-item w3-button">ABOUT</a> </nav>
	<center>
		<header class="bgimg-1 w3-display-container " id="home"></header>
	</center>
	<div class="w3-display-left w3-text-white" style="padding: 48px">
	</div>
	<div class="w3-panel w3-win8-lime">
	<br>
		<center>
			<h1>Exam Schedule</h1>
		</center>
	</div>
	<br>
	<form action="Exam_Schedule.jsp" method="post">
	<div class="row">
		<div class="col-md-3"></div>
		<center>
		<div class="ex">
			<table  width="100%">

				<tr>
					<td style="text-align:center"><b>Course</b></td>
					<td style="text-align:center"><b>Semester</b></td>
					<td style="text-align:center"><b>Start Date</b></td>
					<td style="text-align:center"><b>End Date</b></td>
					<td style="text-align:center"><b>Delete</b></td>
					
				</tr>
				<%
					try {
						Class.forName("com.mysql.jdbc.Driver");

						String query = "select * from Exam_Schedule";
						Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/test?user=root&password=root");
						Statement stmt = conn.createStatement();
						ResultSet rs = stmt.executeQuery(query);
						int i = 0;
						while (rs.next()) {
				%>
				<tr>
					<td style="text-align:center"><%=rs.getString("Course")%></td>
					<td style="text-align:center"><%=rs.getString("Semester")%></td>
					<td style="text-align:center"><%=rs.getString("Start_Date")%></td>
					<td style="text-align:center"><%=rs.getString("End_Date")%></td>
					<td style="text-align:center"><a href="delete.jsp?Course=<%=rs.getString("Course")%>"><button
								type="button" class="delete">Delete</button></a></td>

				</tr>
				<%
					i++;
						}
				%>
			</table>

			<%--  <h3>Congratulations!!! Your details have been saved.</h3> --%>
			<%
				rs.close();
					stmt.close();
					conn.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			%>
		</div>
		</center>
		<div class="col-md-3"></div>
	</div>
	<center>
		<input type="submit" value="Back">
	</center>
</form>
	<br>
	<br>

	<footer class="w3-center w3-black w3-padding-50">
	<%--<div class="w3-xlarge w3-section">
		<i class="fa fa-facebook-official w3-hover-opacity"></i> <i
			class="fa fa-instagram w3-hover-opacity"></i> <i
			class="fa fa-snapchat w3-hover-opacity"></i> <i
			class="fa fa-pinterest-p w3-hover-opacity"></i> <i
			class="fa fa-twitter w3-hover-opacity"></i> <i
			class="fa fa-linkedin w3-hover-opacity"></i>
	</div> --%>
	<p>
		Powered by <a href="http://localhost:7070/MAIN_PROJECT/"
			title="Cognitive Education" target="_blank"
			class="w3-hover-text-green">Cognitive Education</a>
	</p>
	</footer>
	<script>
		// Modal Image Gallery
		function onClick(element) {
			document.getElementById("img01").src = element.src;
			document.getElementById("modal01").style.display = "block";
			var captionText = document.getElementById("caption");
			captionText.innerHTML = element.alt;
		}

		// Toggle between showing and hiding the sidebar when clicking the menu icon
		var mySidebar = document.getElementById("mySidebar");

		function w3_open() {
			if (mySidebar.style.display === 'block') {
				mySidebar.style.display = 'none';
			} else {
				mySidebar.style.display = 'block';
			}
		}

		// Close the sidebar with the close button
		function w3_close() {
			mySidebar.style.display = "none";
		}
	</script>
</body>
</html>
​
