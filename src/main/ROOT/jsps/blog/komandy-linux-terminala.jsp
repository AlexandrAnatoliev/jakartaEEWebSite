<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
  <head>
    <style type="text/css">
		  <%@include file="/style.css" %>      	
    </style>
    <title>java practice: команды linux терминала</title>
    <meta name="description" content="Основные команды linux терминала, необходимые пользователю">
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
      <h1>ОСНОВНЫЕ КОМАНДЫ LINUX ТЕРМИНАЛА</h1>
    </div>

    <p>После того как Вы арендовали виртуальный сервер...</p>
	
	  <div class="article-preview">
      <h4>Аренда виртуального сервера</h4>
      <p>Краткий пошаговый гайд по аренде сервера... <a href="/jsps/blog/arenda-vps.jsp">
      <b>читать</b></a></p>
	  </div>

	  <p>...Вы можете пользоваться консолью, предоставляемой сайтом...</p>

	  <img alt="Консоль vps сервера" src="/images/arenda-vps/picture13.png" class="large">

	  <p>...или ssh-клиентом с Вашего компьютера</p>

	  <div class="article-preview">
      <h4>Подключение по ssh к виртуальному серверу</h4>
		  <p>Краткий гайд по подключению по ssh к виртуальному серверу (VPS)... <a href="/jsps/blog/podklyuchenie-po-ssh-k-vps.jsp"><b>читать</b></a></p>
	  </div>
	
	  <p>В любом случае будет полезно знать несколько команд linux терминала</p>

    <h3>Установка программ</h3>

	  <div class="vimcode">
		  apt update [package]
	  </div>

	  <p>Эта команда синхронизирует внутреннюю базу данных о пакетах с их источникамия,
    т.е. по сути ищет их обновления. Может выручить, если что-то вчера еще работало, а сегодня уже нет.</p>

	  <div class="vimcode">
		  apt upgrade [package]
	  </div>

	  <p>Обновляет указанный пакет. Без параметров обновляет все установленные пакеты.</p>

	  <div class="vimcode">
		  apt install [package]
	  </div>
	
    <p>Программа <b>apt</b> ищет указанный пакет, читает служебную информацию о нем,
    при необходимости решает зависимости (т.е. устанавливает все другие пакеты, 
    необходимые для работы программ, устанавливаемого пакета), а затем устанавливает сам пакет.</p>

    <h3>Ориентация на сервере</h3>

	  <div class="vimcode">
		  mv [file] [./path/to/dir/]
	  </div>

    <p>Переместить <b>file</b> в директорию <b>dir</b>.</p>

	  <div class="vimcode">
		  cd [./path/to/dir/]
	  </div>

    <p>Перейти в директорию <b>dir</b>, без аргументов - в домашнюю директорию.</p>
	
	  <div class="vimcode">
		  mkdir [./path/to/dir/]
	  </div>

    <p>Создать директорию <b>dir</b>.</p>

	  <div class="vimcode">
		  rm [file]
	  </div>
	
    <p>Удалить <b>file</b>.</p>

	  <div class="vimcode">
		  ls
	  </div>

    <p>Показать список файлов и каталогов (содержимое текущей территории).</p>

	  <div class="vimcode">
		  pwd	
	  </div>

    <p>Возвращает полный путь к тому месту, где мы находимся. Полный путь работает из любого места.</p>

	  <div class="vimcode">
		  cp [file] [./path/to/dir/]
	  </div>

    <p>Скопировать <b>file</b> в директорию <b>dir</b>.</p>

	  <div class="vimcode">
		  .
	  </div>

    <p>Указывает на текущий каталог.</p>

	  <div class="vimcode">
		  ..
	  </div>

    <p>Указывает на каталог уровнем выше.</p>

	  <div class="vimcode">
		  ~
	  </div>

    <p>Обозначает домашнюю директорию.</p>

	  <div class="vimcode">
		  history
	  </div>

    <p>Выводит историю введенных пользователем команд. Как правило, пользуются стрелками <b>вверх</b>
    и <b>вниз</b>, чтобы не вводить длинную команду заново, а просто вызвать ее из истории.</p>

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

    <h3>Взаимодействие между командами</h3>

	  <div class="vimcode">
		  | (pipe)	
	  </div>

	  <div class="vimcode">
		  > (redirection)	
	  </div>

	  <div class="vimcode">
		  xargs	
	  </div>

	  <div class="vimcode">
		  sort	
	  </div>

	  <div class="vimcode">
		  >> (appending)	
	  </div>

    <h3>Разрешения файлов и папок linux</h3>

	  <div class="vimcode">
		  chown
	  </div>

	  <div class="vimcode">
		  chmod
	  </div>

	  <div class="vimcode">
		  chmod u+x	
	  </div>

	  <div class="vimcode">
		  chmod 755	
	  </div>

	  <div class="vimcode">
		  chgrp
	  </div>

    <h3>Работа с пользователями</h3>

	  <div class="vimcode">
		  useradd
	  </div>

	  <div class="vimcode">
		  passwd
	  </div>

	  <div class="vimcode">
		  whoami
	  </div>

	  <div class="vimcode">
		  groupadd
	  </div>

	  <div class="vimcode">
		  usermod
	  </div>

	  <h3>Мониторинг linux систем</h3>

	  <div class="vimcode">
		  free
	  </div>

	  <div class="vimcode">
		  df
	  </div>

	  <div class="vimcode">
		  du
	  </div>

	  <h3>Работа по http</h3>

	  <div class="vimcode">
		  curl
	  </div>

	  <div class="vimcode">
		  wget
	  </div>

	  <div class="vimcode">
		  tar
	  </div>

	  <h3>Администрирование linux</h3>

	  <div class="vimcode">
		  path
	  </div>

	  <div class="vimcode">
		  bashrc
	  </div>

	  <div class="vimcode">
		  systemctl
	  </div>

	  <div class="vimcode">
		  cron
	  </div>

	  <div class="vimcode">
		  environment variables
	  </div>

	  <h3>Скрипты linux</h3>

	  <div class="vimcode">
		  bash shell
	  </div>

	  <div class="vimcode">
		  for
	  </div>

	  <div class="vimcode">
		  while
	  </div>

	  <div class="vimcode">
		  if
	  </div>

	  <div class="vimcode">
		  $
	  </div>

	  <h3>Сети в linux</h3>

	  <div class="vimcode">
		  hostname
	  </div>

	  <div class="vimcode">
		  ifconfig
	  </div>

	  <div class="vimcode">
		  ufw
	  </div>

	  <div class="article-preview">
      <h4>Навигация по статьям</h4>
		  <ul><li><a href="/jsps/blog/arenda-vps.jsp"><b>Аренда виртуального сервера</b></a></li></ul>
		  <ul><li><b><a href="/jsps/blog/podklyuchenie-po-ssh-k-vps.jsp">Подключение по ssh к виртуальному серверу</a></b></li></ul>
		  <ul><li><b>Основные команды linux терминала</b></li></ul>
	  </div>
    <div id="footer">
      / <a href="#top"><b>наверх</b></a> /
    </div>

  </body>
</html>
