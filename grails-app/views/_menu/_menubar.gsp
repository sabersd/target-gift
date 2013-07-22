<g:if test="${session.layout == null || session.layout == 'grid'}">
	<g:set var="menutype" value="nav nav-tabs" />
</g:if>
<g:elseif test="${session.layout == 'fluid'}">
	<g:set var="menutype" value="nav nav-tabs" />
</g:elseif>

<!-- position of menu: LTR (left-to-right, European) or RTL (right-to-left, Oriental) -->
<g:if test="${session.menuposition == 'right' && session.layout == 'grid'}">
	<g:set var="menuposition" value="pull-right" />
</g:if>
<g:elseif test="${session.menuposition == 'right' && session.layout == 'fluid'}">
	<g:set var="menuposition" value="tabbable tabs-right" /> <!-- pull-right -->
</g:elseif>
<g:elseif test="${session.layout == 'fluid'}">
	<g:set var="menuposition" value="tabbable tabs-left" /> <!-- pull-left -->
</g:elseif>
<g:else>
	<g:set var="menuposition" value="" />
</g:else>


<div class="${menuposition}" id="menu">

    <%--
    <ul class="${menutype}" data-role="listview" data-split-icon="gear" data-filter="true">
	
		<g:each status="i" var="c" in="${grailsApplication.controllerClasses.sort { it.logicalPropertyName } }">
			<li class="controller${params.controller == c.logicalPropertyName ? " active" : ""}">
				<g:link controller="${c.logicalPropertyName}" action="index">
					<g:message code="${c.logicalPropertyName}.label" default="${c.logicalPropertyName.capitalize()}"/>
				</g:link>
			</li>
		</g:each>
		
	</ul>
     --%>



    <ul data-filter="true" data-split-icon="gear" data-role="listview" class="nav nav-tabs">


        <li class="controller">
            <a href="/target-gift/_DemoPage/index">
                Home
            </a>
        </li>

        <li class="controller">
            <a href="/target-gift/">
                Items
            </a>
        </li>

        <li class="controller active">
            <a href="/target-gift/createAccount/index">
                Account
            </a>
        </li>

        <li class="controller">
            <a href="/target-gift/dbdoc">
                Templates
            </a>
        </li>

        <li class="controller">
        <a href="/target-gift/">
            Messages
        </a>
    </li>




    </ul>



</div>
