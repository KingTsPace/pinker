
<%@ page import="java.util.List" %>
<%@ page import="com.pinker.service.TopicService" %>
<%@ page import="com.pinker.entity.pk_topic" %>
<%@ page import="com.pinker.service.serviceimpl.TopicServiceImpl" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/include/base_info.jsp" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" type="text/css" href="CSS/Template.css"/>
		<link rel="stylesheet" type="text/css" href="CSS/topicList.css"/>
		<script src="js/jquery-1.7.2.js" type="text/javascript" charset="utf-8"></script>
		<script type="text/javascript" src="js/Template.js"></script>
		<title></title>
	</head>

	<body>



		<!--模板容器-->
		<div class="template-body">
			<!--头部容器-->
			<div class="template-header">
				<div class="template-header-wrap">
					<span class="template-logo">品客·</span>
					<nav class="template-header-nav">
						<a href="index.jsp" class="template-header-navItem isActive">首页</a>
						<a href="topicList.jsp" class="template-header-navItem">发现</a>
						<a href="topicList.jsp" class="template-header-navItem">话题</a>
					</nav>
					<!--搜索框-->

					<div class="template-search-bar">
						<input type="text" name="" id="" value="" placeholder="你感兴趣的话题。。。"/>

					</div>
					<div class="template-search-buttonWrap">
						<input type="button"  class="template-search-button"/>
					</div>
					<!--右侧登录注册以及头像-->
					<div class="right template-header-right">
					<div class="template-loginRegist">
						<a href="login.jsp">登录</a>
						<a href="login.jsp">注册</a>
					</div>

					<div class="template-userInfo">
						<div class="head-img">
							<a href="PersonPage.htmls"><img src="pinker/img/default_head.png" height="40px" width="40px"/></a>
						</div>
					</div>
					</div>
				</div>
			</div>

			<!--模板结束-->
			<div class="template-main-body">
				<div class="template-body-left">
					<!--在这里写左边-->
					<div class="template-body-left-1">
						<div class="template-body-left-1-neirong" >
							<%
								TopicService top=new TopicServiceImpl();
								List<pk_topic> list = top.selectAll();
								request.setAttribute("list",list);
							%>
							<c:forEach items="${list}" var="topic">

								<div class="template-body-left-body">
									<div class="content">
										<a href="topic_blogList.jsp" class="item-link" style="background-image: url(${topic.titleimg});">
										<span class="mask">
											<span class="name">${topic.title}</span>
										</span>
										</a>
										<div class="visitFBZ">
											发布者 : ${topic.userId}<br>
												${topic.publishtime}
										</div>
										<%--<div class="visitFBSJ">发布时间 : ${topic.publishtime}</div>--%>
									</div>
								</div>

							</c:forEach>
							<%--<div><a href="zhwz1/pages/topicChange.jsp">发表话题</a>
							</div>--%>
						</div>
						<!--底部更多按钮-->
						<button class="db">
							<a href="#">更多</a>
						</button>
					</div>
				</div>


				<div class="template-body-right">
					<!--在这里写右边-->
					<div class="template-body-right-1">
						<div class="template-body-right-1-1">
							<div class="template-body-right-1-1-header">
								<h3>主办方</h3>
							</div>
							<div class="template-body-right-1-1-body">
								<ul class="items">
									<li class="item">
										<div class="item-header">
											<a href="*" class="item-link">
												<img src="品客picture/v2-0781b2214bf66133379ced59708811c0_xs.jpg"  alt="户外探险杂志" class="yt66"/>
											</a>
											<div class="content">
												<a href="#">户外探险</a>
												<div class="bio">举办过220场圆桌</div>
											</div>
										</div>
									</li>
									<li class="item">
										<div class="item-header">
											<a href="*" class="item-link">
												<img src="品客picture/v2-968dbd9e769da38e4b7229260e4deb99_xs.jpg" alt="世界卫生组织" class="yt66"/>
											</a>
											<div class="content">
												<a href="#">世界卫生组织</a>
												<div class="bio">举办过265场圆桌</div>
											</div>
										</div>
									</li>
									<li class="item">
										<div class="item-header">
											<a href="*" class="item-link">
												<img src="品客picture/v2-3c49f055ec23ee5e9655709cc844783a_xs.jpg" alt="云栖社区" class="yt66"/>
											</a>
											<div class="content">
												<a href="#">云栖社区</a>
												<div class="bio">举办过275场圆桌</div>
											</div>
										</div>
									</li>
									<li class="item">
										<div class="item-header">
											<a href="*" class="item-link">
												<img src="品客picture/v2-f2f28d6025d3d2465a25979a8c2880a8_xs.jpg" alt="宝马中国" class="yt66"/>
											</a>
											<div class="content">
												<a href="#">宝马协会</a>
												<div class="bio">举办过295场圆桌</div>
											</div>
										</div>
									</li>
									<li class="item">
										<div class="item-header">
											<a href="*" class="item-link">
												<img src="品客picture/v2-199ad72f25ead97a5035772b61530c5c_xs.jpg" alt="法大大" class="yt66"/>
											</a>
											<div class="content">
												<a href="#">法大大</a>
												<div class="bio">举办过50场圆桌</div>
											</div>
										</div>
									</li>
									<li class="item">
										<div class="item-header">
											<a href="*" class="item-link">
												<img src="品客picture/v2-3a5304978e7b7f22d935908802193dbb_xs.jpg" alt="银华基金" class="yt66"/>
											</a>
											<div class="content">
												<a href="#">银华基金</a>
												<div class="bio">举办过69场圆桌</div>
											</div>
										</div>
									</li>
									<li class="item">
										<div class="item-header">
											<a href="*" class="item-link">
												<img src="品客picture/v2-4b90d11b2d0cb9c5e584f20629266ade_xs.jpg" alt="安瑞传媒" class="yt66"/>
											</a>
											<div class="content">
												<a href="#">安瑞传媒</a>
												<div class="bio">举办过106场圆桌</div>
											</div>
										</div>
									</li>
									<li class="item">
										<div class="item-header">
											<a href="*" class="item-link">
												<img src="品客picture/v2-5f8391f398c39cdcbe3296c316b79542_xs.jpg" alt="冠军欧洲" class="yt66"/>
											</a>
											<div class="content">
												<a href="#">冠军欧洲(电视栏目)</a>
												<div class="bio">举办过150场圆桌</div>
											</div>
										</div>
									</li>
									<li class="item">
										<div class="item-header">
											<a href="*" class="item-link">
												<img src="品客picture/v2-9d0ca7befbf1f9728568548854069cab_xs.jpg" alt="看电影" class="yt66"/>
											</a>
											<div class="content">
												<a href="#">看电影</a>
												<div class="bio">举办过168场圆桌</div>
											</div>
										</div>
									</li>
									<li class="item">
										<div class="item-header">
											<a href="*" class="item-link">
												<img src="品客picture/v2-eac313ff86265200374a516cf895856d_xs.jpg" alt="璇机" class="yt66"/>
											</a>
											<div class="content">
												<a href="#">璇机</a>
												<div class="bio">举办过199场圆桌</div>
											</div>
										</div>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>


		</div>




	</body>
</html>