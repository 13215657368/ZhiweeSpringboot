<!--_meta 作为公共模版分离出去-->
<!DOCTYPE HTML>
<html>
<head>
	<#include "common.ftl">
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="Bookmark" href="favicon.ico" >
<link rel="Shortcut Icon" href="favicon.ico" />
<!--[if lt IE 9]>
<script type="text/javascript" src="${ctx}/ib/html5.js"></script>
<script type="text/javascript" src="${ctx}lib/respond.min.js"></script>
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

<title>添加管理员 - 管理员管理 - H-ui.admin v3.0</title>
</head>
<body>
<article class="cl pd-20">
	<form action="" method="post" class="form form-horizontal" id="form-admin-add">

		<input   id="hid" type="hidden" value="<#if id ??>${id}</#if>">

		<input    type="hidden"  value="<#if  pcode??>${pcode}</#if>">

		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>管理员：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text"    class="input-text" value="<#if username ??>${username}</#if>" placeholder="" id="username" name="username">
			</div>
		</div>






		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>权限：</label>
			<div class="formControls col-xs-8 col-sm-9">
                <form   id="infoForms">
				<label class="">首页轮播图:
					<#--permissions?seq_contains("101003")-->

					<input type="checkbox" <#if  pcode?contains("001")>checked</#if> value="001" name="Character" id="chart">
					</label>
                    &nbsp;
				<label class="">新闻管理:
					<input type="checkbox" <#if  pcode?contains("002")>checked</#if> value="002" name="Character" id="news">
					</label>
                    &nbsp;
				<label class="">产品管理:
					<input type="checkbox"  <#if  pcode?contains("003")>checked</#if> value="003" name="Character" id="product">
					</label>
                    &nbsp;
				<label class="">标题管理:
					<input type="checkbox"  <#if  pcode?contains("004")>checked</#if> value="004" name="Character" id="title">
					</label>
				<br>
				<label class="">员工风采:
					<input type="checkbox" <#if  pcode?contains("005")>checked</#if> value="005" name="Character" id="activity">
					</label>
                    &nbsp;
				<label class="">人才招聘:
					<input type="checkbox"  <#if  pcode?contains("006")>checked</#if> value="006" name="Character" id="job">
					</label>
                    &nbsp;
				<label class="">公司简介:
					<input type="checkbox" <#if  pcode?contains("007")>checked</#if>  value="007" name="Character" id="describes">
					</label>
                    &nbsp;
				<label class="">专卖店:
					<input type="checkbox" <#if  pcode?contains("008")>checked</#if> value="008" name="Character" id="shop">
					</label>
				<br>
				<label class="">经销商:
					<input type="checkbox" <#if  pcode?contains("009")>checked</#if> value="009" name="Character" id="conditor">
					</label>
                    &nbsp;
				<label class="">视频:
					<input type="checkbox" <#if  pcode?contains("010")>checked</#if> value="010" name="Character" id="video">
					</label>
                    &nbsp;
				<label class="">常见问题:
					<input type="checkbox" <#if  pcode?contains("011")>checked</#if> value="011" name="Character" id="problem">
					</label>
                    &nbsp;
				<label class="">系统管理:
					<input type="checkbox" <#if  pcode?contains("012")>checked</#if>  value="012" name="Character" id="manager">
					</label>

                </form>

			</div>


		</div>





		<div class="row cl">
			<div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-3">
				<input class="btn btn-primary radius"  id="sub" type="button" value="&nbsp;&nbsp;提交&nbsp;&nbsp;">
			</div>
		</div>
	</form>
</article>

<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="${ctx}/static/lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="${ctx}/static/lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="${ctx}/static/static/h-ui/js/H-ui.js"></script>
<script type="text/javascript" src="${ctx}/static/static/h-ui.admin/js/H-ui.admin.page.js"></script>

<!--/_footer /作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="${ctx}/static/lib/jquery.validation/1.14.0/jquery.validate.js"></script>
<script type="text/javascript" src="${ctx}/static/lib/jquery.validation/1.14.0/validate-methods.js"></script>
<script type="text/javascript" src="${ctx}/static/lib/jquery.validation/1.14.0/messages_zh.js"></script>
<script type="text/javascript">

$(function(){
	$('.skin-minimal input').iCheck({
		checkboxClass: 'icheckbox-blue',
		radioClass: 'iradio-blue',
		increaseArea: '20%'
	});
	
	$("#form-admin-add").validate({
		rules:{
			adminName:{
				required:true,
				minlength:4,
				maxlength:16
			},
			password:{
				required:true,
			},
			password2:{
				required:true,
				equalTo: "#password"
			},
			sex:{
				required:true,
			},
			phone:{
				required:true,
				isPhone:true,
			},
			email:{
				required:true,
				email:true,
			},
			adminRole:{
				required:true,
			},
		},
		onkeyup:false,
		focusCleanup:true,
		success:"valid",
		submitHandler:function(form){
			$(form).ajaxSubmit();
			var index = parent.layer.getFrameIndex(window.name);
			parent.$('.btn-refresh').click();
			parent.layer.close(index);
		}
	});
});



$("#sub").click(function () {

    //user-Character-0-0-0
    var  permissionCode="";

    var  userId = $("#hid").val();
    console.log(userId);


    $("input:checkbox:checked").each(function(){
        permissionCode +=this.value+",";

    });
    console.log(permissionCode);

        $.ajax({
            type:"POST",
            url:"${ctx}/admin/grant",
            data:{
                userId:userId,
				pCode: permissionCode
            },
			dataType:'JSON',
			success:function(result) {
            	if(result.code==200){
					layer.msg('授权成功',{
						icon:1,
						time:1000,
						end:function(){
							//关闭除父级外的子页面
							var index = parent.layer.getFrameIndex(window.name);
							parent.layer.close(index);//关闭当前页
							//parent.location.reload();//刷新父级页面
						}
					})
				} if(result.code ==400){
					layer.msg('授权失败，请检查',{
						icon:1,
						time:1000
					})
				}
			}


        })







})






</script>
<!--/请在上方写此页面业务相关的脚本-->
</body>
</html>