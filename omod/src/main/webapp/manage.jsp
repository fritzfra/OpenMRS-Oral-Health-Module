<%@ include file="/WEB-INF/template/include.jsp"%>
<%@ include file="/WEB-INF/template/header.jsp"%>

<%@ include file="template/localHeader.jsp"%>

<openmrs:htmlInclude file="/scripts/calendar/calendar.js" />
<html>
 <head>
</head>
<body>
	<p><b>Module Information</b></p>
	<p>This module is for oral health assessment. There are four sections to fill out for the examintaion of our partient: </p>
	<p>1.) Global information like patient name, date of birth, etc., which will be filled automatically if you access this form from them patient dashboard.</p>
	<p>2.) The oral mucosa, where you can record your observations and treatments for:</p>
	<ul type="square">
		<li>lips</li>
		<li>gum</li>
		<li>uvula</li>
		<li>soft palate</li>
		<li>hard palate</li>
		<li>tonsil</li>
		<li>tongue</li>
		<li>other notices</li>
	</ul>	
	<p>3.) other information like known disease, drugs and smoking</p>
	<p>4.) The dental status, where you you can record the status, treatment and psi for each tooth.</p>
	<p>Additionally you can calculate the numbet of needed treatments as well the DMFT in the summary section of this form.</p>
	<br/>
	<p>You can create a new form as well as save, edit and print forms. Oral health is very important for preventive medical care, because this information can minimize the risk of other illness.</p>
</body>
</html>

<%@ include file="/WEB-INF/template/footer.jsp"%>
