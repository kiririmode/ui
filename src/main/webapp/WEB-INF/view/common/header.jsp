<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="n" uri="http://tis.co.jp/nablarch" %>
<%@ page session="false" %>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<%-- javascripts --%>
<n:script type="text/javascript" src="/javascripts/lib/jquery-1.11.2.min.js"></n:script>
<n:script type="text/javascript" src="/javascripts/lib/jquery-ui.min.js"></n:script>
<n:script type="text/javascript" charset="UTF-8" src="/javascripts/lib/jquery-ui-datepicker-ja.js"></n:script>
<n:script type="text/javascript" charset="UTF-8" src="/javascripts/common.js"></n:script>

<%-- stylesheets --%>
<n:link rel="stylesheet" type="text/css" href="/stylesheets/project.css" />
<n:link rel="stylesheet" type="text/css" href="/stylesheets/jquery-ui.css" />

<%-- Bootstrap Core CSS --%>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<n:link rel="stylesheet" type="text/css" href="/stylesheets/common.css" />

<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <div class="navbar-brand">プロジェクト管理システム</div>
        </div>
        <div class="navbar-header navbar-right">
            <c:if test="${ !empty userContext }">
                <span class="navbar-text"><n:write name="userContext.kanjiName" /></span>
                <n:a href="/action/logout" cssClass="btn btn-default navbar-btn">ログアウト</n:a>
            </c:if>
            <c:if test="${ empty userContext }">
                <n:a href="/action/login" cssClass="navbar-text">ログイン</n:a>
            </c:if>
        </div>
    </div>
</nav>
