<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <!-- Yandex.Metrika counter -->
    <script type="text/javascript" >
      (function(m,e,t,r,i,k,a){m[i]=m[i]||function(){(m[i].a=m[i].a||[]).push(arguments)};
      m[i].l=1*new Date();
      for (var j = 0; j < document.scripts.length; j++) {if (document.scripts[j].src === r) { return; }}
      k=e.createElement(t),a=e.getElementsByTagName(t)[0],k.async=1,k.src=r,a.parentNode.insertBefore(k,a)})
      (window, document, "script", "https://mc.yandex.ru/metrika/tag.js", "ym");

      ym(101004544, "init", {
        clickmap:true,
        trackLinks:true,
        accurateTrackBounce:true
      });
    </script>
    <noscript><div><img src="https://mc.yandex.ru/watch/101004544" style="position:absolute; left:-9999px;" alt="" /></div></noscript>
    <!-- /Yandex.Metrika counter -->
    <style type="text/css">
		  <%@include file="/style.css" %>
	  	body p {
			  text-align: center;}
    </style>

    <title>java практика: подключение по ssh к vps</title>
    <meta name="description" content="Краткий гайд по подключению по ssh к виртуальному серверу (VPS)">
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
      <h1>ПОДКЛЮЧЕНИЕ ПО SSH К ВИРТУАЛЬНОМУ СЕРВЕРУ (VPS)</h1>
    </div>

    <p>Краткий гайд по подключению по ssh к виртуальному серверу (VPS)</p>

	  <div class="article-preview">
      <h4>Аренда виртуального сервера</h4>
      <p>Краткий пошаговый гайд по аренде сервера... <a href="/blog/arenda-vps.jsp">
      <b>читать</b></a></p>
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
		  <ul>
        <li><a href="/blog/arenda-vps.jsp"><b>Аренда виртуального сервера</b></a></li>
		    <li><b>Подключение по ssh к виртуальному серверу</b></li>
		    <li><a href="/blog/komandy-linux-terminala.jsp"><b>Основные команды linux терминала</b></a></li>
        <li><a href="/blog/kopirovanie-fajlov-po-ssh.jsp"><b>Копирование файлов по ssh</b></a></li>
      </ul>
	  </div>

    <div id="footer">
      / <a href="#top"><b>наверх</b></a> /
    </div>

  </body>
</html>
