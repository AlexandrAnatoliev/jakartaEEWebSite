<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
  <head>
    <style type="text/css">
		  <%@include file="/style.css" %>
    </style>
    <title>java практика: команды linux терминала</title>
    <meta name="description" content="Основные команды linux терминала, необходимые пользователю">
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
      <h1>ОСНОВНЫЕ КОМАНДЫ LINUX ТЕРМИНАЛА</h1>
    </div>

    <p>Команды, вводимые пользователем в консоли терминала, выполняются командной оболочкой <b>bash</b>. 
      Пользователь вводит команду, <b>bash</b> ищет программу, соответствующую команде, в нужных каталогах,
       запускает ее и передает ей введенные параметры. Количество их, потому, огромно. 
       В статье будут описаны лишь те  команды linux терминала, которые я использую чаще всего.</p>

    <p>Итак, после того как Вы арендовали виртуальный сервер...</p>
	
	  <div class="article-preview">
      <h4>Аренда виртуального сервера</h4>
      <p>Краткий пошаговый гайд по аренде сервера... <a href="/blog/arenda-vps.jsp">
      <b>читать</b></a></p>
	  </div>

	  <p>...Вы можете пользоваться консолью, предоставляемой сайтом...</p>

	  <img alt="Консоль vps сервера" src="/images/arenda-vps/picture13.png" class="large">

	  <p>...или SSH-клиентом Вашего компьютера.</p>

	  <div class="article-preview">
      <h4>Подключение по SSH-клиентом к виртуальному серверу</h4>
		  <p>Краткий гайд по подключению по SSH-клиентом к виртуальному серверу (VPS)... <a href="/blog/podklyuchenie-po-ssh-k-vps.jsp"><b>читать</b></a></p>
	  </div>
	
	  <p>В любом случае будет полезно знать несколько команд linux терминала.</p>

    <h3>Командная строка терминала</h3>

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

    <h3>Установка программ на linux</h3>

	  <div class="vimcode">
		  apt update [package]
	  </div>

	  <p>Эта команда синхронизирует внутреннюю базу данных о пакетах с их источникамия,
    т.е. по сути, ищет их обновления. Может выручить, если что-то вчера еще работало, а сегодня уже нет.</p>

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

    <h3>Ориентация на linux сервере</h3>

	  <div class="vimcode">
		  mv [file] [./path/to/dir/]
	  </div>

		<p>Переместить <b>file</b> в директорию <b>dir.</b> Этой же командой можно переименовать файл.</p>

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
		  rm -r dir
	  </div>

	  <p>Удалить директорию и все ее содержимое. Проходит по директории рекурсивно и удаляет все файлы (в linux директории тоже являются файлами).</p>

	  <div class="vimcode">
		  ls
	  </div>

    <p>Показать список файлов и каталогов (содержимое текущей территории).</p>

<pre class="vimcode">
# ls --help     однословный ключ
# ls -h         однобуквенный ключ
</pre>

	  <p>Вывести справку по ключам к команде <b>ls</b>.</p>

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

<pre class="vimcode">
# cd /opt   полный путь
# cd srs    относительный
# cd ./bin  относительный
</pre>

    <p>Если путь начинается с <b>/</b>, то используется полный путь (перейдем в директорию <b>opt</b>, находящуюся в корневом каталоге), иначе (<b> . </b>) - относительный.

	  <div class="vimcode">
		  cp [file] [./path/to/dir/]
	  </div>

    <p>Скопировать <b>file</b> в директорию <b>dir</b>.</p>

	  <div class="vimcode">
		  # cp file1 file2
	  </div>

    <p><b>file1</b> будет скопирован в <b>file2</b>. При этом, если <b>file2</b> существует, программа попросит разрешения на его перезапись.</p>

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

    <p>Обозначает домашнюю директорию пользователя.</p>

	  <div class="vimcode">
		  history
	  </div>

    <p>Выводит историю введенных пользователем команд. Как правило, пользуются стрелками <b>вверх</b>
    и <b>вниз</b>, чтобы не вводить длинную команду заново, а просто вызвать ее из истории.</p>

    <h3>Просмотр файлов</h3>

	  <div class="vimcode">
		  touch [file]
	  </div>

		<p>Создать файл с именем <b>file</b>. Если такой файл уже существует, то изменяет дату его создания.</p>

	  <div class="vimcode">
			cat [file]</br>
			cat [file1] >> [file2]
	  </div>

		<p>Вывести содержимое файла с именем <b>file</b> в стандартный поток вывода (на экран). Прочитать <b>file1</b> и дописать его содержимое в конец <b>file2</b>.</p>

	  <div class="vimcode">
		  less [big-file]
	  </div>

		<p>Прочитать файл. Используется для постраничного вывода текста.</p>
		
	  <div class="vimcode">
		  tail [file]	
	  </div>

		<p>Вывести последние 10 строк файла.</p>

<pre class="vimcode">
# tail -f /var/log/auth.log
</pre>

    <p>Выведет последние 10 строк файла, при этом файл не закрывается и обновляет информацию, показывая изменения в нем.</b>

	  <div class="vimcode">
			head [file1]</br>
		  head -3 [file2]
	  </div>
		
		<p>Выведет первые 10 строк <b>file1</b> (по умолчанию) и первые три строки <b>file2</b>.

	  <div class="vimcode">
		  find
	  </div>
    
    <p>Команда для поиска файлов в linux. Имеет много параметров и столько же возможностей.</p>

<pre class="vimcode">
# find src -name *.java
</pre>

    <p>Найти в директории <b>src</b> все <b>java</b>-файлы.</p>

<pre class="vimcode">
# find . -size 0c
</pre>

    <p>В текущей директории найти все файлы с нулевым размером.</p>

<pre class="vimcode">
# find . -name *.tmp -ok rm {} \;
</pre>

    <p>Удалить все временные файлы в текущей директории.</p>

	  <div class="vimcode">
		  echo
	  </div>

		<p>Команда <b>echo</b> выводит значение переданного ей аргумента на экран.</p>

	  <div class="vimcode">
		  # echo $PATH
	  </div>

		<p>В данном случае будет выведено значение переменной <b>PATH</b>: список директорий, в которых будет производиться поиск
    бинарного файла для его выполнению по умолчанию (все команды, такие как  <b>ls, cd, echo</b> являются 
    скомпилированными программами, которые выполняются при их вызове).</p>

<pre class="vimcode">
# echo first second
# echo "one parameter"
</pre>

    <p>Параметры, принимаемые командой, разделяются пробелами (<b>first second</b>). 
    С помощью "кавычек" можно передать несколько слов как один параметр (<b>"one parameter"</b>).</p>

	  <div class="vimcode">
		  vim [file]
	  </div>

		<p>Открыть файл <b>file</b> в текстовом редакторе <b>vim</b>, либо создать его, если он не существует.</p>
		
    <h3>Взаимодействие между командами терминала</h3>

	  <div class="vimcode">
		  > (redirection)	
	  </div>

    <p>Перенаправление потока вывода.</p>

<pre class="vimcode">
# date > file.txt 
# cat file.txt
</pre>

<p>Записать ( <b>></b> ) текущую дату (<b>date</b>) в файл <b>vile.txt</b> (создать его при необходимости), прочитать (<b>cat</b>) содержимое файла и вывести на экран (стандартный поток вывода). При перенаправлении с помощью ( <b>></b> ) предыдущие данные в файле <b>file.txt</b> будут стерты.</p>

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

<p>Перенаправление ( <b>></b> ) по умолчанию работает с первым потоком (<b> > </b> и <b> 1> </b> одно и то же).</p>

	  <div class="vimcode">
		  >> (appending)	
	  </div>

    <p>Одинарное перенаправление ( <b>></b> ) перезаписывает файл, двойное ( <b>>></b> ) - дописывает в конец.</p>

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

    <h3>Разрешения файлов и папок linux</h3>

	  <p>Первая буква означает тип файла:</p>

<pre class="vimcode">
-rw-r--r-- 1 root root 1150 Mar 25 22:43 file.java  (файл)
drwxr-xr-x 5 root root 4096 Mar 25 22:43 dir        (директория)
lrwxrwxrwx 2 root root 1096 Mar 25 22:43 link       (ссылка)
</pre>

    <p>Последующие буквы разделены на три части по три символа и означают права доступа:</p>

<pre class="vimcode">
drwxrwxrwx root root 4096 Mar 25 22:43 dir
 |  |  |   |    |
 1  2  3   4    5
  права:
1 - владельца (тот кто создал файл)
2 - группы владельца
3 - всех остальных

4 - имя владельца
5 - название группы владельца
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

    <p>Изменить владельца файла.</p>

<pre class="vimcode">
# ls -l
-rwxr-xr-x 1 user user 1150 Mar 25 22:43 file.class
# chown root:root file.class
# ls -l
-rwxr-xr-x 1 root root 1150 Mar 25 22:43 file.class
</pre>

    <p>Меняем владельца файла с <b>user</b> на <b>root</b>.</p>

	  <div class="vimcode">
		  chmod
	  </div>

    <p>Изменение прав пользователя.</p>

<pre class="vimcode">
-rw-r--r-- 1 root root 1150 Mar 25 22:43 file.class
# chmod u+rwx,g+rw,o-rwx file.class
        |     |    |
        1     2    3
  Назначить права:
1 - пользователю      (u)
2 - группе            (g)
3 - и всем остальным  (o)

-rwxrw---- 1 root root 1150 Mar 25 22:43 file.class

+ - добавить права
- - убрать права

r - на чтение
w - на запись
x - на исполнение
</pre>

    <p>Изменение прав символьным способом.</b>

<pre class="vimcode">
# chmod 764 file.class                  изменяем права файла	
-rwxrw-r--  ... file.class              символы
 111110100                              биты
 |<-          111 = 4+2+1 = 7
     |<-      110 = 4+2+0 = 6 ->  764   права в числовом виде
       |<-    100 = 4+0+0 = 4
</pre>

<p>Символы (<b>-rwxrw-r--</b>) на самом деле обозначают биты (<b>111110100</b>). Три группы по три бита можно преобразовать в трехзначное число (<b>764</b>), которым обозначают права в числовом виде (абсолютный способ укащания прав доступа).</p> 

<p>Наиболее популярные права доступа:
  <ul>
    <li><b>644</b> - владельцу можно читать и изменять файл, остальным пользователям - только читать</li>
    <li><b>666</b> - читать и изменять файл можно всем пользователям</li>
    <li><b>777</b> - всем можно читать, изменять и выполнять файл</li>
  </ul>
</p>

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

    <p>Иногда символьный метод использовать проще. Например, изменение прав у всех сразу.</p>

	  <div class="article-preview">
      <h4>Навигация по статьям</h4>
		  <ul>
        <li><a href="/blog/arenda-vps.jsp"><b>Аренда виртуального сервера</b></a></li>
		    <li><b><a href="/blog/podklyuchenie-po-ssh-k-vps.jsp">Подключение по ssh к виртуальному серверу</a></b></li>
		    <li><b>Основные команды linux терминала</b></li>
      </ul>
	  </div>
    <div id="footer">
      / <a href="#top"><b>наверх</b></a> /
    </div>

  </body>
</html>
