<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>单表管理</title>
	<meta name="decorator" content="default"/>
	<script type="text/javascript">
		$(document).ready(function() {
			//$("#name").focus();
			$("#inputForm").validate({
				submitHandler: function(form){
					loading('正在提交，请稍等...');
					form.submit();
				},
				errorContainer: "#messageBox",
				errorPlacement: function(error, element) {
					$("#messageBox").text("输入有误，请先更正。");
					if (element.is(":checkbox")||element.is(":radio")||element.parent().is(".input-append")){
						error.appendTo(element.parent().parent());
					} else {
						error.insertAfter(element);
					}
				}
			});
		});
	</script>
</head>
<body>
	<ul class="nav nav-tabs">
		<li><a href="${ctx}/webweb/sicmedStanderprescriptionAsked/">单表列表</a></li>
		<li class="active"><a href="${ctx}/webweb/sicmedStanderprescriptionAsked/form?id=${sicmedStanderprescriptionAsked.id}">单表<shiro:hasPermission name="web:sicmedStanderprescriptionAsked:edit">${not empty sicmedStanderprescriptionAsked.id?'修改':'添加'}</shiro:hasPermission><shiro:lacksPermission name="web:sicmedStanderprescriptionAsked:edit">查看</shiro:lacksPermission></a></li>
	</ul><br/>
	<form:form id="inputForm" modelAttribute="sicmedStanderprescriptionAsked" action="${ctx}/webweb/sicmedStanderprescriptionAsked/save" method="post" class="form-horizontal">
		<form:hidden path="id"/>
		<sys:message content="${message}"/>		
		<%-- <div class="control-group">
			<label class="control-label">标准处方对应的疾病：</label>
			<div class="controls">
				<form:input path="sicmedStanderprescription.id" htmlEscape="false" maxlength="32" class="input-xlarge "/>
			</div>
		</div> --%>
		<div class="control-group">
			<label class="control-label">标准处方对应的疾病：</label> 	
					<sys:treeselect id="sicmedStanderprescription" 
						name="sicmedStanderprescription.id" value="${sicmedStanderprescriptionAsked.sicmedStanderprescription.id}" labelName="sicmedStanderprescription.prescriptionName" labelValue="${sicmedStanderprescriptionAsked.sicmedStanderprescription.prescriptionName}"
						title="挂号类型" url="/webweb/sicmedStanderprescriptionAsked/disease" extId="" cssClass="" allowClear="true" />
		</div>
		<div class="control-group">
			<label class="control-label">挂号类型：</label> 	
					<sys:treeselect id="sicmedAskedClass" 
						name="sicmedAskedClass.id" value="${sicmedStanderprescriptionAsked.sicmedAskedClass.id}" labelName="sicmedAskedClass.askedCalss" labelValue="${sicmedStanderprescriptionAsked.sicmedAskedClass.askedCalss}"
						title="挂号类型" url="/webweb/sicmedStanderprescriptionAsked/type" extId="${sicmedRegistered.sicmedRegistrationType.id}" cssClass="" allowClear="true" />
		</div>
		<div class="control-group">
			<label class="control-label">医嘱名称：</label>
			<div class="controls">
				<form:input path="orderCode" htmlEscape="false" maxlength="32" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">药品用法：</label>
			<div class="controls">
				<form:input path="sicmedMedicalUse.id" htmlEscape="false" maxlength="32" class="input-xlarge "/>
			</div>
		</div>
		<%-- <div class="control-group">
			<label class="control-label">创建的医生：</label>
			<div class="controls">
				<form:input path="createUser" htmlEscape="false" maxlength="32" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">修改的医生：</label>
			<div class="controls">
				<form:input path="updateUser" htmlEscape="false" maxlength="32" class="input-xlarge "/>
			</div>
		</div> --%>
		<div class="control-group">
			<label class="control-label">备注：</label>
			<div class="controls">
				<form:textarea path="remarks" htmlEscape="false" rows="4" maxlength="200" class="input-xxlarge "/>
			</div>
		</div>
		<div class="form-actions">
			<%-- <shiro:hasPermission name="web:sicmedStanderprescriptionAsked:edit"> --%><input id="btnSubmit" class="btn btn-primary" type="submit" value="保 存"/><%-- &nbsp;</shiro:hasPermission> --%>
			<input id="btnCancel" class="btn" type="button" value="返 回" onclick="history.go(-1)"/>
		</div>
	</form:form>
</body>
</html>