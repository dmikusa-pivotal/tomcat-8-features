<%@ page session="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<!--[if IE 8]> <html class="no-js lt-ie9" lang="en" > <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="en">
<!--<![endif]-->

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width">
	<title>Tomcat 8 Demos</title>
	<link rel="stylesheet" href="<c:url value="/css/foundation.css"/>">
	<script src="<c:url value="/js/vendor/custom.modernizr.js"/>"></script>
</head>
<body>
	<div class="row">
		<div class="large-12 columns">
			<h2>Tomcat 8 Demos</h2>
			<nav class="breadcrumbs" style="margin-bottom: 1em;">
			  <a href="<c:url value="/" />">Home</a>
			</nav>
		</div>
	</div>
	<div class="row">
		<div class="large-12 columns">
			<h3>Protocol Upgrade Demo</h3>
			<p>This section demonstrates the Protocol Upgrade feature of Tomcat 8 / Servlet 3.1.  This section does not have a web-based demo.  The 
				following instructions show how to run the terminal-based demo.</p>
		</div>
	</div>
	<div class="row">
		<div class="large-11 large-centered columns">
			<ol>
				<li>In a terminal, change directory to the location where you have downloaded the demo package.</li>
				<li>Run <code>mvn package</code>.</li>
				<li>Deploy the generated WAR file to your Tomcat 8 server.</li>
				<li>Run <code>mvn -q exec:java -Dexec.mainClass="com.pivotal.demos.upgrade.KnockKnockClient"</code>.</li>
				<li>The output should show the interaction between the client and the server, which are using the "knock-knock" 
					protocol defined in com.pivotal.demos.upgrade.KnockKnockUpgradeHandler.</li>
			</ol>
		</div>
	</div>

	<script>
		document.write('<script src='
				+ ('__proto__' in {} ? '<c:url value="/js/vendor/zepto"/>' : '<c:url value="/js/vendor/jquery"/>')
				+ '.js><\/script>')
	</script>

	<script src="<c:url value="/js/foundation.min.js"/>"></script>
	<script>
	    $(document).foundation();
  	</script>
</body>
</html>
