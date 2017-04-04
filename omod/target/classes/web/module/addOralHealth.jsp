<%@ include file="/WEB-INF/template/include.jsp"%>
<%@ include file="/WEB-INF/template/header.jsp"%>

<%@ include file="template/localHeader.jsp"%>
<%@ include file="template/style.css" %>

<openmrs:htmlInclude file="/moduleResources/oralhealthmodule/tooth11_41.png"/>
<openmrs:htmlInclude file="/moduleResources/oralhealthmodule/tooth12_42.png"/>
<openmrs:htmlInclude file="/moduleResources/oralhealthmodule/tooth13_43.png"/>
<openmrs:htmlInclude file="/moduleResources/oralhealthmodule/tooth14_44.png"/>
<openmrs:htmlInclude file="/moduleResources/oralhealthmodule/tooth15_45.png"/>
<openmrs:htmlInclude file="/moduleResources/oralhealthmodule/tooth16_46.png"/>
<openmrs:htmlInclude file="/moduleResources/oralhealthmodule/tooth17_47.png"/>
<openmrs:htmlInclude file="/moduleResources/oralhealthmodule/tooth18_48.png"/>
<openmrs:htmlInclude file="/moduleResources/oralhealthmodule/tooth21_31.png"/>
<openmrs:htmlInclude file="/moduleResources/oralhealthmodule/tooth22_32.png"/>
<openmrs:htmlInclude file="/moduleResources/oralhealthmodule/tooth23_33.png"/>
<openmrs:htmlInclude file="/moduleResources/oralhealthmodule/tooth24_34.png"/>
<openmrs:htmlInclude file="/moduleResources/oralhealthmodule/tooth25_35.png"/>
<openmrs:htmlInclude file="/moduleResources/oralhealthmodule/tooth26_36.png"/>
<openmrs:htmlInclude file="/moduleResources/oralhealthmodule/tooth27_37.png"/>
<openmrs:htmlInclude file="/moduleResources/oralhealthmodule/tooth28_38.png"/>

<openmrs:htmlInclude file="/scripts/calendar/calendar.js" />

<script type="text/javascript">

function calcSummary()
{
  var fillingsSum = 4;
  var extractionsSum = countExtractions();
  var rtcSum = countRTCs();
  var calculatedDMFT = calcDMFT();
  
  document.getElementById("NoOfFillings").innerHTML = fillingsSum;
}

function countFillings()
{
  var fillings = 4;
  
  
  return fillings;
}
function countExtractions()
{
  return 5;
}
function countRTCs()
{
  return 5;
}
function calcDMFT()
{
  return 5;
}


</script>

<html>
 <head>
</head>
<body>
<htmlform>
<style>@media print {
	input[type="text"] {border: none;}
	.content{overflow:hidden;
	margin-top:-8%;
	}
	img,.navList, #userBar, img.logo-reduced61, #htmlFormEntryBanner, #footer{display:none;}
	input[type=button] {display: none;}
	a.infobox{text-decoration:none; color:#000;}
</style>
<style>
table{border-collapse:collapse}
</style>

<form method="post" code="oralHealth.save">
<fieldset style="width:1115px;">
	<div class="oh_header">
	<spring:bind path="oralHealth.oralHealthId">
		<label for="oralHealthId"">ORAL HEALTH ID </label><br/>
	    	<input id="oralHealthId"" type="int" name="oralHealthId" value="${status.value}" size="30" readonly="readonly" /><br />
	</spring:bind>
	</div> 
</fieldset>

<fieldset style="width:1115px;">
<div class="left">
    <spring:bind path="oralHealth.patientName">
    <label for="patientName">PATIENT NAME </label><br/>
    <input id="patientName" type="text" name="patientName" value="${status.value}" size="30" /><br />
      <c:if test="${status.errorMessage != ''}"><span class="error">${status.errorMessage}</span></c:if>
    </spring:bind>
    <spring:bind path="oralHealth.patientBirthdate">
    <label for="patientBirthdate">BIRTHDATE </label><br/>
    <input id="patientBirthdate" type="text" name="patientBirthdate" value="${status.value}" size="30" onClick="showCalendar(this)"/><br />
      <c:if test="${status.errorMessage != ''}"><span class="error">${status.errorMessage}</span></c:if>
    </spring:bind>
    <spring:bind path="oralHealth.placeOfResidence">
    <label for="placeOfResidence">PLACE OF RESIDENCE </label><br/>
    <input id="placeOfResidence" type="text" name="placeOfResidence" value="${status.value}" size="30" />
    <c:if test="${status.errorMessage != ''}"><span class="error">${status.errorMessage}</span></c:if>
    </spring:bind>
 </div>
 
 <div class="middle">
    <spring:bind path="oralHealth.patientId">
    <label for="patientId">PATIENT ID </label><br/>
    <input id="patientId" type="int" name="patientId" value="${status.value}" size="30" readonly="readonly"/><br/>
    </spring:bind>
    <spring:bind path="oralHealth.examinationDate">
    <label for="examinationDate">EXAMINATION DATE </label><br/>
    <input id="examinationDate" type="text" name="examinationDate" value="${status.value}" size="30" onClick="showCalendar(this)"/><br/>
    </spring:bind>
 </div>
 
 <div class="right">
 	<spring:bind path="oralHealth.doctorName">
 	<label for="doctorName">DOCTOR NAME </label><br/>
    <input id="doctorName" type="text" name="doctorName" value="${status.value}" size="30" /><br />
    <label for="signature">SIGNATURE</label><br/><br/><br/>
    </spring:bind> 
    <hr>
 </div>
</fieldset>
<fieldset style="width:1115px;">
<div class="header">
	<table><tbody><tr><td style="width:706px;"><h4>ORAL MUCOSA</h4>
	</td><td><h4>OTHER INFORMATION</h4></td></tr></tbody></table>
<hr>
</div>
<div class="second_left">
	<label for="lips">LIPS</label><br/>
	<spring:bind path="oralHealth.lips">
	<a class="infobox" title="INFO: e.g. healthy, ill,..."><textarea name="lips" cols="30" rows="3">${status.value}</textarea></a><br/>
	</spring:bind>
	<label for="hard palate">HARD PALATE</label><br/>
	<spring:bind path="oralHealth.hardPalate">
	<a class="infobox" title="INFO: e.g. healthy, ill,..."><textarea name="hardPalate" cols="30" rows="3">${status.value}</textarea></a><br/>
	</spring:bind>
	<label for="soft palate">SOFT PALATE</label><br/>
	<spring:bind path="oralHealth.softPalate">
	<a class="infobox" title="INFO: e.g. healthy, ill,..."><textarea name="softPalate" cols="30" rows="3">${status.value}</textarea></a><br/>
	</spring:bind>
	<label for="uvula">UVULA</label><br/>
	<spring:bind path="oralHealth.uvula">
	<a class="infobox" title="INFO: e.g. healthy, ill,..."><textarea name="uvula" cols="30" rows="3">${status.value}</textarea></a><br/>
	</spring:bind>
</div>

<div class="second_middle">
	<label for="gum">GUM</label><br/>
	<spring:bind path="oralHealth.gum">
	<a class="infobox" title="INFO: e.g. healthy, ill,..."><textarea name="gum" cols="30" rows="3">${status.value}</textarea></a><br/>
	</spring:bind>
	<label for="tonsil">TONSIL</label><br/>
	<spring:bind path="oralHealth.tonsil">
	<a class="infobox" title="INFO: e.g. healthy, ill,..."><textarea name="tonsil" cols="30" rows="3">${status.value}</textarea></a><br/>
	</spring:bind>
	<label for="tongue">TONGUE</label><br/>
	<spring:bind path="oralHealth.tongue">
	<a class="infobox" title="INFO: e.g. healthy, ill,..."><textarea name="tongue" cols="30" rows="3">${status.value}</textarea></a><br/>
	</spring:bind>
	<label for="other notices">OTHER NOTICES</label>
	<spring:bind path="oralHealth.otherNotices">
	<textarea name="otherNotices" cols="30" rows="3">${status.value}</textarea>
	</spring:bind>
</div>

<div class="second_right">
	<label for="knownDiseases">KNOWN DISEASES</label><br/>
	<spring:bind path="oralHealth.knownDiseases">
	<textarea name="knownDiseases" cols="30" rows="3" maxlength="30">${status.value}</textarea><br/>
	</spring:bind>
	<label for="drugs">DRUGS</label><br/>
	<spring:bind path="oralHealth.drugs">
	<textarea name="drugs" cols="30" rows ="3" maxlength="30">${status.value}</textarea><br/>
	</spring:bind>
	<br/><label for="smoking">SMOKING</label><br/>
	<spring:bind path="oralHealth.smoking">
	<select name="${status.expression}" id="smoking">
	  <option value="No"
		  <c:if test="${status.value == 'No'}">selected="selected"</c:if>>No</option>
	  <option value="More than 15/d"
		  <c:if test="${status.value == 'More than 15/d'}">selected="selected"</c:if>>More than 15/d</option>
	  <option value="Less than 15/d"
		  <c:if test="${status.value == 'Less than 15/d'}">selected="selected"</c:if>>Less than 15/d</option>
	</select>
	</spring:bind>
	<br/><br/>
	<label for="foetorExOre">FOETOR EX ORE</label><br/>
	<spring:bind path="oralHealth.foetorExOre">
	<select name="${status.expression}" id="foetorExOre">
	  <option value="No"
		  <c:if test="${status.value == 'No'}">selected="selected"</c:if>>No</option>
	  <option value="Yes"
		  <c:if test="${status.value == 'Yes'}">selected="selected"</c:if>>Yes</option>
	</select>
	</spring:bind>
</div>
</fieldset>
<fieldset style="width:1115px;">
<div class="dental">
	<h4>DENTAL STATUS</h4>
	<table border="1" width="1050px;">
	 <tbody>
			<tr>
				<td>
					<a class="infobox" title="Periodontal Screening Index"><span style="font-size:10px;">PSI*</span></a>
				</td>
				<td colspan="5" style="text-align: center;">
					<span style="font-size:10px;"><a title="PSI for teeth 18 to 14: Code 0...Code 4">PSI 18-14_</a>
					<spring:bind path="oralHealth.psi_18_14">
					<select name="${status.expression}" id="psi_18_14">
					  <option value=0
						  <c:if test="${status.value == 0}">selected="selected"</c:if>>0</option>
					  <option value=1
						  <c:if test="${status.value == 1}">selected="selected"</c:if>>1</option>
					  <option value=2
						  <c:if test="${status.value == 2}">selected="selected"</c:if>>2</option>
					  <option value=3
						  <c:if test="${status.value == 3}">selected="selected"</c:if>>3</option>
					  <option value=4
						  <c:if test="${status.value == 4}">selected="selected"</c:if>>4</option>
					</select>
                   	</spring:bind>
                   	</span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td colspan="6" style="text-align: center;">
					<span style="font-size:10px;"><a title="PSI for teeth 13 to 23: Code 0...Code 4">PSI 13-23_</a>
					<spring:bind path="oralHealth.psi_13_23">
					<select name="${status.expression}" id="psi_13_23">
					  <option value=0
						  <c:if test="${status.value == 0}">selected="selected"</c:if>>0</option>
					  <option value=1
						  <c:if test="${status.value == 1}">selected="selected"</c:if>>1</option>
					  <option value=2
						  <c:if test="${status.value == 2}">selected="selected"</c:if>>2</option>
					  <option value=3
						  <c:if test="${status.value == 3}">selected="selected"</c:if>>3</option>
					  <option value=4
						  <c:if test="${status.value == 4}">selected="selected"</c:if>>4</option>
					</select>
					</spring:bind>
					</span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td colspan="5" style="text-align: center;">
					<span style="font-size:10px;"><a title="PSI for teeth 24 to 28: Code 0... Code 4">PSI 24-28_</a>
					<spring:bind path="oralHealth.psi_24_28">
					<select name="${status.expression}" id="psi_24_28">
					  <option value=0
						  <c:if test="${status.value == 0}">selected="selected"</c:if>>0</option>
					  <option value=1
						  <c:if test="${status.value == 1}">selected="selected"</c:if>>1</option>
					  <option value=2
						  <c:if test="${status.value == 2}">selected="selected"</c:if>>2</option>
					  <option value=3
						  <c:if test="${status.value == 3}">selected="selected"</c:if>>3</option>
					  <option value=4
						  <c:if test="${status.value == 4}">selected="selected"</c:if>>4</option>
					</select>
					</spring:bind>
					</span>
					<p><span style="font-size:10px;"></span></p>
				</td>
			</tr>
			<tr>
				<td>
					<p><span style="font-size:10px;">TREATMENT</span></p>
				</td>
				<td>
					<a title="Choose for treatment for tooth 18: N=None, EX=Extraction, RCT=Root Canal Treatment, F=Filling"><span style="font-size:10px;">
 					<spring:bind path="oralHealth.treatment_18">
					<select name="${status.expression}" id="treatment_18" onchange="calcSummary()">
					  <option value="N"
						  <c:if test="${status.value == 'N'}">selected="selected"</c:if>>N</option>
					  <option value="EX"
						  <c:if test="${status.value == 'EX'}">selected="selected"</c:if>>EX</option>
					  <option value="RCT"
						  <c:if test="${status.value == 'RCT'}">selected="selected"</c:if>>RCT</option>
					  <option value="F"
						  <c:if test="${status.value == 'F'}">selected="selected"</c:if>>F</option>
					</select>
					</span></a>
					</spring:bind>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;">
					<spring:bind path="oralHealth.treatment_17">
					<select name="${status.expression}" id="treatment_17" onchange="calcSummary()">
					  <option value="N"
						  <c:if test="${status.value == 'N'}">selected="selected"</c:if>>N</option>
					  <option value="EX"
						  <c:if test="${status.value == 'EX'}">selected="selected"</c:if>>EX</option>
					  <option value="RCT"
						  <c:if test="${status.value == 'RCT'}">selected="selected"</c:if>>RCT</option>
					  <option value="F"
						  <c:if test="${status.value == 'F'}">selected="selected"</c:if>>F</option>
					</select>					
					</span>
					</spring:bind>
				<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;">
					<spring:bind path="oralHealth.treatment_16">
					<select name="${status.expression}" id="treatment_16" onchange="calcSummary()">
					  <option value="N"
						  <c:if test="${status.value == 'N'}">selected="selected"</c:if>>N</option>
					  <option value="EX"
						  <c:if test="${status.value == 'EX'}">selected="selected"</c:if>>EX</option>
					  <option value="RCT"
						  <c:if test="${status.value == 'RCT'}">selected="selected"</c:if>>RCT</option>
					  <option value="F"
						  <c:if test="${status.value == 'F'}">selected="selected"</c:if>>F</option>
					</select>					
					</span>
					</spring:bind>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;">
					<spring:bind path="oralHealth.treatment_15">
					<select name="${status.expression}" id="treatment_15" onchange="calcSummary()">
					  <option value="N"
						  <c:if test="${status.value == 'N'}">selected="selected"</c:if>>N</option>
					  <option value="EX"
						  <c:if test="${status.value == 'EX'}">selected="selected"</c:if>>EX</option>
					  <option value="RCT"
						  <c:if test="${status.value == 'RCT'}">selected="selected"</c:if>>RCT</option>
					  <option value="F"
						  <c:if test="${status.value == 'F'}">selected="selected"</c:if>>F</option>
					</select>					
					</span>
					</spring:bind>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;">
					<spring:bind path="oralHealth.treatment_14">
					<select name="${status.expression}" id="treatment_14" onchange="calcSummary()">
					  <option value="N"
						  <c:if test="${status.value == 'N'}">selected="selected"</c:if>>N</option>
					  <option value="EX"
						  <c:if test="${status.value == 'EX'}">selected="selected"</c:if>>EX</option>
					  <option value="RCT"
						  <c:if test="${status.value == 'RCT'}">selected="selected"</c:if>>RCT</option>
					  <option value="F"
						  <c:if test="${status.value == 'F'}">selected="selected"</c:if>>F</option>
					</select>					
					</span>
					</spring:bind>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;">
					<spring:bind path="oralHealth.treatment_13">
					<select name="${status.expression}" id="treatment_13" onchange="calcSummary()">
					  <option value="N"
						  <c:if test="${status.value == 'N'}">selected="selected"</c:if>>N</option>
					  <option value="EX"
						  <c:if test="${status.value == 'EX'}">selected="selected"</c:if>>EX</option>
					  <option value="RCT"
						  <c:if test="${status.value == 'RCT'}">selected="selected"</c:if>>RCT</option>
					  <option value="F"
						  <c:if test="${status.value == 'F'}">selected="selected"</c:if>>F</option>
					</select>					
					</span>
					</spring:bind>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;">
					<spring:bind path="oralHealth.treatment_12">
					<select name="${status.expression}" id="treatment_12" onchange="calcSummary()">
					  <option value="N"
						  <c:if test="${status.value == 'N'}">selected="selected"</c:if>>N</option>
					  <option value="EX"
						  <c:if test="${status.value == 'EX'}">selected="selected"</c:if>>EX</option>
					  <option value="RCT"
						  <c:if test="${status.value == 'RCT'}">selected="selected"</c:if>>RCT</option>
					  <option value="F"
						  <c:if test="${status.value == 'F'}">selected="selected"</c:if>>F</option>
					</select>					
					</span>
					</spring:bind>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;">
					<spring:bind path="oralHealth.treatment_11">
					<select name="${status.expression}" id="treatment_11" onchange="calcSummary()">
					  <option value="N"
						  <c:if test="${status.value == 'N'}">selected="selected"</c:if>>N</option>
					  <option value="EX"
						  <c:if test="${status.value == 'EX'}">selected="selected"</c:if>>EX</option>
					  <option value="RCT"
						  <c:if test="${status.value == 'RCT'}">selected="selected"</c:if>>RCT</option>
					  <option value="F"
						  <c:if test="${status.value == 'F'}">selected="selected"</c:if>>F</option>
					</select>					
					</span>
					</spring:bind>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;">
					<spring:bind path="oralHealth.treatment_21">
					<select name="${status.expression}" id="treatment_21" onchange="calcSummary()">
					  <option value="N"
						  <c:if test="${status.value == 'N'}">selected="selected"</c:if>>N</option>
					  <option value="EX"
						  <c:if test="${status.value == 'EX'}">selected="selected"</c:if>>EX</option>
					  <option value="RCT"
						  <c:if test="${status.value == 'RCT'}">selected="selected"</c:if>>RCT</option>
					  <option value="F"
						  <c:if test="${status.value == 'F'}">selected="selected"</c:if>>F</option>
					</select>					
					</span>
					</spring:bind>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;">
					<spring:bind path="oralHealth.treatment_22">
					<select name="${status.expression}" id="treatment_22" onchange="calcSummary()">
					  <option value="N"
						  <c:if test="${status.value == 'N'}">selected="selected"</c:if>>N</option>
					  <option value="EX"
						  <c:if test="${status.value == 'EX'}">selected="selected"</c:if>>EX</option>
					  <option value="RCT"
						  <c:if test="${status.value == 'RCT'}">selected="selected"</c:if>>RCT</option>
					  <option value="F"
						  <c:if test="${status.value == 'F'}">selected="selected"</c:if>>F</option>
					</select>					
					</span>
					</spring:bind>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;">
					<spring:bind path="oralHealth.treatment_23">
					<select name="${status.expression}" id="treatment_23" onchange="calcSummary()">
					  <option value="N"
						  <c:if test="${status.value == 'N'}">selected="selected"</c:if>>N</option>
					  <option value="EX"
						  <c:if test="${status.value == 'EX'}">selected="selected"</c:if>>EX</option>
					  <option value="RCT"
						  <c:if test="${status.value == 'RCT'}">selected="selected"</c:if>>RCT</option>
					  <option value="F"
						  <c:if test="${status.value == 'F'}">selected="selected"</c:if>>F</option>
					</select>					
					</span>
					</spring:bind>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;">
					<spring:bind path="oralHealth.treatment_24">
					<select name="${status.expression}" id="treatment_24" onchange="calcSummary()">
					  <option value="N"
						  <c:if test="${status.value == 'N'}">selected="selected"</c:if>>N</option>
					  <option value="EX"
						  <c:if test="${status.value == 'EX'}">selected="selected"</c:if>>EX</option>
					  <option value="RCT"
						  <c:if test="${status.value == 'RCT'}">selected="selected"</c:if>>RCT</option>
					  <option value="F"
						  <c:if test="${status.value == 'F'}">selected="selected"</c:if>>F</option>
					</select>					
					</span>
					</spring:bind>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;">
					<spring:bind path="oralHealth.treatment_25">
					<select name="${status.expression}" id="treatment_25" onchange="calcSummary()">
					  <option value="N"
						  <c:if test="${status.value == 'N'}">selected="selected"</c:if>>N</option>
					  <option value="EX"
						  <c:if test="${status.value == 'EX'}">selected="selected"</c:if>>EX</option>
					  <option value="RCT"
						  <c:if test="${status.value == 'RCT'}">selected="selected"</c:if>>RCT</option>
					  <option value="F"
						  <c:if test="${status.value == 'F'}">selected="selected"</c:if>>F</option>
					</select>					
					</span>
					</spring:bind>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;">
					<spring:bind path="oralHealth.treatment_26">
					<select name="${status.expression}" id="treatment_26" onchange="calcSummary()">
					  <option value="N"
						  <c:if test="${status.value == 'N'}">selected="selected"</c:if>>N</option>
					  <option value="EX"
						  <c:if test="${status.value == 'EX'}">selected="selected"</c:if>>EX</option>
					  <option value="RCT"
						  <c:if test="${status.value == 'RCT'}">selected="selected"</c:if>>RCT</option>
					  <option value="F"
						  <c:if test="${status.value == 'F'}">selected="selected"</c:if>>F</option>
					</select>					
					</span>
					</spring:bind>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;">
					<spring:bind path="oralHealth.treatment_27">
					<select name="${status.expression}" id="treatment_27" onchange="calcSummary()">
					  <option value="N"
						  <c:if test="${status.value == 'N'}">selected="selected"</c:if>>N</option>
					  <option value="EX"
						  <c:if test="${status.value == 'EX'}">selected="selected"</c:if>>EX</option>
					  <option value="RCT"
						  <c:if test="${status.value == 'RCT'}">selected="selected"</c:if>>RCT</option>
					  <option value="F"
						  <c:if test="${status.value == 'F'}">selected="selected"</c:if>>F</option>
					</select>					
					</span>
					</spring:bind>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;">
					<spring:bind path="oralHealth.treatment_28">
					<select name="${status.expression}" id="treatment_28" onchange="calcSummary()">
					  <option value="N"
						  <c:if test="${status.value == 'N'}">selected="selected"</c:if>>N</option>
					  <option value="EX"
						  <c:if test="${status.value == 'EX'}">selected="selected"</c:if>>EX</option>
					  <option value="RCT"
						  <c:if test="${status.value == 'RCT'}">selected="selected"</c:if>>RCT</option>
					  <option value="F"
						  <c:if test="${status.value == 'F'}">selected="selected"</c:if>>F</option>
					</select>					
					</span>
					</spring:bind>
					<p><span style="font-size:10px;"></span></p>
				</td>
			</tr>
			<tr>
				<td>
					<p><span style="font-size:10px;">STATUS</span></p>
				</td>
				<td>
					<a title="Choose for tooth 18: H=Health, D=Decayed, F=Filled, M=Missing"><span style="font-size:10px;">
					<spring:bind path="oralHealth.status_18">
					<select name="${status.expression}" id="status_18">
					  <option value="H"
						  <c:if test="${status.value == 'H'}">selected="selected"</c:if>>H</option>
					  <option value="D"
						  <c:if test="${status.value == 'D'}">selected="selected"</c:if>>D</option>
					  <option value="F"
						  <c:if test="${status.value == 'F'}">selected="selected"</c:if>>F</option>
					  <option value="M"
						  <c:if test="${status.value == 'M'}">selected="selected"</c:if>>M</option>
					</select>
					</span></a>
					</spring:bind>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;">
					<spring:bind path="oralHealth.status_17">
					<select name="${status.expression}" id="status_17">
					  <option value="H"
						  <c:if test="${status.value == 'H'}">selected="selected"</c:if>>H</option>
					  <option value="D"
						  <c:if test="${status.value == 'D'}">selected="selected"</c:if>>D</option>
					  <option value="F"
						  <c:if test="${status.value == 'F'}">selected="selected"</c:if>>F</option>
					  <option value="M"
						  <c:if test="${status.value == 'M'}">selected="selected"</c:if>>M</option>
					</select>
					</spring:bind>
					</span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;">
					<spring:bind path="oralHealth.status_16">
					<select name="${status.expression}" id="status_16">
					  <option value="H"
						  <c:if test="${status.value == 'H'}">selected="selected"</c:if>>H</option>
					  <option value="D"
						  <c:if test="${status.value == 'D'}">selected="selected"</c:if>>D</option>
					  <option value="F"
						  <c:if test="${status.value == 'F'}">selected="selected"</c:if>>F</option>
					  <option value="M"
						  <c:if test="${status.value == 'M'}">selected="selected"</c:if>>M</option>
					</select>
					</spring:bind>
					</span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;">
					<spring:bind path="oralHealth.status_15">
					<select name="${status.expression}" id="status_15">
					  <option value="H"
						  <c:if test="${status.value == 'H'}">selected="selected"</c:if>>H</option>
					  <option value="D"
						  <c:if test="${status.value == 'D'}">selected="selected"</c:if>>D</option>
					  <option value="F"
						  <c:if test="${status.value == 'F'}">selected="selected"</c:if>>F</option>
					  <option value="M"
						  <c:if test="${status.value == 'M'}">selected="selected"</c:if>>M</option>
					</select>
					</spring:bind>
					</span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;">
					<spring:bind path="oralHealth.status_14">
					<select name="${status.expression}" id="status_14">
					  <option value="H"
						  <c:if test="${status.value == 'H'}">selected="selected"</c:if>>H</option>
					  <option value="D"
						  <c:if test="${status.value == 'D'}">selected="selected"</c:if>>D</option>
					  <option value="F"
						  <c:if test="${status.value == 'F'}">selected="selected"</c:if>>F</option>
					  <option value="M"
						  <c:if test="${status.value == 'M'}">selected="selected"</c:if>>M</option>
					</select>
					</spring:bind>
					</span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;">
					<spring:bind path="oralHealth.status_13">
					<select name="${status.expression}" id="status_13">
					  <option value="H"
						  <c:if test="${status.value == 'H'}">selected="selected"</c:if>>H</option>
					  <option value="D"
						  <c:if test="${status.value == 'D'}">selected="selected"</c:if>>D</option>
					  <option value="F"
						  <c:if test="${status.value == 'F'}">selected="selected"</c:if>>F</option>
					  <option value="M"
						  <c:if test="${status.value == 'M'}">selected="selected"</c:if>>M</option>
					</select>
					</spring:bind>
					</span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;">
					<spring:bind path="oralHealth.status_12">
					<select name="${status.expression}" id="status_12">
					  <option value="H"
						  <c:if test="${status.value == 'H'}">selected="selected"</c:if>>H</option>
					  <option value="D"
						  <c:if test="${status.value == 'D'}">selected="selected"</c:if>>D</option>
					  <option value="F"
						  <c:if test="${status.value == 'F'}">selected="selected"</c:if>>F</option>
					  <option value="M"
						  <c:if test="${status.value == 'M'}">selected="selected"</c:if>>M</option>
					</select>
					</spring:bind>
					</span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;">
					<spring:bind path="oralHealth.status_11">
					<select name="${status.expression}" id="status_11">
					  <option value="H"
						  <c:if test="${status.value == 'H'}">selected="selected"</c:if>>H</option>
					  <option value="D"
						  <c:if test="${status.value == 'D'}">selected="selected"</c:if>>D</option>
					  <option value="F"
						  <c:if test="${status.value == 'F'}">selected="selected"</c:if>>F</option>
					  <option value="M"
						  <c:if test="${status.value == 'M'}">selected="selected"</c:if>>M</option>
					</select>
					</spring:bind>
					</span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;">
					<spring:bind path="oralHealth.status_21">
					<select name="${status.expression}" id="status_21">
					  <option value="H"
						  <c:if test="${status.value == 'H'}">selected="selected"</c:if>>H</option>
					  <option value="D"
						  <c:if test="${status.value == 'D'}">selected="selected"</c:if>>D</option>
					  <option value="F"
						  <c:if test="${status.value == 'F'}">selected="selected"</c:if>>F</option>
					  <option value="M"
						  <c:if test="${status.value == 'M'}">selected="selected"</c:if>>M</option>
					</select>
					</spring:bind>
					</span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;">
					<spring:bind path="oralHealth.status_22">
					<select name="${status.expression}" id="status_22">
					  <option value="H"
						  <c:if test="${status.value == 'H'}">selected="selected"</c:if>>H</option>
					  <option value="D"
						  <c:if test="${status.value == 'D'}">selected="selected"</c:if>>D</option>
					  <option value="F"
						  <c:if test="${status.value == 'F'}">selected="selected"</c:if>>F</option>
					  <option value="M"
						  <c:if test="${status.value == 'M'}">selected="selected"</c:if>>M</option>
					</select>					
					</spring:bind>
					</span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;">
					<spring:bind path="oralHealth.status_23">
					<select name="${status.expression}" id="status_23">
					  <option value="H"
						  <c:if test="${status.value == 'H'}">selected="selected"</c:if>>H</option>
					  <option value="D"
						  <c:if test="${status.value == 'D'}">selected="selected"</c:if>>D</option>
					  <option value="F"
						  <c:if test="${status.value == 'F'}">selected="selected"</c:if>>F</option>
					  <option value="M"
						  <c:if test="${status.value == 'M'}">selected="selected"</c:if>>M</option>
					</select>					
					</spring:bind>
					</span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;">
					<spring:bind path="oralHealth.status_24">
					<select name="${status.expression}" id="status_24">
					  <option value="H"
						  <c:if test="${status.value == 'H'}">selected="selected"</c:if>>H</option>
					  <option value="D"
						  <c:if test="${status.value == 'D'}">selected="selected"</c:if>>D</option>
					  <option value="F"
						  <c:if test="${status.value == 'F'}">selected="selected"</c:if>>F</option>
					  <option value="M"
						  <c:if test="${status.value == 'M'}">selected="selected"</c:if>>M</option>
					</select>					
					</spring:bind>
					</span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;">
					<spring:bind path="oralHealth.status_25">
					<select name="${status.expression}" id="status_25">
					  <option value="H"
						  <c:if test="${status.value == 'H'}">selected="selected"</c:if>>H</option>
					  <option value="D"
						  <c:if test="${status.value == 'D'}">selected="selected"</c:if>>D</option>
					  <option value="F"
						  <c:if test="${status.value == 'F'}">selected="selected"</c:if>>F</option>
					  <option value="M"
						  <c:if test="${status.value == 'M'}">selected="selected"</c:if>>M</option>
					</select>					
					</spring:bind>
					</span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;">
					<spring:bind path="oralHealth.status_26">
					<select name="${status.expression}" id="status_26">
					  <option value="H"
						  <c:if test="${status.value == 'H'}">selected="selected"</c:if>>H</option>
					  <option value="D"
						  <c:if test="${status.value == 'D'}">selected="selected"</c:if>>D</option>
					  <option value="F"
						  <c:if test="${status.value == 'F'}">selected="selected"</c:if>>F</option>
					  <option value="M"
						  <c:if test="${status.value == 'M'}">selected="selected"</c:if>>M</option>
					</select>					
					</spring:bind>
					</span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;">
					<spring:bind path="oralHealth.status_27">
					<select name="${status.expression}" id="status_27">
					  <option value="H"
						  <c:if test="${status.value == 'H'}">selected="selected"</c:if>>H</option>
					  <option value="D"
						  <c:if test="${status.value == 'D'}">selected="selected"</c:if>>D</option>
					  <option value="F"
						  <c:if test="${status.value == 'F'}">selected="selected"</c:if>>F</option>
					  <option value="M"
						  <c:if test="${status.value == 'M'}">selected="selected"</c:if>>M</option>
					</select>					
					</spring:bind>
					</span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;">
					<spring:bind path="oralHealth.status_28">
					<select name="${status.expression}" id="status_28">
					  <option value="H"
						  <c:if test="${status.value == 'H'}">selected="selected"</c:if>>H</option>
					  <option value="D"
						  <c:if test="${status.value == 'D'}">selected="selected"</c:if>>D</option>
					  <option value="F"
						  <c:if test="${status.value == 'F'}">selected="selected"</c:if>>F</option>
					  <option value="M"
						  <c:if test="${status.value == 'M'}">selected="selected"</c:if>>M</option>
					</select>					
					</spring:bind>
					</span>
					<p><span style="font-size:10px;"></span></p>
				</td>
			</tr>
			<tr>
				<td><span style="font-size:10px;">DECIDUOUS TEETH</span></td>
				<td style="border-right-style:none;"></td>
				<td style="border-left-style:none;border-right-style:none;"></td>
				<td  style="border-left-style:none;"></td>
				<td style="text-align: center;">
				<spring:bind path="oralHealth.deciduos_55">
						<span style="font-size:10px;">55</span><br/>
						<span style="font-size:10px;">
						<input type="hidden" name="_${status.expression}">
						<input type="checkbox" name="${status.expression}" id="${status.expression}"
							<c:if test="${status.value == true}">checked</c:if> 
						/>
						</span>
				</spring:bind>				
				</td>
				<td style="text-align: center;">
				<spring:bind path="oralHealth.deciduos_54">
						<span style="font-size:10px;">54</span><br/>
						<span style="font-size:10px;">
						<input type="hidden" name="_${status.expression}">
						<input type="checkbox" name="${status.expression}" id="${status.expression}"
							<c:if test="${status.value == true}">checked</c:if> 
						/>
						</span>
				</spring:bind>	
				</td>
				<td style="text-align: center;">
				<spring:bind path="oralHealth.deciduos_53">
						<span style="font-size:10px;">53</span><br/>
						<span style="font-size:10px;">
						<input type="hidden" name="_${status.expression}">
						<input type="checkbox" name="${status.expression}" id="${status.expression}"
							<c:if test="${status.value == true}">checked</c:if> 
						/>
						</span>
				</spring:bind>	
				</td>
				<td style="text-align: center;">
				<spring:bind path="oralHealth.deciduos_52">
						<span style="font-size:10px;">52</span><br/>
						<span style="font-size:10px;">
						<input type="hidden" name="_${status.expression}">
						<input type="checkbox" name="${status.expression}" id="${status.expression}"
							<c:if test="${status.value == true}">checked</c:if> 
						/>
						</span>
				</spring:bind>	
				</td>
				<td style="text-align: center; border-right-width: medium; border-style:solid;">
				<spring:bind path="oralHealth.deciduos_51">
						<span style="font-size:10px;">51</span><br/>
						<span style="font-size:10px;">
						<input type="hidden" name="_${status.expression}">
						<input type="checkbox" name="${status.expression}" id="${status.expression}"
							<c:if test="${status.value == true}">checked</c:if> 
						/>
						</span>
				</spring:bind>	
				</td>
				<td style="text-align: center;">
				<spring:bind path="oralHealth.deciduos_61">
						<span style="font-size:10px;">61</span><br/>
						<span style="font-size:10px;">
						<input type="hidden" name="_${status.expression}">
						<input type="checkbox" name="${status.expression}" id="${status.expression}"
							<c:if test="${status.value == true}">checked</c:if> 
						/>
						</span>
				</spring:bind>					
				</td>
				<td style="text-align: center;">
				<spring:bind path="oralHealth.deciduos_62">
						<span style="font-size:10px;">62</span><br/>
						<span style="font-size:10px;">
						<input type="hidden" name="_${status.expression}">
						<input type="checkbox" name="${status.expression}" id="${status.expression}"
							<c:if test="${status.value == true}">checked</c:if> 
						/>
						</span>
				</spring:bind>	
				</td>
				<td style="text-align: center;">
				<spring:bind path="oralHealth.deciduos_63">
						<span style="font-size:10px;">63</span><br/>
						<span style="font-size:10px;">
						<input type="hidden" name="_${status.expression}">
						<input type="checkbox" name="${status.expression}" id="${status.expression}"
							<c:if test="${status.value == true}">checked</c:if> 
						/>
						</span>
				</spring:bind>	
				</td>
				<td style="text-align: center;">
				<spring:bind path="oralHealth.deciduos_64">
						<span style="font-size:10px;">64</span><br/>
						<span style="font-size:10px;">
						<input type="hidden" name="_${status.expression}">
						<input type="checkbox" name="${status.expression}" id="${status.expression}"
							<c:if test="${status.value == true}">checked</c:if> 
						/>
						</span>
				</spring:bind>	
				</td>
				<td style="text-align: center;">
				<spring:bind path="oralHealth.deciduos_65">
						<span style="font-size:10px;">65</span><br/>
						<span style="font-size:10px;">
						<input type="hidden" name="_${status.expression}">
						<input type="checkbox" name="${status.expression}" id="${status.expression}"
							<c:if test="${status.value == true}">checked</c:if> 
						/>
						</span>
				</spring:bind>	
				</td>
				<td style="border-right-color:#FFFFFF;"></td>
				<td style="border-right-color:#FFFFFF;"></td>
				<td>
				</td>
			</tr>
			<tr>
				<td rowspan="3"><span style="font-size:10px;">PERMANENT TEETH</span></td>
				<td style="text-align: center;">
					<span style="font-size:10px;">18</span></td>
				<td style="text-align: center;">
					<p style="text-align: center;"><span style="font-size:10px;">17</span></p>
				</td>
				<td style="text-align: center;">
					<p style="text-align: center;"><span style="font-size:10px;">16</span></p>
				</td>
				<td style="text-align: center;">
					<p style="text-align: center;"><span style="font-size:10px;">15</span></p>
				</td>
				<td style="text-align: center;">
					<p style="text-align: center;"><span style="font-size:10px;">14</span></p>
				</td>
				<td style="text-align: center;">
					<span style="font-size:10px;">13</span></td>
				<td style="text-align: center;">
					<span style="font-size:10px;">12</span></td>
				<td style="text-align: center; border-right-width:medium; border-style:solid">
					<span style="font-size:10px;">11</span></td>
				<td style="text-align: center;">
					<span style="font-size:10px;">21</span></td>
				<td style="text-align: center;">
					<span style="font-size:10px;">22</span></td>
				<td style="text-align: center;">
					<span style="font-size:10px;">23</span></td>
				<td style="text-align: center;">
					<span style="font-size:10px;">24</span></td>
				<td style="text-align: center;">
					<span style="font-size:10px;">25</span></td>
				<td style="text-align: center;">
					<span style="font-size:10px;">26</span></td>
				<td style="text-align: center;">
					<span style="font-size:10px;">27</span></td>
				<td style="text-align: center;">
					<span style="font-size:10px;">28</span></td>
			</tr>
			<tr>
				<td style="text-align: center;">
				<img class="teeth" src="${pageContext.request.contextPath}/moduleResources/oralhealthmodule/tooth18_48.png">
				</td>
				<td style="text-align: center;">
				<img class="teeth" src="${pageContext.request.contextPath}/moduleResources/oralhealthmodule/tooth17_47.png">
				</td>
				<td style="text-align: center;">
				<img class="teeth" src="${pageContext.request.contextPath}/moduleResources/oralhealthmodule/tooth16_46.png">
				</td>
				<td style="text-align: center;">
				<img class="teeth" src="${pageContext.request.contextPath}/moduleResources/oralhealthmodule/tooth15_45.png">
				</td>
				<td style="text-align: center;">
				<img class="teeth" src="${pageContext.request.contextPath}/moduleResources/oralhealthmodule/tooth14_44.png">
				</td>
				<td style="text-align: center;">
				<img class="teeth" src="${pageContext.request.contextPath}/moduleResources/oralhealthmodule/tooth13_43.png">
				</td>
				<td style="text-align: center;">
				<img class="teeth" src="${pageContext.request.contextPath}/moduleResources/oralhealthmodule/tooth12_42.png">
				</td>
				<td style="text-align: center; border-right-width:medium; border-style:solid">
				<img class="teeth" src="${pageContext.request.contextPath}/moduleResources/oralhealthmodule/tooth11_41.png">
				</td>
				<td style="text-align: center;">
				<img class="teeth" src="${pageContext.request.contextPath}/moduleResources/oralhealthmodule/tooth21_31.png">
				</td>
				<td style="text-align: center;">
				<img class="teeth" src="${pageContext.request.contextPath}/moduleResources/oralhealthmodule/tooth22_32.png">
				</td>
				<td style="text-align: center;">
				<img class="teeth" src="${pageContext.request.contextPath}/moduleResources/oralhealthmodule/tooth23_33.png">
				</td>
				<td style="text-align: center;">
				<img class="teeth" src="${pageContext.request.contextPath}/moduleResources/oralhealthmodule/tooth24_34.png">
				</td>
				<td style="text-align: center;">
				<img class="teeth" src="${pageContext.request.contextPath}/moduleResources/oralhealthmodule/tooth25_35.png">
				</td>
				<td style="text-align: center;">
				<img class="teeth" src="${pageContext.request.contextPath}/moduleResources/oralhealthmodule/tooth26_36.png">
				</td>
				<td style="text-align: center;">
				<img class="teeth" src="${pageContext.request.contextPath}/moduleResources/oralhealthmodule/tooth27_37.png">
				</td>
				<td style="text-align: center;">
				<img class="teeth" src="${pageContext.request.contextPath}/moduleResources/oralhealthmodule/tooth28_38.png">
				</td>
			</tr>
			<tr>
				<td style="text-align: center;">
					<span style="font-size:10px;">48</span></td>
				<td style="text-align: center;">
					<span style="font-size:10px;">47</span></td>
				<td style="text-align: center;">
					<span style="font-size:10px;">46</span></td>
				<td style="text-align: center;">
					<span style="font-size:10px;">45</span></td>
				<td style="text-align: center;">
					<span style="font-size:10px;">44</span></td>
				<td style="text-align: center;">
					<span style="font-size:10px;">43</span></td>
				<td>
					<p style="text-align: center;">
						<span style="font-size:10px;">42</span></p>
				</td>
				<td style="text-align: center; border-right-width: medium; border-style:solid;">
					<span style="font-size:10px;">41</span></td>
				<td style="text-align: center;">
					<span style="font-size:10px;">31</span></td>
				<td style="text-align: center;">
					<span style="font-size:10px;">32</span></td>
				<td style="text-align: center;">
					<span style="font-size:10px;">33</span></td>
				<td style="text-align: center;">
					<span style="font-size:10px;">34</span></td>
				<td style="text-align: center;">
					<span style="font-size:10px;">35</span></td>
				<td style="text-align: center;">
					<span style="font-size:10px;">36</span></td>
				<td style="text-align: center;">
					<span style="font-size:10px;">37</span></td>
				<td style="text-align: center;">
					<span style="font-size:10px;">38</span></td>
			</tr>
			<tr>
				<td>
					<span style="font-size:10px;">DECIDUOUS TEETH</span></td>
				<td style="border-right-style:none;">
				</td>
				<td style="border-left-style:none;border-right-style:none;">
				</td>
				<td  style="border-left-style:none;">
				</td>
				<td style="text-align: center;">
				<spring:bind path="oralHealth.deciduos_85">
						<span style="font-size:10px;">85</span><br/>
						<span style="font-size:10px;">
						<input type="hidden" name="_${status.expression}">
						<input type="checkbox" name="${status.expression}" id="${status.expression}"
							<c:if test="${status.value == true}">checked</c:if> 
						/>
						</span>
				</spring:bind>	
				</td>
				<td style="text-align: center;">
				<spring:bind path="oralHealth.deciduos_84">
						<span style="font-size:10px;">84</span><br/>
						<span style="font-size:10px;">
						<input type="hidden" name="_${status.expression}">
						<input type="checkbox" name="${status.expression}" id="${status.expression}"
							<c:if test="${status.value == true}">checked</c:if> 
						/>
						</span>
				</spring:bind>	
				</td>
				<td style="text-align: center;">
				<spring:bind path="oralHealth.deciduos_83">
						<span style="font-size:10px;">83</span><br/>
						<span style="font-size:10px;">
						<input type="hidden" name="_${status.expression}">
						<input type="checkbox" name="${status.expression}" id="${status.expression}"
							<c:if test="${status.value == true}">checked</c:if> 
						/>
						</span>
				</spring:bind>	
				</td>
				<td style="text-align: center;">
				<spring:bind path="oralHealth.deciduos_82">
						<span style="font-size:10px;">82</span><br/>
						<span style="font-size:10px;">
						<input type="hidden" name="_${status.expression}">
						<input type="checkbox" name="${status.expression}" id="${status.expression}"
							<c:if test="${status.value == true}">checked</c:if> 
						/>
						</span>
				</spring:bind>	
				</td>
				<td style="text-align: center; border-right-width:medium; border-style: solid">
				<spring:bind path="oralHealth.deciduos_81">
						<span style="font-size:10px;">81</span><br/>
						<span style="font-size:10px;">
						<input type="hidden" name="_${status.expression}">
						<input type="checkbox" name="${status.expression}" id="${status.expression}"
							<c:if test="${status.value == true}">checked</c:if> 
						/>
						</span>
				</spring:bind>	
				</td>
				<td style="text-align: center;">
				<spring:bind path="oralHealth.deciduos_71">
						<span style="font-size:10px;">71</span><br/>
						<span style="font-size:10px;">
						<input type="hidden" name="_${status.expression}">
						<input type="checkbox" name="${status.expression}" id="${status.expression}"
							<c:if test="${status.value == true}">checked</c:if> 
						/>
						</span>
				</spring:bind>	
				</td>
				<td style="text-align: center;">
				<spring:bind path="oralHealth.deciduos_72">
						<span style="font-size:10px;">72</span><br/>
						<span style="font-size:10px;">
						<input type="hidden" name="_${status.expression}">
						<input type="checkbox" name="${status.expression}" id="${status.expression}"
							<c:if test="${status.value == true}">checked</c:if> 
						/>
						</span>
				</spring:bind>	
				</td>
				<td style="text-align: center;">
				<spring:bind path="oralHealth.deciduos_73">
						<span style="font-size:10px;">73</span><br/>
						<span style="font-size:10px;">
						<input type="hidden" name="_${status.expression}">
						<input type="checkbox" name="${status.expression}" id="${status.expression}"
							<c:if test="${status.value == true}">checked</c:if> 
						/>
						</span>
				</spring:bind>	
				</td>
				<td style="text-align: center;">
				<spring:bind path="oralHealth.deciduos_74">
						<span style="font-size:10px;">74</span><br/>
						<span style="font-size:10px;">
						<input type="hidden" name="_${status.expression}">
						<input type="checkbox" name="${status.expression}" id="${status.expression}"
							<c:if test="${status.value == true}">checked</c:if> 
						/>
						</span>
				</spring:bind>	
				</td>
				<td style="text-align: center;">
				<spring:bind path="oralHealth.deciduos_75">
						<span style="font-size:10px;">75</span><br/>
						<span style="font-size:10px;">
						<input type="hidden" name="_${status.expression}">
						<input type="checkbox" name="${status.expression}" id="${status.expression}"
							<c:if test="${status.value == true}">checked</c:if> 
						/>
						</span>
				</spring:bind>	
				</td>
				<td style="border-right-style:none;">
				</td>
				<td style="border-left-style:none;border-right-style:none;">
				</td>
				<td  style="border-left-style:none;">
				</td>
			</tr>
			<tr>
				<td>
					<p><span style="font-size:10px;">STATUS</span></p>
				</td>
				<td>
					<span style="font-size:10px;">
					<a title="Choose for tooth 48: H=Health, D=Decayed, F=Filled, M=Missing">
					<spring:bind path="oralHealth.status_48">
					<select name="${status.expression}" id="status_48">
					  <option value="H"
						  <c:if test="${status.value == 'H'}">selected="selected"</c:if>>H</option>
					  <option value="D"
						  <c:if test="${status.value == 'D'}">selected="selected"</c:if>>D</option>
					  <option value="F"
						  <c:if test="${status.value == 'F'}">selected="selected"</c:if>>F</option>
					  <option value="M"
						  <c:if test="${status.value == 'M'}">selected="selected"</c:if>>M</option>
					</select>					
					</spring:bind>
					</a></span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;">
					<spring:bind path="oralHealth.status_47">
					<select name="${status.expression}" id="status_47">
					  <option value="H"
						  <c:if test="${status.value == 'H'}">selected="selected"</c:if>>H</option>
					  <option value="D"
						  <c:if test="${status.value == 'D'}">selected="selected"</c:if>>D</option>
					  <option value="F"
						  <c:if test="${status.value == 'F'}">selected="selected"</c:if>>F</option>
					  <option value="M"
						  <c:if test="${status.value == 'M'}">selected="selected"</c:if>>M</option>
					</select>					
					</spring:bind>
					</span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;">
					<spring:bind path="oralHealth.status_46">
					<select name="${status.expression}" id="status_46">
					  <option value="H"
						  <c:if test="${status.value == 'H'}">selected="selected"</c:if>>H</option>
					  <option value="D"
						  <c:if test="${status.value == 'D'}">selected="selected"</c:if>>D</option>
					  <option value="F"
						  <c:if test="${status.value == 'F'}">selected="selected"</c:if>>F</option>
					  <option value="M"
						  <c:if test="${status.value == 'M'}">selected="selected"</c:if>>M</option>
					</select>					
					</spring:bind>					
					</span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;">
					<spring:bind path="oralHealth.status_45">
					<select name="${status.expression}" id="status_45">
					  <option value="H"
						  <c:if test="${status.value == 'H'}">selected="selected"</c:if>>H</option>
					  <option value="D"
						  <c:if test="${status.value == 'D'}">selected="selected"</c:if>>D</option>
					  <option value="F"
						  <c:if test="${status.value == 'F'}">selected="selected"</c:if>>F</option>
					  <option value="M"
						  <c:if test="${status.value == 'M'}">selected="selected"</c:if>>M</option>
					</select>					
					</spring:bind>
					</span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;">
					<spring:bind path="oralHealth.status_44">
					<select name="${status.expression}" id="status_44">
					  <option value="H"
						  <c:if test="${status.value == 'H'}">selected="selected"</c:if>>H</option>
					  <option value="D"
						  <c:if test="${status.value == 'D'}">selected="selected"</c:if>>D</option>
					  <option value="F"
						  <c:if test="${status.value == 'F'}">selected="selected"</c:if>>F</option>
					  <option value="M"
						  <c:if test="${status.value == 'M'}">selected="selected"</c:if>>M</option>
					</select>					
					</spring:bind>					
					</span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;">
					<spring:bind path="oralHealth.status_43">
					<select name="${status.expression}" id="status_43">
					  <option value="H"
						  <c:if test="${status.value == 'H'}">selected="selected"</c:if>>H</option>
					  <option value="D"
						  <c:if test="${status.value == 'D'}">selected="selected"</c:if>>D</option>
					  <option value="F"
						  <c:if test="${status.value == 'F'}">selected="selected"</c:if>>F</option>
					  <option value="M"
						  <c:if test="${status.value == 'M'}">selected="selected"</c:if>>M</option>
					</select>					
					</spring:bind>					
					</span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;">
					<spring:bind path="oralHealth.status_42">
					<select name="${status.expression}" id="status_42">
					  <option value="H"
						  <c:if test="${status.value == 'H'}">selected="selected"</c:if>>H</option>
					  <option value="D"
						  <c:if test="${status.value == 'D'}">selected="selected"</c:if>>D</option>
					  <option value="F"
						  <c:if test="${status.value == 'F'}">selected="selected"</c:if>>F</option>
					  <option value="M"
						  <c:if test="${status.value == 'M'}">selected="selected"</c:if>>M</option>
					</select>					
					</spring:bind>					
					</span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;">
					<spring:bind path="oralHealth.status_41">
					<select name="${status.expression}" id="status_41">
					  <option value="H"
						  <c:if test="${status.value == 'H'}">selected="selected"</c:if>>H</option>
					  <option value="D"
						  <c:if test="${status.value == 'D'}">selected="selected"</c:if>>D</option>
					  <option value="F"
						  <c:if test="${status.value == 'F'}">selected="selected"</c:if>>F</option>
					  <option value="M"
						  <c:if test="${status.value == 'M'}">selected="selected"</c:if>>M</option>
					</select>					
					</spring:bind>					
					</span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;">
					<spring:bind path="oralHealth.status_31">
					<select name="${status.expression}" id="status_31">
					  <option value="H"
						  <c:if test="${status.value == 'H'}">selected="selected"</c:if>>H</option>
					  <option value="D"
						  <c:if test="${status.value == 'D'}">selected="selected"</c:if>>D</option>
					  <option value="F"
						  <c:if test="${status.value == 'F'}">selected="selected"</c:if>>F</option>
					  <option value="M"
						  <c:if test="${status.value == 'M'}">selected="selected"</c:if>>M</option>
					</select>					
					</spring:bind>					
					</span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;">
					<spring:bind path="oralHealth.status_32">
					<select name="${status.expression}" id="status_32">
					  <option value="H"
						  <c:if test="${status.value == 'H'}">selected="selected"</c:if>>H</option>
					  <option value="D"
						  <c:if test="${status.value == 'D'}">selected="selected"</c:if>>D</option>
					  <option value="F"
						  <c:if test="${status.value == 'F'}">selected="selected"</c:if>>F</option>
					  <option value="M"
						  <c:if test="${status.value == 'M'}">selected="selected"</c:if>>M</option>
					</select>					
					</spring:bind>					
					</span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;">
					<spring:bind path="oralHealth.status_33">
					<select name="${status.expression}" id="status_33">
					  <option value="H"
						  <c:if test="${status.value == 'H'}">selected="selected"</c:if>>H</option>
					  <option value="D"
						  <c:if test="${status.value == 'D'}">selected="selected"</c:if>>D</option>
					  <option value="F"
						  <c:if test="${status.value == 'F'}">selected="selected"</c:if>>F</option>
					  <option value="M"
						  <c:if test="${status.value == 'M'}">selected="selected"</c:if>>M</option>
					</select>					
					</spring:bind>					
					</span>
					<p><span style="font-size:10px;"></span></p>	
				</td>
				<td>
					<span style="font-size:10px;">
					<spring:bind path="oralHealth.status_34">
					<select name="${status.expression}" id="status_34">
					  <option value="H"
						  <c:if test="${status.value == 'H'}">selected="selected"</c:if>>H</option>
					  <option value="D"
						  <c:if test="${status.value == 'D'}">selected="selected"</c:if>>D</option>
					  <option value="F"
						  <c:if test="${status.value == 'F'}">selected="selected"</c:if>>F</option>
					  <option value="M"
						  <c:if test="${status.value == 'M'}">selected="selected"</c:if>>M</option>
					</select>					
					</spring:bind>					
					</span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;">
					<spring:bind path="oralHealth.status_35">
					<select name="${status.expression}" id="status_35">
					  <option value="H"
						  <c:if test="${status.value == 'H'}">selected="selected"</c:if>>H</option>
					  <option value="D"
						  <c:if test="${status.value == 'D'}">selected="selected"</c:if>>D</option>
					  <option value="F"
						  <c:if test="${status.value == 'F'}">selected="selected"</c:if>>F</option>
					  <option value="M"
						  <c:if test="${status.value == 'M'}">selected="selected"</c:if>>M</option>
					</select>					
					</spring:bind>					
					</span>
					<p>
						<span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;">
					<spring:bind path="oralHealth.status_36">
					<select name="${status.expression}" id="status_36">
					  <option value="H"
						  <c:if test="${status.value == 'H'}">selected="selected"</c:if>>H</option>
					  <option value="D"
						  <c:if test="${status.value == 'D'}">selected="selected"</c:if>>D</option>
					  <option value="F"
						  <c:if test="${status.value == 'F'}">selected="selected"</c:if>>F</option>
					  <option value="M"
						  <c:if test="${status.value == 'M'}">selected="selected"</c:if>>M</option>
					</select>					
					</spring:bind>					
					</span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;">
					<spring:bind path="oralHealth.status_37">
					<select name="${status.expression}" id="status_37">
					  <option value="H"
						  <c:if test="${status.value == 'H'}">selected="selected"</c:if>>H</option>
					  <option value="D"
						  <c:if test="${status.value == 'D'}">selected="selected"</c:if>>D</option>
					  <option value="F"
						  <c:if test="${status.value == 'F'}">selected="selected"</c:if>>F</option>
					  <option value="M"
						  <c:if test="${status.value == 'M'}">selected="selected"</c:if>>M</option>
					</select>					
					</spring:bind>					
					</span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;">
					<spring:bind path="oralHealth.status_38">
					<select name="${status.expression}" id="status_38">
					  <option value="H"
						  <c:if test="${status.value == 'H'}">selected="selected"</c:if>>H</option>
					  <option value="D"
						  <c:if test="${status.value == 'D'}">selected="selected"</c:if>>D</option>
					  <option value="F"
						  <c:if test="${status.value == 'F'}">selected="selected"</c:if>>F</option>
					  <option value="M"
						  <c:if test="${status.value == 'M'}">selected="selected"</c:if>>M</option>
					</select>					
					</spring:bind>					
					</span>
					<p><span style="font-size:10px;"></span></p>
				</td>
			</tr>
			<tr>
				<td>
					<p><span style="font-size:10px;">TREATMENT</span></p>
				</td>
				<td>
					<span style="font-size:10px;"><a title="Choose for treatment for tooth 48: N=None, EX=Extraction, RCT=Root Canal Treatment, F=Filling">
					<spring:bind path="oralHealth.treatment_48">
					<select name="${status.expression}" id="treatment_48">
					<option value="N"
						  <c:if test="${status.value == 'N'}">selected="selected"</c:if>>N</option>
					  <option value="EX"
						  <c:if test="${status.value == 'EX'}">selected="selected"</c:if>>EX</option>
					  <option value="RCT"
						  <c:if test="${status.value == 'RCT'}">selected="selected"</c:if>>RCT</option>
					  <option value="F"
						  <c:if test="${status.value == 'F'}">selected="selected"</c:if>>F</option>
					</select>
					</spring:bind>					
					</a></span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;">
					<spring:bind path="oralHealth.treatment_47">
					<select name="${status.expression}" id="treatment_47">
					  <option value="N"
						  <c:if test="${status.value == 'N'}">selected="selected"</c:if>>N</option>
					  <option value="EX"
						  <c:if test="${status.value == 'EX'}">selected="selected"</c:if>>EX</option>
					  <option value="RCT"
						  <c:if test="${status.value == 'RCT'}">selected="selected"</c:if>>RCT</option>
					  <option value="F"
						  <c:if test="${status.value == 'F'}">selected="selected"</c:if>>F</option>
					</select>					
					</spring:bind>					
					</span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;">
					<spring:bind path="oralHealth.treatment_46">					
					<select name="${status.expression}" id="treatment_46">
					  <option value="N"
						  <c:if test="${status.value == 'N'}">selected="selected"</c:if>>N</option>
					  <option value="EX"
						  <c:if test="${status.value == 'EX'}">selected="selected"</c:if>>EX</option>
					  <option value="RCT"
						  <c:if test="${status.value == 'RCT'}">selected="selected"</c:if>>RCT</option>
					  <option value="F"
						  <c:if test="${status.value == 'F'}">selected="selected"</c:if>>F</option>
					</select>					
					</spring:bind>					
					</span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;">
					<spring:bind path="oralHealth.treatment_45">		
					<select name="${status.expression}" id="treatment_45">
					  <option value="N"
						  <c:if test="${status.value == 'N'}">selected="selected"</c:if>>N</option>
					  <option value="EX"
						  <c:if test="${status.value == 'EX'}">selected="selected"</c:if>>EX</option>
					  <option value="RCT"
						  <c:if test="${status.value == 'RCT'}">selected="selected"</c:if>>RCT</option>
					  <option value="F"
						  <c:if test="${status.value == 'F'}">selected="selected"</c:if>>F</option>
					</select>					
					</spring:bind>					
					</span>
					<p>	<span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;">
					<spring:bind path="oralHealth.treatment_44">
					<select name="${status.expression}" id="treatment_44">
					  <option value="N"
						  <c:if test="${status.value == 'N'}">selected="selected"</c:if>>N</option>
					  <option value="EX"
						  <c:if test="${status.value == 'EX'}">selected="selected"</c:if>>EX</option>
					  <option value="RCT"
						  <c:if test="${status.value == 'RCT'}">selected="selected"</c:if>>RCT</option>
					  <option value="F"
						  <c:if test="${status.value == 'F'}">selected="selected"</c:if>>F</option>
					</select>					
					</spring:bind>					
					</span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;">
					<spring:bind path="oralHealth.treatment_43">
					<select name="${status.expression}" id="treatment_43">
					  <option value="N"
						  <c:if test="${status.value == 'N'}">selected="selected"</c:if>>N</option>
					  <option value="EX"
						  <c:if test="${status.value == 'EX'}">selected="selected"</c:if>>EX</option>
					  <option value="RCT"
						  <c:if test="${status.value == 'RCT'}">selected="selected"</c:if>>RCT</option>
					  <option value="F"
						  <c:if test="${status.value == 'F'}">selected="selected"</c:if>>F</option>
					</select>					
					</spring:bind>					
					</span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;">
					<spring:bind path="oralHealth.treatment_42">
					<select name="${status.expression}" id="treatment_42">
					  <option value="N"
						  <c:if test="${status.value == 'N'}">selected="selected"</c:if>>N</option>
					  <option value="EX"
						  <c:if test="${status.value == 'EX'}">selected="selected"</c:if>>EX</option>
					  <option value="RCT"
						  <c:if test="${status.value == 'RCT'}">selected="selected"</c:if>>RCT</option>
					  <option value="F"
						  <c:if test="${status.value == 'F'}">selected="selected"</c:if>>F</option>
					</select>					
					</spring:bind>   	                		
   	                		</span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;">
					<spring:bind path="oralHealth.treatment_41">					
 					<select name="${status.expression}" id="treatment_41">
					  <option value="N"
						  <c:if test="${status.value == 'N'}">selected="selected"</c:if>>N</option>
					  <option value="EX"
						  <c:if test="${status.value == 'EX'}">selected="selected"</c:if>>EX</option>
					  <option value="RCT"
						  <c:if test="${status.value == 'RCT'}">selected="selected"</c:if>>RCT</option>
					  <option value="F"
						  <c:if test="${status.value == 'F'}">selected="selected"</c:if>>F</option>
					</select>					
					</spring:bind> 	               		 	
  	               		 	</span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;">
					<spring:bind path="oralHealth.treatment_31">
					<select name="${status.expression}" id="treatment_31">
					  <option value="N"
						  <c:if test="${status.value == 'N'}">selected="selected"</c:if>>N</option>
					  <option value="EX"
						  <c:if test="${status.value == 'EX'}">selected="selected"</c:if>>EX</option>
					  <option value="RCT"
						  <c:if test="${status.value == 'RCT'}">selected="selected"</c:if>>RCT</option>
					  <option value="F"
						  <c:if test="${status.value == 'F'}">selected="selected"</c:if>>F</option>
					</select>					
					</spring:bind>					
					</span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;">
					<spring:bind path="oralHealth.treatment_32">					
					<select name="${status.expression}" id="treatment_32">
					  <option value="N"
						  <c:if test="${status.value == 'N'}">selected="selected"</c:if>>N</option>
					  <option value="EX"
						  <c:if test="${status.value == 'EX'}">selected="selected"</c:if>>EX</option>
					  <option value="RCT"
						  <c:if test="${status.value == 'RCT'}">selected="selected"</c:if>>RCT</option>
					  <option value="F"
						  <c:if test="${status.value == 'F'}">selected="selected"</c:if>>F</option>
					</select>					
					</spring:bind>   	                		
   	                		</span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;">
					<spring:bind path="oralHealth.treatment_33">
 					<select name="${status.expression}" id="treatment_33">
					  <option value="N"
						  <c:if test="${status.value == 'N'}">selected="selected"</c:if>>N</option>
					  <option value="EX"
						  <c:if test="${status.value == 'EX'}">selected="selected"</c:if>>EX</option>
					  <option value="RCT"
						  <c:if test="${status.value == 'RCT'}">selected="selected"</c:if>>RCT</option>
					  <option value="F"
						  <c:if test="${status.value == 'F'}">selected="selected"</c:if>>F</option>
					</select>					
					</spring:bind>  	               			
   	               			</span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;">
					<spring:bind path="oralHealth.treatment_34">
					<select name="${status.expression}" id="treatment_34">
					  <option value="N"
						  <c:if test="${status.value == 'N'}">selected="selected"</c:if>>N</option>
					  <option value="EX"
						  <c:if test="${status.value == 'EX'}">selected="selected"</c:if>>EX</option>
					  <option value="RCT"
						  <c:if test="${status.value == 'RCT'}">selected="selected"</c:if>>RCT</option>
					  <option value="F"
						  <c:if test="${status.value == 'F'}">selected="selected"</c:if>>F</option>
					</select>					
					</spring:bind>   	                		
   	                		</span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;">
					<spring:bind path="oralHealth.treatment_35">
					<select name="${status.expression}" id="treatment_35">
					  <option value="N"
						  <c:if test="${status.value == 'N'}">selected="selected"</c:if>>N</option>
					  <option value="EX"
						  <c:if test="${status.value == 'EX'}">selected="selected"</c:if>>EX</option>
					  <option value="RCT"
						  <c:if test="${status.value == 'RCT'}">selected="selected"</c:if>>RCT</option>
					  <option value="F"
						  <c:if test="${status.value == 'F'}">selected="selected"</c:if>>F</option>
					</select>					
					</spring:bind>   	               			
   	               			</span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;">
					<spring:bind path="oralHealth.treatment_36">
					<select name="${status.expression}" id="treatment_36">
					  <option value="N"
						  <c:if test="${status.value == 'N'}">selected="selected"</c:if>>N</option>
					  <option value="EX"
						  <c:if test="${status.value == 'EX'}">selected="selected"</c:if>>EX</option>
					  <option value="RCT"
						  <c:if test="${status.value == 'RCT'}">selected="selected"</c:if>>RCT</option>
					  <option value="F"
						  <c:if test="${status.value == 'F'}">selected="selected"</c:if>>F</option>
					</select>					
					</spring:bind>					
					</span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;">
					<spring:bind path="oralHealth.treatment_37">					
					<select name="${status.expression}" id="treatment_37">
					  <option value="N"
						  <c:if test="${status.value == 'N'}">selected="selected"</c:if>>N</option>
					  <option value="EX"
						  <c:if test="${status.value == 'EX'}">selected="selected"</c:if>>EX</option>
					  <option value="RCT"
						  <c:if test="${status.value == 'RCT'}">selected="selected"</c:if>>RCT</option>
					  <option value="F"
						  <c:if test="${status.value == 'F'}">selected="selected"</c:if>>F</option>
					</select>					
					</spring:bind>   	                		
   	                		</span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td>
					<span style="font-size:10px;">
					<spring:bind path="oralHealth.treatment_38">
					<select name="${status.expression}" id="treatment_38">
					  <option value="N"
						  <c:if test="${status.value == 'N'}">selected="selected"</c:if>>N</option>
					  <option value="EX"
						  <c:if test="${status.value == 'EX'}">selected="selected"</c:if>>EX</option>
					  <option value="RCT"
						  <c:if test="${status.value == 'RCT'}">selected="selected"</c:if>>RCT</option>
					  <option value="F"
						  <c:if test="${status.value == 'F'}">selected="selected"</c:if>>F</option>
					</select>					
					</spring:bind>   	                		
   	                		</span>
					<p><span style="font-size:10px;"></span></p>
				</td>
			</tr>
			<tr>
				<td><span style="font-size:10px;">PSI*</span></td>
				<td colspan="5" style="text-align: center;">
					<span style="font-size:10px;"><a title="PSI for teeth 48 to 44: Code 0...Code 4">PSI 48-44_</a>
					<spring:bind path="oralHealth.psi_48_44">
					<select name="${status.expression}" id="psi_48_44">
					  <option value=0
						  <c:if test="${status.value == 0}">selected="selected"</c:if>>0</option>
					  <option value=1
						  <c:if test="${status.value == 1}">selected="selected"</c:if>>1</option>
					  <option value=2
						  <c:if test="${status.value == 2}">selected="selected"</c:if>>2</option>
					  <option value=3
						  <c:if test="${status.value == 3}">selected="selected"</c:if>>3</option>
					  <option value=4
						  <c:if test="${status.value == 4}">selected="selected"</c:if>>4</option>
					</select>
					</spring:bind>
					</span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td colspan="6" style="text-align: center;">
					<span style="font-size:10px;"><a title="PSI for teeth 43 to 33: Code 0...Code 4">PSI 43-33_</a>
					<spring:bind path="oralHealth.psi_43_33">
					<select name="${status.expression}" id="psi_43_33">
					  <option value=0
						  <c:if test="${status.value == 0}">selected="selected"</c:if>>0</option>
					  <option value=1
						  <c:if test="${status.value == 1}">selected="selected"</c:if>>1</option>
					  <option value=2
						  <c:if test="${status.value == 2}">selected="selected"</c:if>>2</option>
					  <option value=3
						  <c:if test="${status.value == 3}">selected="selected"</c:if>>3</option>
					  <option value=4
						  <c:if test="${status.value == 4}">selected="selected"</c:if>>4</option>
					</select>
					</spring:bind>
					</span>
					<p><span style="font-size:10px;"></span></p>
				</td>
				<td colspan="5" style="text-align: center;">
					<span style="font-size:10px;"><a title="PSI for teeth 34 to 38: Code 0... Code 4">PSI 34-38_</a>
					<spring:bind path="oralHealth.psi_34_48">
					<select name="${status.expression}" id="psi_34_48">
					  <option value=0
						  <c:if test="${status.value == 0}">selected="selected"</c:if>>0</option>
					  <option value=1
						  <c:if test="${status.value == 1}">selected="selected"</c:if>>1</option>
					  <option value=2
						  <c:if test="${status.value == 2}">selected="selected"</c:if>>2</option>
					  <option value=3
						  <c:if test="${status.value == 3}">selected="selected"</c:if>>3</option>
					  <option value=4
						  <c:if test="${status.value == 4}">selected="selected"</c:if>>4</option>
					</select>
					</spring:bind>
					</span>
					<p><span style="font-size:10px;"></span></p>
				</td>
			</tr>
			<tr>
				<td style="border-top-width:medium; border-style: solid;" colspan="2"><span style="font-size:10px;"><h4>LEGEND</h4></span></td>
				<td style="border-top-width:medium; border-style: solid;" colspan="5"><span style="font-size:10px;"><h4>Status of tooth:</h4>
					<span style="font-size:10px;"> H=Healthy, D=Decayed, M=Missing, F=Filled </span></span></td>
				<td style="border-top-width:medium; border-style: solid;" colspan="5"><span style="font-size:10px;"><h4>Treatment for tooth:</h4>
					<span style="font-size:10px;"> N=None, EX=Extraction, RCT=Root Canal Treatment, F=Filling</span></span></td>
				<td style="border-top-width:medium; border-style: solid;" colspan="5"><span style="font-size:10px;"><h4>PSI</h4>
					<span style="font-size:10px;">Periodontal Screening Index=Code 0 ... Code 4</span></span></td>
			</tr>
		</tbody>
	</table>
</div>
</fieldset>
<fieldset style="width:1115px;">
	<div class="summary_header">
	<h4>TREATMENT SUMMARY</h4>
	<hr>
	</div> 
	<div class="summary_left" style="display:inline;">
	<spring:bind path="oralHealth.treatSumFilling">
	<label for="treatSumFilling" style="width:250px;display:inline-block">No. of fillings:</label>
	<%--<input id="treatSumFilling" type="int" name="treatSumFilling" value="${status.value}" size="30" readonly="readonly" /><br /> --%>
	<input id="NoOfFillings" type="int" name="treatSumFilling" size="30" readonly="readonly" /><br />
	</spring:bind>
	<spring:bind path="oralHealth.treatSumExtraction">
	<label for="treatSumExtraction" style="width:250px;display:inline-block">No. of extractions:</label>
	<input id="treatSumExtraction" type="int" name="treatSumExtraction" value="${status.value}" size="30" readonly="readonly" /><br />
	</spring:bind>
	<spring:bind path="oralHealth.treatSumRTC">
	<label for="treatSumRTC" style="width:250px;display:inline-block">No. of root canal treatments:</label>
	<input id="treatSumRTC" type="int" name="treatSumRTC" value="${status.value}" size="30" readonly="readonly" /><br />
	</spring:bind>
	</div> 
	<div class="summary_right">
	<spring:bind path="oralHealth.dmft">
	<label for="dmft" style="width:250px;display:inline-block">DMFT Index:</label>
	<input id="dmft" type="int" name="dmft" value="${status.value}" size="30" readonly="readonly" /><br />
	</spring:bind>
	<%--<spring:bind path="oralHealth.oralHealthId">
	<a href="calculateTreatmentSummary.form?id=${status.value}"><button type="button" id="calcSum">Calculate Summary</button></a>
	</spring:bind> --%>
	</div> 
</fieldset>
<fieldset style="width:1115px;">
	<div class="submit">
	<input type="submit" value="Submit" name="save">
	</div> 
</fieldset>

</form>
</htmlform>
</body>
</html>
<%@ include file="/WEB-INF/template/footer.jsp"%>
