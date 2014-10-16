<%@ page contentType="text/html;charset=UTF-8" %>

<!--
This is the Initiative Edit page where you view and edit the selected Initiative, I think we can eventually reuse this view but we may need 
a controller for each initiative(still unsure of this) 
-->

<html>
<head>
	<meta name="layout" content="main">
    <title>Initiative</title>    
    
    <style>
        canvas{
        }
    </style>
</head>
<body>
<br /> 
 	<p>Initiative</p>
 	
 		<form id="IniativePageForm" action="../confirm.html" method="get">
			<p class="fh1"></p>
			<p>
				<!-- name -->
				<label for="name">Name:</label>
				<input type="text" id="name" name="name" />
				<br /> 
				<!-- shortName-->
				<label for="shortName">Short Name:</label>
				<input type="text" id="shortName" name="shortName" />
				<br /> 
				<!-- Description -->
				<label for="description">Description:</label>
				<input type="text" id="description" name="description" />			
			</p>
			
			<p class="save">
				<input type="submit" value="Save" 
					onclick=""/>		
			</p>
		</form>
 	
 	<p> </p>
		<div id="Activity Links">
			<br />	
			<p class="sh2">Activity Links</p>
			<p> </p>
			<p><a href=""
			onclick="window.open(this.href); return false;">CP1.1 - Unify Regulatory Pressures</a></p>
			<br /> 
			<p><a href=""
			onclick="window.open(this.href); return false;">CP1.2 - Identify P11 obligations</a></p>
			<br /> 
			<p><a href=""
			onclick="window.open(this.href); return false;">CP1.3 - Create a Policy</a></p>
			<br /> 
			<p><a href=""
			onclick="window.open(this.href); return false;">CP2.1 - Identify P11 data Inventory</a></p>
			<br /> 
			<p><a href=""
			onclick="window.open(this.href); return false;">CP2.2 - Require Security sign-off for compliance related risk</a></p>
			<br /> 
			<p><a href=""
			onclick="window.open(this.href); return false;">CP2.3 - Implement and track controls for compliance</a></p>
			<br /> 
			<p><a href=""
			onclick="window.open(this.href); return false;">CP2.4 - Paper all vendor contracts with software security SLAs</a></p>
			<br /> 
			<p><a href=""
			onclick="window.open(this.href); return false;">CP2.5 - Promote executive awareness of compliance and privacy obligations</a></p>
			<br /> 
			<p><a href=""
			onclick="window.open(this.href); return false;">CP3.1 - Create regulator eye-candy</a></p>
			<br /> 
			<p><a href=""
			onclick="window.open(this.href); return false;">CP3.2 - Impose policy on vendors</a></p>
			<br /> 
			<p><a href=""
			onclick="window.open(this.href); return false;">CP3.3 - Drive feedback from SSDL data back to policy</a></p>
			<br /> 
		</div>
</body>
</html>