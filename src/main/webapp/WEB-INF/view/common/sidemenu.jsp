<%@page import="com.nablarch.example.app.web.common.code.ProjectClass"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="n" uri="http://tis.co.jp/nablarch"%>
<%@ page session="false"%>
<nav class="col-xs-3 navbar-default">
	<div class="panel panel-default panel-reference">
		<div class="panel-heading">リファレンス番号検索</div>
		<div class="panel-body">
			<n:form method="POST">
				<label for="referenceId" class="control-label">リファレンス番号</label>
				<div class="form-inline">
					<div class="form-group">
						<n:text id="referenceId" name="referenceId" cssClass="form-control" placeholder="ref. no" errorCss="has-error" size="10" />
					</div>
					<n:button uri="/action/login" cssClass="btn btn-sm btn-primary" allowDoubleSubmission="false">検索</n:button>
				</div>
			</n:form>
		</div>
	</div>

	<div class="panel panel-default">
		<div class="panel-heading">メニュー</div>
		<div class="panel-body nav">
			<ul class="nav">
				<li><n:a href="/action/project/index">プロジェクト検索</n:a></li>
				<li><n:a href="/action/projectBulk/index">プロジェクト一括更新</n:a></li>
				<li><n:a href="/action/projectUpload">プロジェクト一括登録</n:a></li>
			</ul>
		</div>
	</div>
</nav>