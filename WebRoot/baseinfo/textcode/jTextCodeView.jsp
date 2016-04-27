<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title></title>
 
<!-- --css、js区域-- -->

	<link rel="stylesheet" rev="stylesheet" type="text/css" href="${pageContext.request.contextPath}/skin/default/css/default.css" media="all" />
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/datepicker/WdatePicker.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/common.js"></script>
	
</head>
<body> 
<form name="icform" method="post">
<!-- --隐藏传值区域-- -->
<div id="menubar">
<div id="middleMenubar">
<div id="innerMenubar">
    <div id="navMenubar">
<!-- --按钮区域-- -->
<ul>
<%-- <li id="save"><a href="#" onclick="formSubmit('${pageContext.request.contextPath}/baseinfo/textCodeAction_save','_self');this.blur();">保存</a></li> --%>
<li id="back"><a href="#" onclick="history.go(-1);this.blur();">返回</a></li>
</ul>
    </div>
</div>
</div>
</div>
     
<div>
    <div class="textbox-header">
    <div class="textbox-inner-header">
    <div class="textbox-title">
<!-- --标题区域-- -->
    </div> 
    </div>
    </div>
 
 
<!-- --内容区域-- -->

    <div>
		<table class="commonTable" cellspacing="1">
	        <tr>
	            <td class="columnTitle">名称：</td>
	            <td class="tableContent">${name}</td>
	        </tr>
	        <tr>
	            <td class="columnTitle">类型：</td>
	            <td class="tableContent">${classCode.name}</td>
	        </tr>
		</table>
	</div>
</div>

 
</form>
</body>
</html>

