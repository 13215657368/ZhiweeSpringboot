﻿<!--_meta 作为公共模版分离出去-->
<!DOCTYPE HTML>
<html>
<head>
<#include "common.ftl">
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<#--<link rel="Bookmark" href="favicon.ico" >
<link rel="Shortcut Icon" href="favicon.ico" />-->
<!--[if lt IE 9]>
<script type="text/javascript" src="${ctx}/lib/html5.js"></script>
<script type="text/javascript" src="${ctx}/lib/respond.min.js"></script>
<![endif]-->
<link rel="stylesheet" type="text/css" href="${ctx}/static/static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="${ctx}/static/static/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="${ctx}/static/lib/Hui-iconfont/1.0.8/iconfont.css" />
<link rel="stylesheet" type="text/css" href="${ctx}/static/static/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="${ctx}/static/static/h-ui.admin/css/style.css" />
<!--[if IE 6]>
<script type="text/javascript" src="http://lib.h-ui.net/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script><![endif]-->
<!--/meta 作为公共模版分离出去-->

<title>代理商分类</title>
</head>
<body>
<#include "commonHead.ftl">

<section class="Hui-article-box">
	<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 代理商管理 <span class="c-gray en">&gt;</span> 代理商分类 <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
	<div class="Hui-article">
		<article class="cl pd-20">
			<div class="cl pd-5 bg-1 bk-gray mt-20">
				<span class="l"><#--<a href="javascript:;" onclick="datadel()" class="btn btn-danger radius"><i class="Hui-iconfont">&#xe6e2;</i> 批量删除</a>--> <a class="btn btn-primary radius" onclick="backgroundImg_add('添加分类','${ctx}/backgroundImg/add')"><i class="Hui-iconfont">&#xe600;</i> 添加分类</a></span> <#--<span class="r">共有数据：<strong>54</strong> 条</span>-->
			</div>
			<div class="mt-20">
				<table class="table table-border table-bordered table-bg table-hover table-sort">
					<thead>
						<tr class="text-c">
							<th width="40"><input name="" type="checkbox" value=""></th>
							<th width="100">编号</th>
                            <th width="100">经销类型</th>
							<th width="100">分类所属</th>
							<th >分类背景图</th>
							<th width="100">操作</th>
						</tr>
					</thead>
					<tbody>
                       <#list  BackgroundImg as item>
						<tr class="text-c">
							<td><input name="" type="checkbox" value=""></td>

							<td>${item_index+1}</td>
							<td><#if item.type==1>格力中央空调</#if><#if item.type==2>格力电器</#if></td>
							<td><#if item.dealerType ==1>格力电器-卖场</#if><#if item.dealerType ==2>格力电器-专卖店</#if><#if item.dealerType ==3>格力电器-专营店</#if><#if item.dealerType ==4>格力电器-代理商</#if><#if item.dealerType ==5>中央空调-经销商</#if></td>
<#--							<td>${item.date?string('yyyy-MM-dd HH:mm:ss')}</td>-->
							<td><img style="opacity: 1"  width=90px height=90px src="${item.imgUrl}"/></td>
							<td class="td-manage">
                                <a style="text-decoration:none" class="ml-5" onClick="backgroundImg_edit('编辑','${ctx}/backgroundImg/edit?id=${item.id}')" href="javascript:;" title="编辑"><i class="Hui-iconfont">&#xe6df;</i></a>
                                <a style="text-decoration:none" class="ml-5" onClick="backgroundImg_del(this,'${item.id}','${item.imgUrl}')" href="javascript:;" title="删除"><i class="Hui-iconfont">&#xe6e2;</i></a>
							</td>
						</tr>
					   </#list>
					</tbody>
				</table>
			</div>
		</article>
	</div>
</section>

<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="${ctx}/static/lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="${ctx}/static/lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="${ctx}/static/static/h-ui/js/H-ui.js"></script>
<script type="text/javascript" src="${ctx}/static/static/h-ui.admin/js/H-ui.admin.page.js"></script>
<!--/_footer /作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="${ctx}/static/lib/My97DatePicker/4.8/WdatePicker.js"></script>
<script type="text/javascript" src="${ctx}/static/lib/datatables/1.10.0/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="${ctx}/static/lib/laypage/1.2/laypage.js"></script>
<script type="text/javascript">
$('.table-sort').dataTable({
	"aaSorting": [[ 0, "desc" ]],//默认第几个排序
	"bStateSave": true,//状态保存
	"aoColumnDefs": [
	//  {"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
	  {"orderable":false,"aTargets":[0,2]}// 制定列不参与排序
	]
});
/** 增加*/
function backgroundImg_add(title,url){
	var index = layer.open({
		type: 2,
		area: ['75%', '75%'],
		// offset: 'rb', //右下角弹出
		title:title,
		content: url,
		end: function () {
			location.reload();
		}

	});
}
/*修改*/
function backgroundImg_edit(title,url){
	var index = layer.open({
		type: 2,
		area: ['75%', '75%'],
		// offset: 'rb', //右下角弹出
		title:title,
		content: url,
		end: function () {
			location.reload();
		}

	});
    //layer.full(index);
}
/*删除*/
function backgroundImg_del(obj,id,url){
    layer.confirm('确认要删除吗？',function(index){
        $.ajax({
            type: 'POST',
            url: '${ctx}/backgroundImg/delete',
            data:{
                id: id,
				imgUrl:url
            },
            dataType: 'json',
            success: function(data){
                $(obj).parents("tr").remove();
                layer.msg('已删除!', {icon: 1, time: 1000});
            },
            error:function(data) {
                console.log("删除失败");
            },
        });
    });
}
</script>
</body>
</html>