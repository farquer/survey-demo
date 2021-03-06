<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<s:include value="/resources_jsp/admin_head.jsp"/>
</head>
<body>

	<s:include value="/resources_jsp/admin_top.jsp"/>
	
		 <!-- Container Wrapper -->
        <div id="mws-container" class="clearfix">       
        	<!-- Main Container -->
            <div class="container">

	
	<div class="block-div">
		<table class="dashedTable">
			<s:if test="#request.allRoleList == null || #request.allRoleList.size() == 0">
				<tr>
					<th>现在还没有创建任何角色对象</th>
				</tr>
			</s:if>
			<s:else>
				<s:form action="AdminAction_roleMng" namespace="/Admin">
				<s:hidden name="adminId"/>
				<s:iterator value="#request.allRoleList">
					<tr>
						<td>
							<input id="Checkbox<s:property value="roleId"/>" 
								   type="checkbox" 
								   name="roleIdList" 
								   value="<s:property value="roleId"/>"
								   	<s:if test="#request.currentRoleIdList.contains(roleId)">checked='checked'</s:if>
								   />
							<label for="Checkbox<s:property value="roleId"/>">
								<s:property value="roleName"/>
							</label>
						</td>
					</tr>
				
				</s:iterator>
				
				<tr>
					<td align="center">
						<s:submit value="确认分配"/>
					</td>
				</tr>
				
				</s:form>
			</s:else>
		</table>
	</div>
	
	</div>
	</div>
	
	<s:include value="/resources_jsp/admin_bottom.jsp"/>
</body>
</html>