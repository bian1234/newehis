<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>单表管理</title>
	<meta name="decorator" content="default"/>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#btnExport").click(function(){
				$(this).attr("disabled",true);
				top.$.jBox.confirm("确认要导出挂号数据吗？","系统提示",function(v,h,f){
					if(v=="ok"){
						$("#searchForm").attr("action","${ctx}/web/sicmedAskedStatistics/asked");
						$("#searchForm").submit();
						$("#searchForm").attr("action","${ctx}/user/web/sicmedCase/");
					}
				},{buttonsFocus:1});
				top.$('.jbox-body .jbox-icon').css('top','55px');
				$(this).attr("disabled",false);
			});
		});
		function page(n,s){
			$("#pageNo").val(n);
			$("#pageSize").val(s);
			$("#searchForm").submit();
        	return false;
        }
	</script>
</head>
<body>
	<ul class="nav nav-tabs">
		<li class="active"><a href="${ctx}/web/sicmedAskedStatistics/list">医嘱统计</a></li>
	</ul>
	<form:form id="searchForm" modelAttribute="sicmedCase" action="${ctx}/web/sicmedAskedStatistics/list" method="post" class="breadcrumb form-search">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<ul class="ul-form">
			<li><label>患者名字：</label>
				<form:input path="sicmedPatient.patientName" htmlEscape="false" maxlength="32" class="input-medium"/>
			</li>
			<li><label>患者编号：</label>
				<form:input path="sicmedPatient.patientNumber" htmlEscape="false" maxlength="32" class="input-medium"/>
			</li>
			<li><label>治疗医生：</label>
				<form:input path="createUser.userName" htmlEscape="false" maxlength="32" class="input-medium"/>
			</li>
			<li><label>医嘱类型：</label>
				<form:input path="sicmedAsked.sicmedAskedClass.askedCalss" htmlEscape="false" maxlength="32" class="input-medium"/>
			</li>
			<li><label>开始时间：</label>
				<input name="beginCreateDate" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate"
					value="<fmt:formatDate value="${sicmedCase.beginCreateDate}" pattern="yyyy-MM-dd HH:mm:ss"/>"
					onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',isShowClear:true});"/>
			</li>
			<li><label>结束时间：</label>
				<input name="endCreateDate" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate"
					value="<fmt:formatDate value="${sicmedCase.endCreateDate}" pattern="yyyy-MM-dd HH:mm:ss"/>"
					onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',isShowClear:true});"/>
			</li>
			<li><label style="color: red">共查询到${page.count}条</label></li>
			<li class="btns"><input id="btnSubmit" class="btn btn-primary" type="submit" value="查询"/>
					<input id="btnExport" class="btn btn-primary" type="button" value="导出"/></li>
			<li class="clearfix"></li>
		</ul>
	</form:form>
	<sys:message content="${message}"/>
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th>患者名字</th>
				<th>患者编号</th>
				<!-- <th>修改人(对应医生表)</th> -->
				<th>治疗医生</th>
				<th>医嘱类型</th>
				<th>医嘱详情</th>
				<th>创建时间</th>
				<th>备注</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="sicmedCase">
			<tr>
				<td>
					${sicmedCase.sicmedPatient.patientName}
				</td>
				<td>
					${sicmedCase.sicmedPatient.patientNumber}
				</td>
		<%-- 		<td>
					${sicmedCase.updateUser.userName}
				</td> --%>
				<td>
					${sicmedCase.createUser.userName}
				</td>
				<td>
					${sicmedCase.sicmedAsked.sicmedAskedClass.askedCalss}
				</td>
				<td>
					${sicmedCase.detailStr}
				</td>
				<td>
					<fmt:formatDate value="${sicmedCase.createDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<td>
					${sicmedCase.remarks}
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>