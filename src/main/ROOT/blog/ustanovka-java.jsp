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
    </style>
    <title>java практика: установка java на ubuntu</title>
    <meta name="description" content="установка java на примере ubuntu, краткий гайд.">
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
      <h1>УСТАНОВКА JAVA НА UBUNTU</h1>
    </div>

    <p> Краткий гайд по установке <b>java</b> на <b>linux</b>.</p>

    <p>Обновляем перечень пакетов <b>apt</b> в системе:</p>

    <div class="vimcode">
      sudo apt update
    </div>

    <p>Проверим, устанавливалась <b>java</b> ранее или нет.</p>

    <div class="vimcode">
      java -version
    </div>

    <p>В ответ на выполнение команды придет текст, похожий на указанный ниже:</p>

<pre class="vimcode">
...:~# java -version
Command 'java' not found, but can be installed with:
apt install default-jre
apt install openjdk-11-jre-headless
...
</pre>

    <p>Используем команду из списка, предложенного консолью:</p>

    <div class="vimcode">
      apt install имя-версии
    </div>

    <p><b>jre</b> - это программная среда, в которой выполняются программы <b>java</b>. Она включает в себя <b>jvm</b> и библиотеки классов <b>java</b>.</p>

    <p><b>jdk</b> - это платформа разработки для создания приложений <b>java</b>. В него входит сам <b>jre</b>, компилятор, отладчик и другие полезные инструменты разработчика.</p>

    <p>Для скачивания на сервер <b>jre</b> из <b>OpenJDK</b> пишем, например:</p>

    <div class="vimcode">
      apt install openjdk-21-jre-headless
    </div>

    <p>Если необходимо скачать <b>jdk</b>:</p>

    <div class="vimcode">
      apt install openjdk-21-jdk-headless
    </div>

    <p>Чтобы проверить, что все прошло успешно, проверяем версию <b>java</b>:</p>

    <div class="vimcode">
      java -version
    </div>

    <p>...и компилятора:</p>

    <div class="vimcode">
      javac -version
    </div>

	  <div class="article-preview">
      <h4>Навигация по статьям</h4>
		  <ul>
		    <li><a href="/blog/komandy-linux-terminala.jsp"><b>Основные команды linux терминала</b></a></li>
        <li><a href="/blog/kopirovanie-fajlov-po-ssh.jsp"><b>Копирование файлов по ssh</b></a></li>
		    <li><b>Виртуальная частная сеть</b></li>
      </ul>
	  </div>
    <div id="footer">
      / <a href="#top"><b>наверх</b></a> /
    </div>

  </body>
</html>
