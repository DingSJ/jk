<%@ page language="java" pageEncoding="UTF-8"%>

<!-- 告诉浏览器本网页符合XHTML1.0过渡型DOCTYPE -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
 
<link rel="stylesheet" rev="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/extreme/extremecomponents.css" />
<link rel="stylesheet" rev="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/extreme/extremesite.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/common.js"></script>
<link rel="stylesheet" rev="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugin/extend_logo/extend_logo.css" media="all"/>
<%-- <script language="javascript" src="${pageContext.request.contextPath}/plugin/extend_logo/extend_logo.js"></script> --%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <link rel="stylesheet" rev="stylesheet" type="text/css" href="${pageContext.request.contextPath}/skin/default/css/default.css" media="all"/>
 
	<script language="javascript" src="${pageContext.request.contextPath}/js/common.js"></script>
	<script language="javascript" src="${pageContext.request.contextPath}/js/ajax/setFastMenu.js"></script>
	<script language="javascript" src="${pageContext.request.contextPath}/js/pngfix_map.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/components/jquery-ui/jquery-1.2.6.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/components/jquery-ui/ui/jquery.ui.all.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/skin/default/js/toggle.js"></script>	
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
        <div class="panel_icon"><img src="/jk/skin/default/images/icon/document_into.png" /></div>
        <div class="panel-header">
        <div class="panel-title">货运管理</div>
        <div class="panel-content">
			<ul>
				
					<li><a href="${pageContext.request.contextPath}/contract/contractAction_list" target="main" id="aa_1" onclick="linkHighlighted(this)">合同管理</a></li>
				
				
					<li><a href="${pageContext.request.contextPath}/export/exportAction_list" target="main" id="aa_1" onclick="linkHighlighted(this)">报运管理</a></li>
				
				
					<li><a href="${pageContext.request.contextPath}/packinglist/packingListAction_list" target="main" id="aa_1" onclick="linkHighlighted(this)">装箱管理</a></li>
				
				
				
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
<!-- end1 -->
 <!-- begin1  -->
<div id="sidebar" class="sidebar">
	<div class="sidebar_t">
		<div class="sidebar_t_l"></div>
		<div class="sidebar_t_c"></div>
		<div class="sidebar_t_r"></div>
	</div>
    <div class="panel">
    	<div class="panel_icon"><img src="${pageContext.request.contextPath}/skin/default/images/icon/chart.png" /></div>
        <div class="panel-header">
        <div class="panel-title">统计报表</div>
        
        <div class="panel-content">
			<ul>
				<li>
					<a href="${pageContext.request.contextPath}/run/sysStatAction_factorySale" target="main" id="aa_1">厂家销售情况统计</a>
				</li>
				<li>
					<a href="${pageContext.request.contextPath}/run/sysStatAction_productSale" target="main" id="aa_1">产品销售排行</a>
				</li>
				<li>
					<a href="${pageContext.request.contextPath}/run/sysStatAction_onlineinfo" target="main" id="aa_1">系统访问压力图</a>
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
<!-- end1 --> 
 
	

</body>
</html>
