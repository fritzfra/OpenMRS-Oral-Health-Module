<spring:htmlEscape defaultHtmlEscape="true" />
<ul id="menu">
	<li class="first"><a
		href="${pageContext.request.contextPath}/admin"><spring:message
				code="admin.title.short" /></a></li>

	<li
		<c:if test='<%= request.getRequestURI().contains("/manage") %>'>class="active"</c:if>>
		<a
		href="${pageContext.request.contextPath}/module/oralhealthmodule/manage.form"><spring:message
				code="oralhealthmodule.manage" /></a>
	</li>
	<li
		<c:if test='<%= request.getRequestURI().contains("/addOralHealth") %>'>class="active"</c:if>>
		<a
		href="${pageContext.request.contextPath}/module/oralhealthmodule/addOralHealth.form"><spring:message
				code="oralhealthmodule.addOralHealth" /></a>
	</li>
	<li
		<c:if test='<%= request.getRequestURI().contains("/oralHealthList") %>'>class="active"</c:if>>
		<a
		href="${pageContext.request.contextPath}/module/oralhealthmodule/oralHealthList.form"><spring:message
				code="oralhealthmodule.oralHealthList" /></a>
	</li>
	
	<!-- Add further links here -->
</ul>
<h2>
	<spring:message code="oralhealthmodule.title" />
</h2>
