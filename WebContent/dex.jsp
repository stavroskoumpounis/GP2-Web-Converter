<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Group Project Assignment 2</title>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src=https://code.jquery.com/jquery-1.12.4.js></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="link.js" type="text/javascript"></script>
<style>
.largefont {
	font-family: "Trebuchet MS", Helvetica, sans-serif;
	color: #2323a5;
	font-size: 26px;
}

.midfont {
	font-family: "Trebuchet MS", Helvetica, sans-serif;
	text-align: center;
	font-size: 18px;
}

@
-webkit-keyframes colorSwapper { 0% {
	background-color: #955fad;
	background-image: -webkit-linear-gradient(#955fad, #da5b45);
	background-image: linear-gradient(#955fad, #da5b45);
}

50%
{
background-color
:
 
#da5b45
;

    
background-image
:
 
-webkit-linear-gradient
(
#da5b45
,
#955fad
);

    
background-image
:
 
linear-gradient
(
#da5b45
,
#955fad
);

  
}
100%
{
background-color
:
 
#955fad
;

    
background-image
:
 
-webkit-linear-gradient
(
#955fad
,
#da5b45
);

    
background-image
:
 
linear-gradient
(
#955fad
,
#da5b45
);

  
}
}
@
-moz-keyframes colorSwapper { 0% {
	background-color: #955fad;
	background-image: -webkit-linear-gradient(#955fad, #da5b45);
	background-image: linear-gradient(#955fad, #da5b45);
}

50%
{
background-color
:
 
#da5b45
;

    
background-image
:
 
-webkit-linear-gradient
(
#da5b45
,
#955fad
);

    
background-image
:
 
linear-gradient
(
#da5b45
,
#955fad
);

  
}
100%
{
background-color
:
 
#955fad
;

    
background-image
:
 
-webkit-linear-gradient
(
#955fad
,
#da5b45
);

    
background-image
:
 
linear-gradient
(
#955fad
,
#da5b45
);

  
}
}
@
keyframes colorSwapper { 0% {
	background-color: #955fad;
	background-image: -webkit-linear-gradient(#955fad, #da5b45);
	background-image: linear-gradient(#955fad, #da5b45);
}

50%
{
background-color
:
 
#da5b45
;

    
background-image
:
 
-webkit-linear-gradient
(
#da5b45
,
#955fad
);

    
background-image
:
 
linear-gradient
(
#da5b45
,
#955fad
);

  
}
100%
{
background-color
:
 
#955fad
;

    
background-image
:
 
-webkit-linear-gradient
(
#955fad
,
#da5b45
);

    
background-image
:
 
linear-gradient
(
#955fad
,
#da5b45
);

  
}
}
@
-webkit-keyframes solidColor { 0% {
	background-color: #955fad;
}

50%
{
background-color
:
 
#da5b45
;

  
}
100%
{
background-color
:
 
#955fad
;

  
}
}
@
-moz-keyframes solidColor { 0% {
	background-color: #955fad;
}

50%
{
background-color
:
 
#da5b45
;

  
}
100%
{
background-color
:
 
#955fad
;

  
}
}
@
keyframes solidColor { 0% {
	background-color: #955fad;
}

50%
{
background-color
:
 
#da5b45
;

  
}
100%
{
background-color
:
 
#955fad
;

  
}
}
html, body {
	height: 100%;
}

body {
	background: #222;
	color: #FFF;
}

.skewed-bg {
	background: #00B285;
	padding: 200px 0;
	-webkit-transform: skew(0deg, -10deg);
	-moz-transform: skew(0deg, -10deg);
	-ms-transform: skew(0deg, -10deg);
	-o-transform: skew(0deg, -10deg);
	transform: skew(0deg, -10deg);
	margin-top: -200px;
}

.skewed-bg .content {
	-webkit-transform: skew(0deg, 10deg);
	-moz-transform: skew(0deg, 10deg);
	-ms-transform: skew(0deg, 10deg);
	-o-transform: skew(0deg, 10deg);
	transform: skew(0deg, 10deg);
	text-align: center;
}

.skewed-bg .content .title {
	padding-top: 100px;
	font-weight: normal;
}

.skewed-bg .content .text {
	width: 60%;
	margin: 25px auto;
	color: #ccfff2;
}

.footer {
	text-align: right;
}

.footer .credits {
	text-align: right;
	color: #666;
}

.footer .credits .link {
	color: #00B285;
	text-decoration: none;
}
</style>
</head>

<body>

	<div class="skewed-bg">
		<div class="content">

			<br><br><br><br><br>
			
			<form name="inputform" id="jsp_userinputform">

				<input type="text" name="jsp_bindecnum" placeholder="binary to decimal" maxlength="8" pattern="[0-1]+"title="Only 1 and 0 are accepted">

				<input type="text" name="jsp_binhexanum" placeholder="binary to hexadecimal" maxlength="8" pattern="[0-1]+"title="Only 1 and 0 are accepted">
				<br>
				<br>
				<input type="submit" id="jsp_submitbutton" value="Convert">

			</form>
								<br><br><br> 
				 <span class="midfont" id="a"></span> 
				 <span class="largefont" id="BindecResponse"></span> 
				 				<br><br><br>
				 <span class="midfont" id="b"></span><span></span> 
				 <span class="largefont" id="BinhexaResponse"></span>
		</div>
	</div>
	<footer class="footer credits">
		<h2>Developed by Stavros Koumpounis</h2>
		<h4>Group Project Assignment 2</h4>
	</footer>
</body>