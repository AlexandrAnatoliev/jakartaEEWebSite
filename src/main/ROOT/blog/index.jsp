<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <!DOCTYPE html>
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

    <title>java практика: blog</title>

    <meta name="description" content="Моя личная практика java">

  </head>
  
  <body>

	  <div id="header">
      <div class="favicon">
        <img src="/favicon.ico" alt="java практика сайт" class="favicon">
      </div>
      <div class="menu">
		    / <a href="/"><b>главная</b></a> /
		    <a href="/blog"><b><b><span class="iamhere">блог</span></b></a> /
		    <!--
    		  <a href="/projects"><b>проекты</b></a> /
		    -->
        <a href="/devops">devOps</b></a> /
      </div>
    </div>


    <div id="top">
      <h1>БЛОГ</h1>
    </div>

    <p>Это небольшой дневник, в котором излагается моя личная практика <b>java</b> шаг за шагом в виде конспектов, гайдов и может быть даже статей. 
    Он помогает мне уложить знания в голове, служит своеобразной тетрадкой, в которую я могу подсматривать иногда, а также возможно будет полезен другим.</p>
	
	  <div class="article-preview">
      <h4>Компиляция java кода</h4>
      <p>Компиляция <b>java</b> кода без использования <b>ide</b> (одного класса, нескольких, создание <b>jar-файла</b>).
		  <a href="/blog/kompilyaciya-java-koda.jsp"><b>читать</b></a></p>
	  </div>

	  <div class="article-preview">
      <h4>Установка java на linux</h4>
      <p>Небольшой конспект по установке <b>java</b> на <b>linux</b>...
		  <a href="/blog/ustanovka-java.jsp"><b>читать</b></a></p>
	  </div>

	  <div class="article-preview">
      <h4>Виртуальная частная сеть</h4>
      <p>Краткий гайд по настройке <b>wireguard</b> на своем сервере...
		  <a href="/blog/virtualnaya-chastnaya-set.jsp"><b>читать</b></a></p>
	  </div>

	  <div class="article-preview">
      <h4>Копирование файлов по ssh</h4>
    <p>После аренды виртуального сервера не всегда удобно что-то делать сразу на нем. 
    Чаще всего проект будет делаться на локальном компьютере и лишь потом копироваться сервер...
		  <a href="/blog/kopirovanie-fajlov-po-ssh.jsp"><b>читать</b></a></p>
	  </div>

	  <div class="article-preview">
      <h4>Основные команды linux терминала</h4>
      <p>Команды, вводимые пользователем в консоли терминала, выполняются командной оболочкой <b>bash</b>. 
      Пользователь вводит команду, <b>bash</b> ищет программу, соответствующую команде, в нужных каталогах,
       запускает ее и передает ей введенные параметры. Количество их, потому, огромно. 
       В статье будут описаны лишь те команды linux терминала, которые я использую чаще всего...
		  <a href="/blog/komandy-linux-terminala.jsp"><b>читать</b></a></p>
	  </div>

	  <div class="article-preview">
      <h4>Подключение по ssh к виртуальному серверу</h4>
		  <p>Краткий гайд по подключению по ssh к виртуальному серверу (VPS)... <a href="/blog/podklyuchenie-po-ssh-k-vps.jsp"><b>читать</b></a></p>
	  </div>
	
	  <div class="article-preview">
      <h4>Аренда виртуального сервера</h4>
      <p>Для размещения и запуска своих проектов арендовать <b>vps</b> сервер будет дешевле, чем оплачивать услуги хостинга. 
      Управлять им, однако немного сложнее, потому что понадобятся некоторые знания для его настройки. 
      Чтобы облегчить этот процесс, составлен небольшой гайд...
      <a href="/blog/arenda-vps.jsp"><b>читать</b></a></p>
	  </div>

    <div id="footer">
      / <a href="#top"><b>наверх</b></a> /
    </div>

  </body>
</html>
