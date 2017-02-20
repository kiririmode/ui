<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="n" uri="http://tis.co.jp/nablarch" %>
<%@ page session="false" %>

<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container-fluid">
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
