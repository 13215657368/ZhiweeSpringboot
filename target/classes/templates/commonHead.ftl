<!--_header 作为公共模版分离出去-->
<header class="navbar-wrapper">
    <div class="navbar navbar-fixed-top">
        <div class="container-fluid cl">
            <b class="logo navbar-logo f-l mr-10 ">格力官网后台管理系统</b>
            <a aria-hidden="false" class="nav-toggle Hui-iconfont visible-xs" href="javascript:;">&#xe667;</a>
            <nav id="Hui-userbar" class="nav navbar-nav navbar-userbar hidden-xs">
                <ul class="cl">
                    <li><#if user??>
                        <#if user.role ==1>超级管理员</#if>
                        <#if user.role ==2>普通管理员</#if>
                        </#if>&nbsp;&nbsp;</li>
                    <li class="dropDown dropDown_hover"> <B  class="dropDown_A"><#if user??>${user.username}</#if> <i class="Hui-iconfont">&#xe6d5;</i></B>
                        <ul class="dropDown-menu menu radius box-shadow">
                            <li><a href="${ctx}/admin/logout">退出</a></li>
                        </ul>
                    </li>
                    <li id="Hui-skin" class="dropDown right dropDown_hover"> <a href="javascript:;" class="dropDown_A" title="换肤"><i class="Hui-iconfont" style="font-size:18px">&#xe62a;</i></a>
                        <ul class="dropDown-menu menu radius box-shadow">
                            <li><a href="javascript:;" data-val="default" title="默认（黑色）">默认（黑色）</a></li>
                            <li><a href="javascript:;" data-val="blue" title="蓝色">蓝色</a></li>
                            <li><a href="javascript:;" data-val="green" title="绿色">绿色</a></li>
                            <li><a href="javascript:;" data-val="red" title="红色">红色</a></li>
                            <li><a href="javascript:;" data-val="yellow" title="黄色">黄色</a></li>
                            <li><a href="javascript:;" data-val="orange" title="橙色">橙色</a></li>
                        </ul>
                    </li>
                </ul>
            </nav>
        </div>
    </div>
</header>
<!--/_header 作为公共模版分离出去-->

<!--_menu 作为公共模版分离出去-->
<aside class="Hui-aside">

    <div class="menu_dropdown bk_2">
        <#if permission?? >
        <#--${session['userInfo'].username}  permission-->
        <#--<input type="text" value="${permission.pCode}">-->
         <#-- pcode?contains("001")-->
        <#if permission.pCode?contains("001")>
        <dl id="menu-picture">
            <dt><i class="Hui-iconfont">&#xe613;</i>首页轮播图<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
            <dd>
                <ul>
                    <li><a href="${ctx}/chart/list" title="图片管理">轮播图管理</a></li>
                </ul>
            </dd>
        </dl>
        </#if>



        <#if permission.pCode?contains("002")>
        <dl id="menu-article">
            <dt><i class="Hui-iconfont">&#xe616;</i> 新闻管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
            <dd>
                <ul>
                    <li><a href="${ctx}/news/list" title="资讯管理">新闻发布</a></li>
                </ul>
            </dd>
        </dl>
        </#if>

        <#if permission.pCode?contains("003")>
        <dl id="menu-product">
            <dt><i class="Hui-iconfont">&#xe620;</i> 产品管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
            <dd>
                <ul>
                    <li><a href="${ctx}/productClassify/list" title="产品管理">产品类别</a></li>
                </ul>
                <ul>
                    <li><a href="${ctx}/pro/list" title="产品管理">产品发布</a></li>
                </ul>
                <ul>
                    <li><a href="${ctx}/productChart/list" title="产品轮播图">产品轮播图</a></li>
                </ul>
            </dd>
        </dl>
        </#if>


        <#if permission.pCode?contains("004")>
        <dl id="menu-product">
            <dt><i class="Hui-iconfont">&#xe616;</i> 标题管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
            <dd>
                <ul>
                    <li><a href="${ctx}/classify/list" title="标题管理">标题管理</a></li>
                </ul>
            </dd>
        </dl>
        </#if>

        <#if permission.pCode?contains("005")>
        <dl id="menu-picture">
            <dt><i class="Hui-iconfont">&#xe613;</i> 风采<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
            <dd>
                <ul>
                    <li><a href="${ctx}/active/list" title="图片管理">活动管理</a></li>
                </ul>
            </dd>
        </dl>
        </#if>

        <#if permission.pCode?contains("006")>
        <dl id="menu-product">
            <dt><i class="Hui-iconfont">&#xe60d;</i>人才招聘<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
            <dd>
                <ul>
                    <li><a href="${ctx}/jobs/list" title="职位管理">职位管理</a></li>
                </ul>
            </dd>
        </dl>
        </#if>

        <#if permission.pCode?contains("007")>
        <dl id="menu-comments">
            <dt><i class="Hui-iconfont">&#xe616;</i> 公司简介<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
            <dd>
                <ul>
                    <li><a href="${ctx}/publication/list" title="刊物管理">公司刊物</a></li>
                </ul>
                <ul>
                    <li><a href="${ctx}/companyDescribe/list" title="公司概况">公司概况</a></li>
                </ul>
                <ul>
                    <li><a href="${ctx}/companyCulture/list" title="企业文化">企业文化</a></li>
                </ul>
                <ul>
                    <li><a href="${ctx}/companyLeader/list" title="领导简介">领导简介</a></li>
                </ul>
                <ul>
                    <li><a href="${ctx}/companyHonor/list" title="企业荣誉">企业荣誉</a></li>
                </ul>
            </dd>
        </dl>
        </#if>



        <#if permission.pCode?contains("008")>
        <dl id="menu-member">
            <dt><i class="Hui-iconfont">&#xe620;</i> 专卖店<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
            <dd>
                <ul>
                    <li><a href="${ctx}/shops/list" title="专卖店管理">专卖店管理</a></li>

                </ul>
            </dd>
        </dl>
        </#if>


        <#if permission.pCode?contains("009")>
        <dl id="menu-member">
            <dt><i class="Hui-iconfont">&#xe60d;</i>经销商<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
            <dd>
                <ul>
                    <li><a href="${ctx}/business/list" title="专卖店管理">格力电器经销商信息</a></li>
                    <li><a href="${ctx}/business/air/list" title="专卖店管理">中央空调经销商信息</a></li>
                    <li><a href="${ctx}/backgroundImg/list" title="专卖店管理">背景模板</a></li>

                </ul>
            </dd>
        </dl>
        </#if>


        <#if permission.pCode?contains("010")>
        <dl id="menu-member">
            <dt><i class="Hui-iconfont">&#xe613;</i>宣传视频<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
            <dd>
                <ul>
                    <li><a href="${ctx}/video/list" title="视频管理">视频管理</a></li>

                </ul>
            </dd>
        </dl>
        </#if>


        <#if permission.pCode?contains("011")>
        <dl id="menu-member">
            <dt><i class="Hui-iconfont">&#xe616;</i>常见问题<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
            <dd>
                <ul>
                    <li><a href="${ctx}/problems/list" title="视频管理">问题管理</a></li>

                </ul>
            </dd>
        </dl>
        </#if>
        </#if>


          <#if user ??>
        <#if user.role == 1>
        <dl id="menu-system">
            <dt><i class="Hui-iconfont">&#xe62e;</i> 系统管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
            <dd>
                <ul>
                   <#-- <li><a onclick="updatePassword()" href="javascript:;" title="密码修改">密码修改</a></li>-->
                    <li><a href="${ctx}/admin/list" title="账号管理">账号管理</a></li>
                    <li><a href="${ctx}/log/list" title="登录日志">登录日志</a></li>
                </ul>
            </dd>
        </dl>
        </#if>
        </#if>
    </div>
</aside>
<div class="dislpayArrow hidden-xs"><a class="pngfix" href="javascript:void(0);" onClick="displaynavbar(this)"></a></div>
<script>
    function updatePassword() {
        var url='${ctx}/admin/changpwdPage';
        var index = layer.open({
            type: 2,
            area: ['60%', '60%'],
            // offset: 'rb', //右下角弹出
            title:"修改密码",
            content: url
        });
    }



</script>
<!--/_menu 作为公共模版分离出去-->
