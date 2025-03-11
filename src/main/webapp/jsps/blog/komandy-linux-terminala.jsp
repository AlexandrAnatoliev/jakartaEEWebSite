<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style type="text/css">
		<%@include file="../../style.css" %>      	
        </style>

        <title>java practice: команды linux терминала</title>
        <meta name="description" content="Основные команды linux терминала, необходимые пользователю">
    </head>

    <body>

       	<div id="header">
            / <a href="/webapp/home"><b>главная</b></a> /
            <a href="/webapp/blog"><b><span class="iamhere">блог</span></b></a> /
            <a href="/webapp/projects"><b>проекты</b></a> /
      		<a href="/webapp/devops"><b>devOps</b></a> /
        </div>

        <div id="top">
            <h1>ОСНОВНЫЕ КОМАНДЫ LINUX ТЕРМИНАЛА</h1>
        </div>

    	<p>После того как Вы арендовали виртуальный сервер...</p>
	
	<div class="article-preview">
        	<h4>Аренда виртуального сервера</h4>
        	<p>Краткий пошаговый гайд по аренде сервера... <a href="/webapp/jsps/blog/arenda-vps.jsp"><b>читать</b></a></p>
	</div>

	<p>...Вы можете пользоваться консолью, предоставляемой сайтом...</p>

	<img alt="Консоль vps сервера" src="../../images/arenda-vps/picture13.png" class="large">

	<p>...или ssh-клиентом с Вашего компьютера</p>

	<div class="article-preview">
        	<h4>Подключение по ssh к виртуальному серверу</h4>
		<p>Краткий гайд по подключению по ssh к виртуальному серверу (VPS)... <a href="/webapp/jsps/blog/podklyuchenie-po-ssh-k-vps.jsp"><b>читать</b></a></p>
	</div>
	
	<p>В любом случае будет полезно знать несколько команд linux терминала</p>

        <h3>Установка программ</h3>

	<div class="vimcode">
		apt update
	</div>

	<div class="vimcode">
		apt install
	</div>
	
	<div class="vimcode">
		-y
	</div>

        <h3>Ориентация на сервере</h3>

	<div class="vimcode">
		mv
	</div>

	<div class="vimcode">
		cd
	</div>
	
	<div class="vimcode">
		mkdir	
	</div>

	<div class="vimcode">
		rm	
	</div>

	<div class="vimcode">
		ls ll	
	</div>

	<div class="vimcode">
		pwd	
	</div>

	<div class="vimcode">
		cp	
	</div>

	<div class="vimcode">
		.	
	</div>

	<div class="vimcode">
		~	
	</div>

	<div class="vimcode">
		..	
	</div>

	<div class="vimcode">
		history	
	</div>

        <h3>Просмотр файлов</h3>

	<div class="vimcode">
		touch	
	</div>

	<div class="vimcode">
		cat	
	</div>

	<div class="vimcode">
		less	
	</div>

	<div class="vimcode">
		tail	
	</div>

	<div class="vimcode">
		head	
	</div>

	<div class="vimcode">
		find	
	</div>

	<div class="vimcode">
		echo	
	</div>

	<div class="vimcode">
		vim	
	</div>

        <div id="footer">
            / <a href="#top"><b>наверх</b></a> /
        </div>

    </body>
</html>
