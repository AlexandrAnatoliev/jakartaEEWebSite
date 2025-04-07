<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>

    <style>
      <%@include file="/style.css"%>
    </style>

    <title>java практика: blog</title>

    <meta name="description" content="Моя личная практика java">

  </head>
  
  <body>

    
	  <div id="header">
      <div class="favicon">
        <img src="/favicon.ico" alt="java практика сайт" class="favicon">
      </div>
      <div class="menu">
		    / <a href="/"><b> <span class="iamhere">главная</span></b></a> /
		    <a href="/blog"><b>блог</b></a> /
		    <!--
    		  <a href="/projects"><b>проекты</b></a> /
		    -->
        <a href="/devops"><b>devOps</b></a> /
      </div>
    </div>


    <div id="top">
      <h1>БЛОГ</h1>
    </div>

	  <p>На этой странице будут излагаться статьи в порядке их написания</p>
	
	  <div class="article-preview">
      <h4>Основные команды linux терминала</h4>
		  <p>Основные команды linux терминала, необходимые пользователю... <a href="/blog/komandy-linux-terminala.jsp"><b>читать</b></a></p>
	  </div>

	  <div class="article-preview">
      <h4>Подключение по ssh к виртуальному серверу</h4>
		  <p>Краткий гайд по подключению по ssh к виртуальному серверу (VPS)... <a href="/blog/podklyuchenie-po-ssh-k-vps.jsp"><b>читать</b></a></p>
	  </div>
	
	  <div class="article-preview">
      <h4>Аренда виртуального сервера</h4>
      <p>Краткий пошаговый гайд по аренде сервера... <a href="/blog/arenda-vps.jsp"><b>читать</b></a></p>
	  </div>

    <div id="footer">
      / <a href="#top"><b>наверх</b></a> /
    </div>

  </body>
</html>
