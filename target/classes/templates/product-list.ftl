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
<#--    <link rel="Bookmark" href="favicon.ico" >
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

    <title>商品列表</title>
</head>
<body>
<#include "commonHead.ftl">

<section class="Hui-article-box">
    <nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页
        <span class="c-gray en">&gt;</span>
         产品管理
        <span class="c-gray en">&gt;</span>
        产品发布
        <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a>
    </nav>
    <div class="Hui-article">
        <article class="cl pd-20">

            <div class="cl pd-5 bg-1 bk-gray mt-20">
				<span class="l">
			<#--	<a href="javascript:;" onclick="datadel()" class="btn btn-danger radius"><i class="Hui-iconfont">&#xe6e2;</i> 批量删除</a>-->
				<a class="btn btn-primary radius" data-title="添加商品"  onclick="article_add('添加商品','${ctx}/pro/addPage')" href="javascript:;"><i class="Hui-iconfont">&#xe600;</i> 添加商品</a>
				</span>
              <#--  <span class="r">共有数据：<strong>54</strong> 条</span>-->
            </div>
            <div class="mt-20">
                <table class="table table-border table-bordered table-bg table-hover table-sort">
                    <thead>
                    <tr class="text-c">
                        <th width="25"><input type="checkbox" name="" value=""></th>
                        <th width="80">序号</th>
                        <th width="80">商品名称</th>
                        <th width="80">商品所属分类</th>
                        <th width="80">定变频</th>
                        <th width="80">型号</th>
                        <th width="80">等级</th>
                        <th width="80">适用面积</th>
                        <th width="80">颜色</th>
                        <th width="120">操作</th>

                    </tr>
                    </thead>
                    <tbody>
                   <#list  result.result as item>
                    <tr class="text-c">
                        <td><input type="checkbox" value="" name=""></td>
                        <td>${item_index+1}</td>
                        <td>${item.name}</td>
                        <td>${item.classifyName}</td>
                        <td><#if item.dbp ??>${item.dbp}</#if></td>
                        <td><#if item.model ??>${item.model}</#if></td>
                        <td><#if item.level ??>${item.level}</#if></td>
                        <td><#if item.area ??>${item.area}</#if></td>
						<td><#if item.color ??>${item.color}</#if></td>
                        <td class="f-14 td-manage">
                            <a style="text-decoration:none" class="ml-5" onClick="product_edit('商品编辑','${ctx}/pro/editPage?id=${item.id}')" href="javascript:;" title="编辑"><i class="Hui-iconfont">&#xe6df;</i></a>
                            <a style="text-decoration:none" class="ml-5" onClick="product_del(this,'${item.id}')"  title="删除"><i class="Hui-iconfont">&#xe6e2;</i></a></td>
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
<script type="text/javascript" src="${ctx}/static/h-ui.admin/js/H-ui.admin.page.js"></script>
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
            //{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
            {"orderable":false,"aTargets":[0,1]}// 不参与排序的列
        ]
    });

    /*资讯-添加*/
    function article_add(title,url){
        // var index = layer.open({
        //     type: 2,
        //     title: title,
        //     content: url
        // });
        var index = layer.open({
            type: 2,
            area: ['90%', '90%'],
            // offset: 'rb', //右下角弹出
            title:title,
            content: url,
            end: function () {
                location.reload();
            }
        });
        //layer.full(index);
    }
    /*资讯-编辑*/
    function product_edit(title,url,id){
        var index = layer.open({
            type: 2,
            area: ['90%', '90%'],
            // offset: 'rb', //右下角弹出
            title:title,
            content: url,
            end: function () {
                location.reload();
            }
        });
        //layer.full(index);
    }
    /*-删除*/
    function product_del(obj,id){
        layer.confirm('确认要删除吗？',function(index){
            $.ajax({
                type: 'POST',
                url: '${ctx}/pro/delete',
                data:{
                    id:id,
                },
                dataType: 'json',
                success: function(data){
                    $(obj).parents("tr").remove();
                    layer.msg('已删除!',{icon:1,time:1000});
                },
                error:function(data) {
                    console.log("删除失败");
                },
            });
        });
    }

    /*资讯-审核*/
    function article_shenhe(obj,id){
        layer.confirm('审核文章？', {
                    btn: ['通过','不通过','取消'],
                    shade: false,
                    closeBtn: 0
                },
                function(){
                    $(obj).parents("tr").find(".td-manage").prepend('<a class="c-primary" onClick="article_start(this,id)" href="javascript:;" title="申请上线">申请上线</a>');
                    $(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">已发布</span>');
                    $(obj).remove();
                    layer.msg('已发布', {icon:6,time:1000});
                },
                function(){
                    $(obj).parents("tr").find(".td-manage").prepend('<a class="c-primary" onClick="article_shenqing(this,id)" href="javascript:;" title="申请上线">申请上线</a>');
                    $(obj).parents("tr").find(".td-status").html('<span class="label label-danger radius">未通过</span>');
                    $(obj).remove();
                    layer.msg('未通过', {icon:5,time:1000});
                });
    }




</script>
<!--/请在上方写此页面业务相关的脚本-->
</body>
</html>