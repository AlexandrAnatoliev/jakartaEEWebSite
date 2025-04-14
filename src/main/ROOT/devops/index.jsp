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
    
    <style>
      <%@include file="/style.css"%>
    </style>

    <title>java практика: devops</title>

    <meta name="description" content="На практике знания только языка java не достаточно, необходимо разобраться и в devOps и devTools">
	  <meta name="robots" content="nofollow">

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
      <h1>DEVOPS И DEVTOOLS</h1>
    </div>

	  <p>На этой странице собраны статьи связанные больше не с самим программированием, а такими вопросами как настройка, отладка и т.п.</p>

	  <div id="linux" class="article-preview">
		  <h4>LINUX</h4>
		
		  <ul>
        <li><a href="/blog/arenda-vps.jsp"><b>Аренда виртуального сервера</b></a></li>
        <li><a href="/blog/podklyuchenie-po-ssh-k-vps.jsp"><b>Подключение по ssh к виртуальному серверу</b></a></li>
        <li><a href="/blog/komandy-linux-terminala.jsp"><b>Основные команды linux терминала</b></a></li>
        <li><a href="/blog/kopirovanie-fajlov-po-ssh.jsp"><b>Копирование файлов по ssh</b></a></li>
			</ul>
	  </div>

	  <div id="wireguard" class="article-preview">
		  <h4>WIREGUARD</h4>
		
		  <ul>
        <li><a href="/blog/virtualnaya-chastnaya-set.jsp"><b>Виртуальная частная сеть</b></a></li>
			</ul>
	  </div>

    <div id="footer">
      / <a href="#top"><b>наверх</b></a> /
    </div>

  </body>
</html>
