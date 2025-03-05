<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
        <style>
            <%@include file="../../style.css"%>
        </style>

        <title>java practice: blog</title>

        <meta name="description" content="Моя личная практика java">

    </head>
    <body>

        <div id="header">
            / <a href="../../index.jsp"><b>главная</b></a> /
            <a href="index.jsp"><b><span class="iamhere">блог</span></b></a> /
            <a href="../projects/index.jsp"><b>проекты</b></a> /
      		<a href="../devops/index.jsp"><b>devOps</b></a> /
        </div>

        <div id="top">
            <h1>Blog</h1>
        </div>

	<p>На этой страницы будут излагаться статьи в порядке их написания</p>
	
	<div class="article-preview">
        	<h3>Аренда виртуального сервера</h3>
        	<p>Краткий пошаговый гайд по аренде сервера... <a href="arenda-vps.jsp"><b>читать</b></a></p>
	</div>

        <div id="footer">
            / <a href="#top"><b>наверх</b></a> /
        </div>

    </body>
</html>
