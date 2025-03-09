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
            / <a href="/webapp/home"><b>главная</b></a> /
            <a href="/webapp/blog"><b><span class="iamhere">блог</span></b></a> /
            <a href="/webapp/projects"><b>проекты</b></a> /
      		<a href="/webapp/devops"><b>devOps</b></a> /
        </div>

        <div id="top">
            <h1>БЛОГ</h1>
        </div>

	<p>На этой странице будут излагаться статьи в порядке их написания</p>
	
	<div class="article-preview">
        	<h4>Подключение по ssh к виртуальному серверу</h4>
		<p>Краткий гайд по подключению по ssh к виртуальному серверу (VPS)... <a href="/webapp/jsps/blog/podklyuchenie-po-ssh-k-vps.jsp"><b>читать</b></a></p>
	</div>
	
	<div class="article-preview">
        	<h4>Аренда виртуального сервера</h4>
        	<p>Краткий пошаговый гайд по аренде сервера... <a href="/webapp/jsps/blog/arenda-vps.jsp"><b>читать</b></a></p>
	</div>

        <div id="footer">
            / <a href="#top"><b>наверх</b></a> /
        </div>

    </body>
</html>
