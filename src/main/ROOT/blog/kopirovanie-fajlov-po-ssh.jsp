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
    <title>java практика: копирование файлов по ssh</title>
    <meta name="description" content="Копирование файлов по ssh, краткий гайд.">
  </head>

  <body>

	  <div id="header">
      <div class="favicon">
        <a href="/"><img src="/favicon.ico" alt="java практика сайт" class="favicon"></a>
      </div>
      <div class="github">
        <a href="https://github.com/AlexandrAnatoliev"><img src="/images/logo/github.svg" alt="ссылка на github" class="github"></a>
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
      <h1>КОПИРОВАНИЕ ФАЙЛОВ ПО SSH</h1>
    </div>

    <p>После аренды виртуального сервера не всегда удобно что-то делать сразу на нем. 
    Чаще всего проект будет делаться на локальном компьютере и лишь потом копироваться сервер.</p>

	  <div class="article-preview">
      <h4>Аренда виртуального сервера</h4>
      <p>Краткий пошаговый гайд по аренде сервера... <a href="/blog/arenda-vps.jsp"><b>читать</b></a></p>
	  </div>

    <p>Генерируем открытый и закрытый ключ:</p>

    <div class="vimcode">
      ssh-keygen
    </div>

    <p>В консоль будет выведен хеш ключа и его графическое представление. 
    Сами ключи по умолчанию (<b>id_rsa.pub</b> - открытый и <b>id_rsa</b> - закрытый) сохранятся в домашнем каталоге пользователя в директории <b>.ssh</b>.

    <p>Во время генерации программа попросит ввести пароль, которым будут защищены ключи. Это не обязательно (нажать дважды <b>enter</b>).</p>

    <p>Копируем публичный ключ на удаленную машину:</p>

<pre class="vimcode">
ssh-copy-id [имя пользователя]@[ip-адрес]
            |                   |
            |<-1                |<-2
  где:
1 - учетная запись пользователя, 
    под которой будем логиниться на удаленной машине
2 - адрес удаленной машины (или доменное имя)
</pre>

    <p>Вводим пароль пользователя.</p>

    <p>Копируем с локальной машины на удаленный сервер:</p>

    <div class="vimcode">
      scp [путь к файлу] [имя пользователя]@[ip-адрес]:[путь к файлу]
    </div>

    <p>Копируем файл на сервер</p>

    <div class="vimcode">
      $ scp test.txt user@192.168.1.29:/home/user/
    </div>
       
    <p>Копируем несколько файлов за раз (указываем пути к ним через пробел):</p>

    <div class="vimcode">
      $ scp test1.txt test2.txt user@192.168.1.29:/home/user/
    </div>
    
    <p>Копируем с удаленного сервера на локальную машину (меням источник и сесто назначения местами):</p>
    
    <div class="vimcode">
      $ scp user@192.168.1.29:/home/user/test.txt ~/
    </div>
    
    <p>Передача директории (используем ключ <b>-r</b>):</p>
    
    <div class="vimcode">
      $ scp -r testdir user@192.168.1.29:/home/user/
    </div>

    <p>Передача с одного удаленного сервера на другой:</p>

    <div class="vimcode">
      # scp gendo@192.168.1.25:/home/gendo/test.txt user@192.168.1.29:/home/user/
    </div>

	  <div class="article-preview">
      <h4>Навигация по статьям</h4>
		  <ul>
        <li><a href="/blog/podklyuchenie-po-ssh-k-vps.jsp"><b>Подключение по ssh к виртуальному серверу</b></a></li>
		    <li><a href="/blog/komandy-linux-terminala.jsp"><b>Основные команды linux терминала</b></a></li>
		    <li><b>Копирование файлов по ssh</b></li>
        <li><a href="/blog/virtualnaya-chastnaya-set.jsp"><b>Виртуальная частная сеть</b></a></li>
        <li><a href="/blog/ustanovka-java.jsp"><b>Установка java на linux</b></a></li>
      </ul>
	  </div>
    <div id="footer">
      / <a href="#top"><b>наверх</b></a> /
    </div>

  </body>
</html>
