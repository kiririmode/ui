<%@page import="com.nablarch.example.app.web.common.code.ProjectClass"%>
<%@page import="com.nablarch.example.app.web.common.code.ProjectType"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="n" uri="http://tis.co.jp/nablarch" %>
<%@ page session="false" %>

<!DOCTYPE html>
<html lang="ja">
  <head>
    <n:include path="/WEB-INF/view/common/head.jsp" />
    <title>プロジェクト詳細画面</title>
  </head>

  <body>
    <n:include path="/WEB-INF/view/common/noscript.jsp" />
    <div class="container">
      <n:include path="/WEB-INF/view/common/header.jsp" />
      <div class="row">
        <n:include path="/WEB-INF/view/common/sidemenu.jsp" />
        <div class="pages col-xs-9">
          <div class="row">
            <n:form useToken="true">
              <div class="col-xs-12">
                <div class="panel panel-default">
                  <div class="panel-heading">
                    <p>プロジェクト詳細画面
                      <span class="pull-right">
                        <n:a href="/action/project/edit/${projectId}" cssClass="btn btn-raised btn-success">変更</n:a>
                        <n:a id="topReturnList" href="#" cssClass="btn btn-raised btn-default">戻る</n:a>
                      </span>
                    </p>
                  </div>
                </div>

                <div class="panel-body">
                  <table class="table table-striped table-hover">
                    <tbody>
                      <tr>
                        <th class="width-250">
                          プロジェクト名
                        </th>
                        <td>
                          <n:write name="form.projectName"/>
                        </td>
                      </tr>
                      <tr>
                        <th>
                          プロジェクト種別
                        </th>
                        <td>
                          <c:forEach var="projectType" items="<%= ProjectType.values() %>">
                            <c:if test="${projectType.code == form.projectType}">
                              <n:write name="projectType.label" />
                            </c:if>
                          </c:forEach>
                        </td>
                      </tr>
                      <tr>
                        <th>
                          プロジェクト分類
                        </th>
                        <td>
                          <c:forEach var="projectClass" items="<%= ProjectClass.values() %>">
                            <c:if test="${projectClass.code == form.projectClass}">
                              <n:write name="projectClass.label" />
                            </c:if>
                          </c:forEach>
                        </td>
                      </tr>
                      <tr>
                        <th>
                          プロジェクトマネージャー
                        </th>
                        <td>
                          <n:write name="form.projectManager"/>
                        </td>
                      </tr>
                      <tr>
                        <th>
                          プロジェクトリーダー
                        </th>
                        <td>
                          <n:write name="form.projectLeader"/>
                        </td>
                      </tr>
                      <tr>
                        <th>
                          顧客名
                        </th>
                        <td>
                          <n:write name="form.clientId"/>
                          <n:write name="form.clientName"/>
                        </td>
                      </tr>
                      <tr>
                        <th>
                          プロジェクト開始日
                        </th>
                        <td>
                          <n:write name="form.projectStartDate" valueFormat="exampleDateTime{yyyy/MM/dd}"/>
                        </td>
                      </tr>
                      <tr>
                        <th>
                          プロジェクト終了日
                        </th>
                        <td>
                          <n:write name="form.projectEndDate" valueFormat="exampleDateTime{yyyy/MM/dd}"/>
                        </td>
                      </tr>
                      <tr>
                        <th>
                          備考
                        </th>
                        <td>
                          <n:write name="form.note"/>
                        </td>
                      </tr>
                      <tr>
                        <th>
                          売上高
                        </th>
                        <td>
                          <n:write name="form.sales" valueFormat="decimal{###,###,### 千円}" />
                        </td>
                      </tr>
                      <tr>
                        <th>
                          売上原価
                        </th>
                        <td>
                          <n:write name="form.costOfGoodsSold" valueFormat="decimal{###,###,### 千円}" />
                        </td>
                      </tr>
                      <tr>
                        <th>
                          販管費
                        </th>
                        <td>
                          <n:write name="form.sga" valueFormat="decimal{###,###,### 千円}" />
                        </td>
                      </tr>
                      <tr>
                        <th>
                          本社配賦
                        </th>
                        <td>
                          <n:write name="form.allocationOfCorpExpenses" valueFormat="decimal{###,###,### 千円}" />
                        </td>
                      </tr>
                      <tr>
                        <td>
                          売上総利益
                        </td>
                        <td>
                          <n:write name="form.grossProfit" valueFormat="decimal{###,###,### 千円}" />
                        </td>
                      </tr>
                      <tr>
                        <td>
                          配賦前利益
                        </td>
                        <td>
                          <n:write name="form.profitBeforeAllocation" valueFormat="decimal{###,###,### 千円}" />
                        </td>
                      </tr>
                      <tr>
                        <td>
                          配賦前利益率
                        </td>
                        <td>
                          <n:write name="form.profitRateBeforeAllocation" valueFormat="decimal{##0.0 %}" />
                        </td>
                      </tr>
                      <tr>
                        <td>
                          営業利益
                        </td>
                        <td>
                          <n:write name="form.operatingProfit" valueFormat="decimal{###,###,### 千円}" />
                        </td>
                      </tr>
                      <tr>
                        <td>
                          営業利益率
                        </td>
                        <td>
                          <n:write name="form.operatingProfitRate" valueFormat="decimal{##0.0 %}" />
                        </td>
                      </tr>
                    </tbody>
                  </table>

                </div>
                <div class="panel-footer">
                  <p>プロジェクト詳細画面
                    <span class="pull-right">
                      <n:a href="/action/project/edit/${projectId}" cssClass="btn btn-raised btn-success">変更</n:a>
                      <n:a id="topReturnList" href="#" cssClass="btn btn-raised btn-default">戻る</n:a>
                    </span>
                  </p>
                </div>
              </div>
            </n:form>
          </div>
        </div>
      </div>
    </div>
    <n:include path="/WEB-INF/view/common/footer.jsp" />
    <n:script type="text/javascript">
      $(function(){
      setListUrlTo("topReturnList");
      setListUrlTo("bottomReturnList");
      });
    </n:script>
  </body>
</html>
