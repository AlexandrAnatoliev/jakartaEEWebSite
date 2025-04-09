<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <!DOCTYPE html>
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

    <p>Это небольшой дневник, в котором излагается моя личная практика <b>java</b> шаг за шагом в виде конспектов, гайдов и может быть даже статей. 
    Помогает мне уложить знания в голове, служит своеобразной тетрадкой, в которую я могу подсматривать иногда, а также возможно будет полезна другим.</p>
	
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
