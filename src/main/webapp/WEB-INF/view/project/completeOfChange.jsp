<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="n" uri="http://tis.co.jp/nablarch"%>
<%@ page session="false"%>

<!DOCTYPE html>
<html lang="ja">
<head>
<n:include path="/WEB-INF/view/common/head.jsp" />
<title>プロジェクト変更完了画面</title>
</head>
<body>
	<n:include path="/WEB-INF/view/common/noscript.jsp" />

	<div class="container-fluid">
		<n:include path="/WEB-INF/view/common/header.jsp" />
		<div class="row">
			<n:include path="/WEB-INF/view/common/sidemenu.jsp" />
			<div class="pages col-xs-9">
				<div class="row">
					<n:form>
						<div class="col-xs-12">
							<div class="panel panel-default">
								<div class="panel-heading">
									<p>
										プロジェクト変更完了画面 <span class="pull-right"> <n:a
												id="topReturnList" href="#"
												cssClass="btn btn-raised btn-success">次へ</n:a>
										</span>
									</p>
								</div>
								<div class="panel-body">更新が完了しました。</div>
								<div class="panel-footer">
									<p>
										プロジェクト更新完了画面 <span class="pull-right"> <n:a
												href="/action/project" cssClass="btn btn-raised btn-success">次へ</n:a>
										</span>
									</p>
								</div>
							</div>
						</div>
					</n:form>
				</div>
			</div>
		</div>
		<n:include path="/WEB-INF/view/common/footer.jsp" />
	</div>
</body>
</html>