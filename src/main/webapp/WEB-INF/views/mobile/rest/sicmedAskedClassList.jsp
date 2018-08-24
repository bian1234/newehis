<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>医嘱分类编码保存成功管理</title>
	<meta name="decorator" content="default"/>
	<script type="text/javascript">
		$(document).ready(function() {
			
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
		<li class="active"><a href="${ctx}/web/sicmedAskedClass">医嘱类别列表</a></li>
		<shiro:hasPermission name="rest:sicmedAskedClass:edit"><li><a href="${ctx}/web/sicmedAskedClass/form">医嘱类别添加</a></li></shiro:hasPermission>
	</ul>
	<form:form id="searchForm" modelAttribute="sicmedAskedClass" action="${ctx}/web/sicmedAskedClass/" method="post" class="breadcrumb form-search">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<ul class="ul-form">
		<%-- 	<li><label>医嘱分类编码表ID：</label>
				<form:input path="id" htmlEscape="false" maxlength="32" class="input-medium"/>
			</li>
			<li><label>医嘱类别编号：</label>
				<form:input path="classNumber" htmlEscape="false" maxlength="4" class="input-medium"/>
			</li> --%>
			<li><label>类别名称：</label>
				<form:input path="askedCalss" htmlEscape="false" maxlength="40" class="input-medium"/>
			</li>
			<li class="btns"><input id="btnSubmit" class="btn btn-primary" type="submit" value="查询"/></li>
			<li class="clearfix"></li>
		</ul>
	</form:form>
	<sys:message content="${message}"/>
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
			<!-- 	<th>医嘱分类编码表ID</th> -->
				<th>医嘱类别编号</th>
				<th>医嘱类别名称</th>
				<th>备注</th>
				<shiro:hasPermission name="rest:sicmedAskedClass:edit"><th>操作</th></shiro:hasPermission>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="sicmedAskedClass">
			<tr>
				<%-- <td><a href="${ctx}/web/sicmedAskedClass/form?id=${sicmedAskedClass.id}">
					${sicmedAskedClass.id}
				</a></td> --%>
				<td>
					${sicmedAskedClass.classNumber}
				</td>
				<td>
					${sicmedAskedClass.askedCalss}
				</td>
				<td>
					${sicmedAskedClass.remarks}
				</td>
				<shiro:hasPermission name="rest:sicmedAskedClass:edit"><td>
    				<a href="${ctx}/web/sicmedAskedClass/form?id=${sicmedAskedClass.id}">修改</a>
					<a href="${ctx}/web/sicmedAskedClass/delete?id=${sicmedAskedClass.id}" onclick="return confirmx('确认要删除该医嘱分类编码保存成功吗？', this.href)">删除</a>
				</td></shiro:hasPermission>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>