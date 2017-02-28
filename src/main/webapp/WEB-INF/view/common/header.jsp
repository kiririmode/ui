<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="n" uri="http://tis.co.jp/nablarch"%>
<%@ page session="false"%>

<nav class="navbar navbar-inverse navbar-fixed-top whole-width">
	<div class="container-fluid">
		<div class="navbar-left">
			<div class="navbar-brand">プロジェクト管理システム</div>
		</div>
		<ul class="nav navbar-nav navbar-right">
			<c:if test="${ !empty userContext }">
				<li><p class="navbar-text">
						<n:write name="userContext.kanjiName" />
					</p></li>
				<li><p class="navbar-text last-login">
						前回ログイン: <br />2017/06/05 23:23:23
					</p>
				<li><n:a href="/action/logout"
						cssClass="btn btn-default navbar-btn btn-logout">ログアウト</n:a></li>
			</c:if>
			<c:if test="${ empty userContext }">
				<n:a href="/action/login" cssClass="navbar-text">ログイン</n:a>
			</c:if>
		</ul>
	</div>
</nav>
