<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2018/5/10
  Time: 13:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrom=1">
    <meta name="viewport"
          content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no"/>
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <!--[if lt IE 9]>
    <script type="text/javascript" src="/common/lib/html5shiv.js"></script>
    <script type="text/javascript" src="/common/lib/respond.min.js"></script>
    <![endif]-->
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/common/static/h-ui/css/H-ui.min.css"/>
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/common/lib/Hui-iconfont/1.0.8/iconfont.min.css"/>
    <!--[if lt IE 9]>
    <link href="/common/static/h-ui/css/H-ui.ie.css" rel="stylesheet" type="text/css"/>
    <![endif]-->
    <!--[if IE 6]>
    <script type="text/javascript" src="/common/lib/DD_belatedPNG_0.0.8a-min.js"></script>
    <script>DD_belatedPNG.fix('*');</script>
    <![endif]-->
    <style type="text/css">
        .ui-sortable .panel-header {
            cursor: move
        }

        img {
            width: 2%;
            height: 2%;
        }
    </style>
    <title>首页</title>
    <meta name="keywords" content="关键词,5个左右,单个8汉字以内">
    <meta name="description" content="网站描述，字数尽量空制在80个汉字，160个字符以内！">
</head>

<body>
<div class="containBox-bg"></div>
<header class="navbar-wrapper">
    <div class="navbar navbar-black navbar-fixed-top">
        <div class="container cl">
            <a class="logo navbar-logo hidden-xs" href="/aboutHui.shtml">欢迎访问</a>
            <a class="logo navbar-logo-m visible-xs" href="/aboutHui.shtml"></a>
            <span class="logo navbar-slogan hidden-xs">XX网站</span>
            <a aria-hidden="false" class="nav-toggle Hui-iconfont visible-xs JS-nav-toggle"
               href="javascript:;">&#xe667;</a>
            <nav class="nav navbar-nav nav-collapse" role="navigation" id="Hui-navbar">
                <ul class="cl">
                    <%--target="_blank" 表示新开窗口--%>
                    <li class="current">
                        <a href="/index">首页</a>
                    </li>
                    <c:if test="${user ne null}">
                        <li>
                            <a href="/user/pushNewsPage">发布信息</a>
                        </li>
                    <li>
                        <a href="/news/getNewsList" target="_blank">信息管理</a>
                    </li>
                    </c:if>
                    <c:if test="${user eq null}">
                        <li style="margin-left: 73%;"><span>&nbsp;&nbsp;</span></li>
                        <i class="Hui-iconfont">&#xe705;</i>
                        <li>
                            <a href="/loginPage">登录</a><a href="/register">注册</a>
                        </li>
                    </c:if>
                    <c:if test="${user ne null}">
                        <li style="margin-left: 54%;"><span>&nbsp;&nbsp;</span></li>
                        <i class="Hui-iconfont Hui-iconfont-avatar2"></i>
                        <li>
                                <%--<a><img src="/images/timg.jpg"/>${user.userName}</a>--%>
                            <a href="/user/userInfo?id=${user.id}">${user.userName}</a>
                            <a href="/logout">注销登录</a>
                        </li>
                    </c:if>
                </ul>
            </nav>
            <nav class="navbar-userbar hidden-xs"></nav>
        </div>
    </div>
</header>
</body>
</html>
