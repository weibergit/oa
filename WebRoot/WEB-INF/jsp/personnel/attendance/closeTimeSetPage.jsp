<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/commons/include.inc.jsp" %>
<%--
	模块：人事管理-考勤管理-休息日设置页面
--%>

<div style="width: 98%;margin: 0 auto ;" >			
	
	<form method="post" action="attendance/addCloseTimeSet.do"  onsubmit="return validateSubmitForm(this)">
						
	<table class="table table-bordered ">
			<tr>
				<th style="width: 80px">名称：</th>
				<td>
					<input type="text" name="name"  class="easyui-validatebox" required="true"  validType="minlength[1]"   maxlength="50" />
				</td>
			</tr>
			<tr>
				<th>考勤登记时间设置：</th>
				<td>
					<a href="attendance/lookUpPage.do?type=2"  lookupGroup="attime" title="登记时间设置查询" >
					<input type="text"  readonly="readonly"  toName="attime.name" class="easyui-validatebox" required="required" />
				</a>
				<input type="hidden"  name="attimeids"  toName="attime.id"  />
				
				</td>
			</tr>
			<tr>
				<th>开始时间：</th>
				<td>
					<input type="text"  readonly="readonly" id="schedule_addtime_start"  name="startdate" 
					 onFocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})"
					 class="easyui-validatebox" required="true" value="${param.start }"/>
				</td>
			</tr>
			
			<tr>
				<th>结束时间：</th>
				<td>
					<input type="text"  readonly="readonly"  onFocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',minDate:'#F{$dp.$D(\'schedule_addtime_start\');}'})" 
					name="enddate" class="easyui-validatebox" required="true"/>
				</td>
			</tr>
			 
			<tr>
				<th></th>
				<td>
					<div  style="margin-top: 10px;margin-bottom: 10px;">
						  <button type="submit" class="btn btn-primary" >保存</button>&nbsp;&nbsp;&nbsp;&nbsp;
						  <button type="button" class="btn clear" >清空</button>
					</div>
				</td>
			 </tr>
			
			
			
	</table>
	
	<input type="hidden" name="datagridId" value="${param.rel }_datagrid" />	
    <input type="hidden" name="currentCallback" value="close" />
    <%--重新初始化日程提醒js--%>
    <input type="hidden" name="callback_fn" value="initScheduleWarn" />
</form>
</div>
										
						
					
		

	

