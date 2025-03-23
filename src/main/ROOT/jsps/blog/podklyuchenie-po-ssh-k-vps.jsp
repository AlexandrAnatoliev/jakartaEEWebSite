<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <style type="text/css">
		<%@include file="/style.css" %>      	
		body p {
			text-align: center;}
    </style>

    <title>java practice: подключение по ssh к vps</title>
    <meta name="description" content="Краткий гайд по подключению по ssh к виртуальному серверу (VPS)">
  </head>

  <body>

    <div id="header">
      / <a href="/home"><b>главная</b></a> /
      <a href="/blog"><b><span class="iamhere">блог</span></b></a> /
	    <!--
      <a href="/projects"><b>проекты</b></a> /
	    -->
      <a href="/devops"><b>devOps</b></a> /
    </div>

    <div id="top">
      <h1>ПОДКЛЮЧЕНИЕ ПО SSH К ВИРТУАЛЬНОМУ СЕРВЕРУ (VPS)</h1>
    </div>

    <p>Запустите сервер</p>

	  <img alt="Включение виртуального сервера" src="/images/podklyuchenie-po-ssh-k-vps/pic-1.png" class="large">
	
	  <p>Введите команду вида:</p>

	  <div class="vimcode">
		  ssh root@ip_адрес_сервера
	  </div>

	  <p>Пароль можно взять на даш-борде</p>
	
	  <img alt="Дашборд виртуального сервера" src="/images/podklyuchenie-po-ssh-k-vps/pic-2.png" class="large">

	  <div class="article-preview">
      <h4>Навигация по статьям</h4>
		  <ul><li><a href="/jsps/blog/arenda-vps.jsp"><b>Аренда виртуального сервера</b></a></li></ul>
		  <ul><li><b>Подключение по ssh к виртуальному серверу</b></li></ul>
		  <ul><li><a href="/jsps/blog/komandy-linux-terminala.jsp"><b>Основные команды linux терминала</b></a></li></ul>
	  </div>

    <div id="footer">
      / <a href="#top"><b>наверх</b></a> /
    </div>

  </body>
</html>
