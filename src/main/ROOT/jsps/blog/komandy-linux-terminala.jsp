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
      <div class="favicon">
        <img src="/favicon.ico" alt="java практика сайт" class="favicon">
      </div>
      <div class="menu">
		    / <a href="/home"><b> <span class="iamhere">главная</span></b></a> /
		    <a href="/blog"><b>блог</b></a> /
		    <!--
    		  <a href="/projects"><b>проекты</b></a> /
		    -->
        <a href="/devops"><b>devOps</b></a> /
      </div>
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

    <h3>Командная строка</h3>

<pre class="vimcode">
user@my-desktop:/root$ ls -la /src
|    |           |   | |   |  |
1    2           3   4 5   6  7
  где:
1 - имя пользователя
2 - имя компьютера
3 - текущая директория
4 - приглашение системы к введению команды
5 - имя команды
6 - ключи команды
7 - содержательный параметр (показать содержимое src)
</pre>

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

		<p>Переместить <b>file</b> в директорию <b>dir</b> Этой же командой можно переименовать файл.</p>

	  <div class="vimcode">
		  cd [./path/to/dir/]
	  </div>

    <p>Перейти в директорию <b>dir</b>, без аргументов - в домашнюю директорию.</p>
	
	  <div class="vimcode">
		  # cd /
	  </div>

    <p>Перейти в корневую директорию.</p>
	
	  <div class="vimcode">
		  # cd ..
	  </div>

    <p>Перейти в директорию на один уровень выше.</p>
	
	  <div class="vimcode">
		  # cd -
	  </div>

    <p>Вернуться (в ту директорию, из которой пришел).</p>
	
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

<pre class="vimcode">
# ls --help     однословный ключ
# ls -h         однобуквенный ключ
</pre>

	  <p>Вывести справку по ключам к командe <b>ls</b></p>

<pre class="vimcode">
# ls -l
total 28
drwxr-xr-x 5 root root 4096 Mar 25 22:43 images
-rw-r--r-- 1 root root 1372 Mar 25 22:43 index.jsp
-rw-r--r-- 1 root root 2156 Mar 25 22:43 style.css
</pre>

		<p>Отобразить подробно.</p>

<pre class="vimcode">
# ls -a
.  ..  ico  images  index.jsp  style.css  .settings
</pre>

    <p>Вывести скрытые файлы (<b>.settings</b>).</p>
    
<pre class="vimcode">
# ls -la
total 28
drwxrwxr-x 7 root root 4096 мар 20 22:41 .
drwxrwxr-x 9 root root 4096 мар 23 22:19 ..
drwxr-xr-x 5 root root 4096 Mar 25 22:43 images
-rw-r--r-- 1 root root 1372 Mar 25 22:43 index.jsp
-rw-r--r-- 1 root root 2156 Mar 25 22:43 style.css
drwxrwxr-x 2 root root 4096 фев 28 21:14 .settings
</pre>

	  <p>Короткие ключи можно "склеивать" (команда выведет как открытые, так и скрытые файлы).</p>

<pre class="vimcode">
# ls -l             обычный ключ
# ls --color=none   параметрический
</pre>

<p>Ключи могут быть обычные и параметрические. К последним можно передать параметры (<b>--color=none</b> убрать раскраску).</p>

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
		  touch [file]	
	  </div>

		<p>Создать файл с именем <b>file</b></p>

	  <div class="vimcode">
			cat [file]</br>	
			cat [file1] >> [file2]	
	  </div>

		<p>Вывести содержимое файла с именем <b>file</b> в стандартный поток вывода (на экран). Прочитать <b>file1</b> и дописать его содержимое в конец <b>file2</b></p>

	  <div class="vimcode">
		  less [file]	
	  </div>

		<p>Прочитать файл</p>	
		
	  <div class="vimcode">
		  tail	
	  </div>

	  <div class="vimcode">
			head [file1]</br>
		  head -3 [file2]
	  </div>
		
		<p>Выведет первые 10 строк <b>file1</b> (по умолчинию) и первые три строки <b>file2</b>

	  <div class="vimcode">
		  find	
	  </div>

	  <div class="vimcode">
		  echo
	  </div>

		<p>Команда <b>echo</b> выводит значение переданного ей аргумента на экран.</p>

	  <div class="vimcode">
		  # echo $PATH
	  </div>

		<p>В данном случае будет выведено значение переменной <b>PATH</b>: список директорий, в которых будет производиться поиск бинарного файла для его выполнению по умолчанию (т.е. команды <b>ls, cd, echo</b> являются скомпилированными программами, которые выполняются при их вызове)</p>

<pre class="vimcode">
# echo first second
# echo "one parameter"
</pre>

    <p>Параметры, принимаемые командой, разделяются пробелами (<b>first second</b>). С помощью "кавычек" можно передать несколько слов как один параметр (<b>"one parameter"</b>)</p>

	  <div class="vimcode">
		  vim [file]
	  </div>

		<p>Открыть файл <b>file</b> в текстовом редакторе <b>vim</b>, либо создать его, если он не существует.</p>
		
    <h3>Взаимодействие между командами</h3>

	  <div class="vimcode">
		  > (redirection)	
	  </div>

    <p>Перенаправление потока вывода</p>

<pre class="vimcode">
# date > file.txt 
# cat file.txt
</pre>

<p>Записать ( <b>></b> ) текущую дату (<b>date</b>) в файл <b>vile.txt</b>, прочитать (<b>cat</b>) содержимое файла и вывести на экран (стандартный поток вывода). При перенаправлении с помощью ( <b>></b> ) предыдущие данные в файле <b>file.txt</b> будут стерты.</p>

<pre class="vimcode">
Читаем содержимое несуществующего файла file.txt
# cat file.txt
нет такого файла                выводится в консоль
# cat file.txt 2> note.txt      записывается в файл note.txt

  Номера потоков данных:
0: stdin    ввод
1: stdout   вывод               (по умолчанию
2: stderr   вывод ошибок        в консоль)
</pre>

    <p>С помощью ( <b>></b> ) можно перенаправить как все, так и отдельные потоки.</p>

	  <div class="vimcode">
		  >> (appending)	
	  </div>

    <p>Одинарное перенаправление ( <b>></b> ) перзаписывает файл, двойное ( <b>>></b> ) - дописывает в конец.</p>

	  <div class="vimcode">
		  | (pipe)	
	  </div>

    <p>С помощью каналов можно перенаправить поток из одной программы в другую.</p>

<pre class="vimcode">
alexandr@HONOR:~/jackartaEEWebSite$ find "src" | grep "java"
src/main/ROOT/WEB-INF/classes/HomeServlet.java
src/main/ROOT/WEB-INF/classes/ProjectsServlet.java
src/main/ROOT/WEB-INF/classes/BlogServlet.java
src/main/ROOT/WEB-INF/classes/DevopsServlet.java
</pre>

    <p>Например, с помощью команды <b>find</b> ищем все файлы в директории <b>src</b> и не выводим их на экран, 
    а передаем в программу <b>grep</b>. Уже с ее помощью выводим на экран только <b>java</b> файлы.</p>

	  <div class="vimcode">
		  xargs	
	  </div>

	  <div class="vimcode">
		  sort	
	  </div>


    <h3>Разрешения файлов и папок linux</h3>

	  <p>Первая буква означает, тип файла:</p>

<pre class="vimcode">
-rw-r--r-- 1 root root 1150 Mar 25 22:43 file.java  (файл)
drwxr-xr-x 5 root root 4096 Mar 25 22:43 dir        (директория)
lrwxrwxrwx 2 root root 1096 Mar 25 22:43 link       (ссылка)
</pre>

    <p>Последующие буквы раздёлены на три части по три символа и означают права доступа:</p>

<pre class="vimcode">
drwxrwxrwx
 |  |  |
 1  2  3
  права:
1 - владельца
2 - группы владельца
3 - всех остальных
</pre>

    <p>где:

<pre class="vimcode">
drwxr-xr--
 ||   | |
 12   3 4
  права:
1 - на чтение (r)
2 - на запись (w)
3 - на исполнение (x - открыть директорию, запустить файл)
4 - нет прав (-)
</pre>

	  <div class="vimcode">
		  chown
	  </div>

	  <div class="vimcode">
		  chmod
	  </div>

    <p>Изменение прав</p>

<pre class="vimcode">
# ls -l
-rwxr-xr-x 1 root root 1150 Mar 25 22:43 file.class
   |  |  |
   ---------------------есть право на выполнение файла

# chmod -x file.class   отобрать право (-x)

# ls -l
-rw-r--r-- 1 root root 1150 Mar 25 22:43 file.class
   |  |  |
   ---------------------нет прав на выполнение файла

# chmod +x file.class   вернуть право (+x)
</pre>

	  <div class="vimcode">
		  chmod
	  </div>

    <p>Изменение прав</p>
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
