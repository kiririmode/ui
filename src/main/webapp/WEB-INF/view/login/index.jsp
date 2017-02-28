<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="n" uri="http://tis.co.jp/nablarch"%>
<%@ page session="false"%>

<!DOCTYPE html>
<html lang="ja">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<n:script type="text/javascript"
	src="/javascripts/lib/jquery-3.1.1.min.js"></n:script>
<n:script type="text/javascript" src="/javascripts/bootstrap.min.js"></n:script>

<n:link rel="stylesheet" type="text/css" href="/stylesheets/common.css" />
<n:link rel="stylesheet" type="text/css"
	href="/stylesheets/bootstrap.min.css" />

<title>ログイン</title>
</head>

<body>
	<div class="container-fluid">
		<n:include path="/WEB-INF/view/common/header.jsp" />

		<div class="page-header">
			<h2>ログイン</h2>
		</div>

		<div class="row">
			<span class="col-xs-offset-2 col-xs-8"> <n:form method="POST"
					cssClass="form-horizontal">
					<n:errors filter="global" cssClass="bg-danger" />
					<div class="form-group">
						<label for="loginId" class="col-xs-2 control-label">login
							Id</label>
						<div class="col-xs-10">
							<n:text id="loginId" name="loginId" cssClass="form-control"
								placeholder="login id" errorCss="has-error" />
						</div>
					</div>
					<div class="form-group">
						<label for="userPassword" class="col-xs-2 control-label">Password</label>
						<div class="col-xs-10">
							<n:password id="userPassword" name="userPassword"
								restoreValue="false" cssClass="form-control" placeholder="パスワード"
								autocomplete="off" errorCss="has-error" />
						</div>
					</div>
					<div class="form-group">
						<div class="col-xs-offset-2 col-sm-10">
							<n:button uri="/action/login" cssClass="btn btn-primary form-control"
								allowDoubleSubmission="false">ログイン</n:button>
						</div>
					</div>
				</n:form>
			</span> <span class="col-xs-2"> </span>
		</div>
	</div>

	<n:include path="/WEB-INF/view/common/footer.jsp" />
</body>
</html>
