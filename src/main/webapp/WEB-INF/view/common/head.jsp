<%@ taglib prefix="n" uri="http://tis.co.jp/nablarch"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<n:script type="text/javascript"
	src="/javascripts/lib/jquery-3.1.1.min.js"></n:script>
<n:script type="text/javascript" src="/javascripts/bootstrap.min.js"></n:script>
<n:script type="text/javascript" src="/javascripts/lib/jquery-ui.min.js"></n:script>
<n:script type="text/javascript" src="/javascripts/lib/jquery-ui-datepicker-ja.js"></n:script>
<n:link rel="stylesheet" type="text/css" href="http://getbootstrap.com/examples/non-responsive/non-responsive.css" />

<n:link rel="stylesheet" type="text/css" href="/stylesheets/common.css" />
<n:link rel="stylesheet" type="text/css" href="/stylesheets/bootstrap.min.css" />
<n:link rel="stylesheet" type="text/css" href="/stylesheets/jquery-ui.css" />

<script>
  $(function() {
    $(".datepicker").datepicker({
    	"changeMonth": true,
		"changeYear": true,
		"showOtherMonths": true,
		"selectOtherMonths": true
    });
  });
</script>
<!--
<n:link rel="stylesheet" type="text/css" href="http://getbootstrap.com/examples/non-responsive/non-responsive.css" />
 -->
