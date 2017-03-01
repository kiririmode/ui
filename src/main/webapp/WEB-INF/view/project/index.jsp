<%@page import="com.nablarch.example.app.web.common.code.ProjectType"%>
<%@page import="com.nablarch.example.app.web.common.code.ProjectSortKey"%>
<%@page import="com.nablarch.example.app.web.common.code.SortOrder"%>
<%@page import="com.nablarch.example.app.web.common.code.ProjectClass"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="n" uri="http://tis.co.jp/nablarch"%>
<%@ taglib prefix="app" tagdir="/WEB-INF/tags/listSearchResult"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head lang="ja">
<n:include path="/WEB-INF/view/common/head.jsp" />
<title>プロジェクト検索一覧画面</title>
</head>
<body class="whole-width">
	<n:include path="/WEB-INF/view/common/noscript.jsp" />
	<div class="container-fluid">
		<n:include path="/WEB-INF/view/common/header.jsp" />
		<div class="row">
			<n:include path="/WEB-INF/view/common/sidemenu.jsp" />
			<div class="pages col-xs-9">
				<div class="row">
					<div class="col-xs-12">
						<div class="panel panel-default">
							<div class="panel-heading">
								<p>
									プロジェクト検索一覧画面
									<n:a href="/action/project"
										cssClass="btn btn-sm btn-raised btn-primary pull-right">新規登録</n:a>
								</p>
							</div>
							<div class="panel-body">
								<div class="row">
									<div class="col-xs-10 col-xs-offset-1">
										<div class="panel panel-default">
											<div class="panel-body">
												<n:form method="GET" action="list">
													<!-- 入力フォームで送信しない条件を保持するため、hiddenパラメータとして持つ -->
													<n:plainHidden name="searchForm.projectStartDateBeginStr" />
													<n:plainHidden name="searchForm.projectStartDateEndStr" />
													<n:plainHidden name="searchForm.projectEndDateBeginStr" />
													<n:plainHidden name="searchForm.projectEndDateEndStr" />
													<n:plainHidden name="searchForm.sortKey" />
													<n:plainHidden name="searchForm.sortDir" />

													<div class="form-group">
														<p class="control-label">
															<strong>ランク</strong>
														</p>
														<c:forEach var="projectClass"
															items="<%=ProjectClass.values()%>">
															<div class="radio-inline">
																<n:radioButton
																		name="searchForm.projectClass"
																		value="${projectClass.code}" label="${projectClass.label}" disabled="true"/>

															</div>
														</c:forEach>
													</div>
													<div class="form-group">
														<label for="clientName" class="control-label">顧客名</label>
														<n:text id="clientId" name="searchForm.clientId" size="15"
															maxlength="10" cssClass="form-control" placeholder="顧客ID" />
														<n:text id="clientName" name="searchForm.clientName"
															size="15" maxlength="64" cssClass="form-control"
															placeholder="顧客名" />
													</div>
													<div class="form-group">
														<label for="projectName" class="control-label">プロジェクト名</label>
														<n:text id="projectName" name="searchForm.projectName"
															cssClass="form-control"
															errorCss="input-error form-control" placeholder="プロジェクト名" />
														<n:error errorCss="message-error"
															name="searchForm.projectName" />
													</div>
													<div align="center">
														<input type="submit" id="search" class="btn btn-primary"
															value="検索" />
													</div>
												</n:form>

											</div>
										</div>
									</div>
									<div class="col-xs-offset-1"></div>
								</div>

								<div class="row">
									<!-- 検索フォームでバリデーションエラーが発生していない場合だけ、検索結果を表示する。 -->
									<c:if test="${searchResult != null}">
										<div class="message-area margin-top">
											<n:errors filter="global" cssClass="message-error" />
										</div>
										<n:form method="GET" action="/action/project/list">

											<%-- 現在の検索結果の表示に使用した検索条件をパラメータとして持つURIを、
                                               変数としてpageスコープに登録する。
                                               この変数は、<app:listSearchResult>タグのページング用のURIとして使用される。--%>
											<c:url value="/action/project/list" var="uri" context="/">
												<c:param name="searchForm.clientId"
													value="${searchForm.clientId}" />
												<c:param name="searchForm.clientName"
													value="${searchForm.clientName}" />
												<c:param name="searchForm.projectName"
													value="${searchForm.projectName}" />
												<c:param name="searchForm.projectType"
													value="${searchForm.projectType}" />
												<c:forEach items="${searchForm.projectClass}"
													var="projectClass">
													<c:param name="searchForm.projectClass"
														value="${projectClass}" />
												</c:forEach>
												<c:param name="searchForm.projectStartDateBegin"
													value="${searchForm.projectStartDateBegin}" />
												<c:param name="searchForm.projectStartDateEnd"
													value="${searchForm.projectStartDateEnd}" />
												<c:param name="searchForm.projectEndDateBegin"
													value="${searchForm.projectEndDateBegin}" />
												<c:param name="searchForm.projectEndDateEnd"
													value="${searchForm.projectEndDateEnd}" />
												<c:param name="searchForm.sortKey"
													value="${searchForm.sortKey}" />
												<c:param name="searchForm.sortDir"
													value="${searchForm.sortDir}" />
											</c:url>
											<div class="sort-nav">
												<div style="float: left;">
													検索結果 <span class="label label-info"> <n:write
															name="searchResult.pagination.resultCount" />
													</span> 件
													<c:url value="/action/project/download" var="download_uri"
														context="/">
														<c:param name="searchForm.clientId"
															value="${searchForm.clientId}" />
														<c:param name="searchForm.clientName"
															value="${searchForm.clientName}" />
														<c:param name="searchForm.projectName"
															value="${searchForm.projectName}" />
														<c:param name="searchForm.projectType"
															value="${searchForm.projectType}" />
														<c:forEach items="${searchForm.projectClass}"
															var="projectClass">
															<c:param name="searchForm.projectClass"
																value="${projectClass}" />
														</c:forEach>
														<c:param name="searchForm.projectStartDateBegin"
															value="${searchForm.projectStartDateBegin}" />
														<c:param name="searchForm.projectStartDateEnd"
															value="${searchForm.projectStartDateEnd}" />
														<c:param name="searchForm.projectEndDateBegin"
															value="${searchForm.projectEndDateBegin}" />
														<c:param name="searchForm.projectEndDateEnd"
															value="${searchForm.projectEndDateEnd}" />
														<c:param name="searchForm.sortKey"
															value="${searchForm.sortKey}" />
														<c:param name="searchForm.sortDir"
															value="${searchForm.sortDir}" />
														<c:param name="searchForm.pageNumber"
															value="${searchForm.pageNumber}" />
													</c:url>
													<n:a href="${download_uri}">
														<n:write name="label" />
														<span class="glyphicon glyphicon-download-alt"></span>
													</n:a>
												</div>

												<!-- ソート順を変更した際に現在の検索条件及びソート順を再送するためのパラメータ -->
												<n:plainHidden name="searchForm.clientId" />
												<n:plainHidden name="searchForm.clientName" />
												<n:plainHidden name="searchForm.projectName" />
												<n:plainHidden name="searchForm.projectType" />
												<n:plainHidden name="searchForm.projectClass" />
												<n:plainHidden name="searchForm.projectStartDateBegin" />
												<n:plainHidden name="searchForm.projectStartDateEnd" />
												<n:plainHidden name="searchForm.projectEndDateBegin" />
												<n:plainHidden name="searchForm.projectEndDateEnd" />
												<div class="form-inline">
													<n:set var="sortKeyList"
														value="<%=ProjectSortKey.values()%>" />
													<n:select id="sortKey" name="searchForm.sortKey"
														listName="sortKeyList" elementValueProperty="code"
														elementLabelProperty="label" elementLabelPattern="$LABEL$"
														cssClass="form-control" />
													<n:set var="sortOrderList" value="<%=SortOrder.values()%>" />
													<n:select id="sortDir" name="searchForm.sortDir"
														listName="sortOrderList" elementValueProperty="code"
														elementLabelProperty="label" elementLabelPattern="$LABEL$"
														cssClass="form-control" />
													<input id="firstPageNumber" type="hidden"
														name="searchForm.pageNumber" value="1" />
												</div>
											</div>
										</n:form>

										<!-- 検索結果 -->
										<app:listSearchResult currentPageNumberCss="bg-info"
											pagingCss="pagination" usePageNumberSubmit="true"
											prevSubmitLabel="«" nextSubmitLabel="»"
											prevSubmitCss="prev-page-link" nextSubmitCss="next-page-link"
											resultSetCss="table table-striped table-bordered table-condensed"
											listSearchInfoName="searchForm" searchUri="${uri}"
											resultSetName="searchResult" useResultCount="false">
											<jsp:attribute name="headerRowFragment">
                                                <tr>
                                                    <th>プロジェクトID</th>
                                                    <th>プロジェクト名</th>
                                                    <th>プロジェクト種別</th>
                                                    <th>開始日</th>
                                                    <th>終了日</th>
                                                </tr>
                                            </jsp:attribute>
											<jsp:attribute name="bodyRowFragment">
                                                <tr>
                                                    <td>
                                                        <!-- プロジェクトIDをパラメータとするリンクを表示する -->
                                                        <n:a
															href="/action/project/show/${row.projectId}">
                                                            <n:write
																name="row.projectId" />
                                                        </n:a>
                                                    </td>
                                                    <td>
                                                        <n:write
															name="row.projectName" />
                                                    </td>
                                                    <td>
                                                        <c:forEach
															var="projectType" items="<%=ProjectType.values()%>">
                                                            <c:if
																test="${projectType.code == row.projectType}">
                                                                <n:write
																	name="projectType.label" />
                                                            </c:if>
                                                        </c:forEach>
                                                    </td>
                                                    <td>
                                                        <n:write
															name="row.projectStartDate"
															valueFormat="exampleDateTime{yyyy/MM/dd}" />
                                                    </td>
                                                    <td>
                                                        <n:write
															name="row.projectEndDate"
															valueFormat="exampleDateTime{yyyy/MM/dd}" />
                                                    </td>
                                                </tr>
                                            </jsp:attribute>
										</app:listSearchResult>
									</c:if>
								</div>
							</div>
							<div class="panel-footer">
								<p>
									プロジェクト検索一覧画面
									<n:a href="/action/project"
										cssClass="btn btn-sm btn-raised btn-primary pull-right">新規登録</n:a>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<n:include path="/WEB-INF/view/common/noscript.jsp" />
	<n:script type="text/javascript">
            $(function() {
                saveListUrl();
            });
        </n:script>
</body>
</html>