<%@ page language="java" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!-- 告诉浏览器本网页符合XHTML1.0过渡型DOCTYPE -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <link rel="stylesheet" rev="stylesheet" type="text/css" href="${pageContext.request.contextPath}/skin/default/css/default.css" media="all"/>
	<link rel="stylesheet" rev="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/extreme/extremecomponents.css" />
	<link rel="stylesheet" rev="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/extreme/extremesite.css" />
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/common.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/components/jquery-ui/jquery-1.2.6.js"></script>
</head>
 
<body id="left_frame">
<div class="PositionFrame_black" id="PositionFrame"></div>
 
 
<!-- begin1  -->
<div id="sidebar" class="sidebar">
	<div class="sidebar_t">
		<div class="sidebar_t_l"></div>
		<div class="sidebar_t_c"></div>
		<div class="sidebar_t_r"></div>
	</div>
        <div class="panel">
        <div class="panel_icon"><img src="${pageContext.request.contextPath}/skin/default/images/icon/document_into.png" /></div>
        <div class="panel-header">
        <div class="panel-title">基础代码管理</div>
        <div class="panel-content">
			<ul>
					<li>
						<a href="${pageContext.request.contextPath}/baseinfo/classCodeAction_list.action" target="main" id="aa_1" onclick="linkHighlighted(this)">代码分类</a>
					</li>					
					<li>
						<a href="${pageContext.request.contextPath}/baseinfo/textCodeAction_list.action" target="main" id="aa_1" onclick="linkHighlighted(this)">系统代码</a>
					</li>					
					<li>
						<a href="${pageContext.request.contextPath}/basicinfo/factoryAction_list.action" onclick="linkHighlighted(this)" target="main" id="aa_1">厂家信息</a>
					</li>
				
			</ul>
        </div>
        </div>
    </div>
    <div class="sidebar_t">
		<div class="sidebar_b_l"></div>
		<div class="sidebar_t_c"></div>
		<div class="sidebar_b_r"></div>
	</div>  
</div>	  

</body>
</html>
