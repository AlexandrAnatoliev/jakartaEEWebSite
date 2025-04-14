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
        
    <title>java практика: аренда виртуального сервера</title>

    <meta name="description" content="Аренда виртуального сервера (vps), краткий гайд для ускорения и облегчения процесса его настройки.">

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
      <h1>АРЕНДА ВИРТУАЛЬНОГО СЕРВЕРА (VPS)</h1>
    </div>

    <p>Для размещения и запуска своих проектов арендовать <b>vps</b> сервер будет дешевле, чем оплачивать услуги хостинга. 
    Управлять им, однако немного сложнее, потому что понадобятся некоторые знания для его настройки. 
    Чтобы облегчить этот процесс, составлен небольшой гайд.</p>

    <h3>Создание сервера</h3>

    <p>Переходим на официальный сайт <b>TimeWeb</b> по <a href="https://timeweb.com/ru/?i=112465" target="_blank">ссылке</a>.</p>

    <img alt="Вход на сайт TimeWeb" src="/images/arenda-vps/picture1.png" class="large">

	  <p>Нажимаем кнопку <b>Выбрать сервер</b></p>
	
	  <img alt="Создание аккаунта в TimeWeb" src="/images/arenda-vps/picture2.png" class="large">
	
	  <p>При необходимости регистрируемся</p>
	
	  <img alt="Регистрация в TimeWeb" src="/images/arenda-vps/picture3.png" class="large">

	  <p>Выбираем <b>Облачные серверы</b></p>

	  <img alt="Облачные серверы" src="/images/arenda-vps/picture4.png" class="large">

	  <p>Выбираем операционную систему</p>
	
	  <img alt="Операционные системы" src="/images/arenda-vps/picture5.png" class="large">

	  <p>Выбираем регион (его можно сменить в любое время)</p>
	
	  <img alt="Регион" src="/images/arenda-vps/picture6.png" class="large">
	
	  <p>Определяем конфигурацию сервера (также можно изменить позже)</p>

	  <img alt="Конфигурация сервера" src="/images/arenda-vps/picture7.png" class="large">

	  <p>Отключаем дополнительные услуги, чтобы удешевить обслуживание (можно всегда изменить)</p>
	
	  <img alt="Убираем бекапы" src="/images/arenda-vps/picture8.png" class="large">

	  <p>Задаем имя сервера и комментарий (если нужно)</p>
	
	  <img alt="Имя сервера" src="/images/arenda-vps/picture9.png" class="large">

	  <p>Нажимаем кнопку <b>Заказа</b></p>

	  <img alt="Заказ vps" src="/images/arenda-vps/picture10.png" class="large">

	  <p>Дожидаемся создания сервера (данные придут на почту)</p>
	
	  <img alt="Создание сервера" src="/images/arenda-vps/picture11.png" class="large">

	  <p>Копируем пароль (можно из дашборда)</p>
	
	  <img alt="Дашборд" src="/images/arenda-vps/picture12.png" class="large">

    <h3>Вход на сервер</h3>

	  <p>Переходим в консоль</p>
	
	  <img alt="Консоль vps сервера" src="/images/arenda-vps/picture13.png" class="large">

	  <p>Вводим логин (<b>root</b>) и пароль (копируем из дашборда)</p>

	  <div class="article-preview">
      <h4>Навигация по статьям</h4>
		  <ul>
        <li><b>Аренда виртуального сервера</b></li>
        <li><a href="/blog/podklyuchenie-po-ssh-k-vps.jsp"><b>Подключение по ssh к виртуальному серверу</b></a></li>
        <li><a href="/blog/komandy-linux-terminala.jsp"><b>Основные команды linux терминала</b></a></li>
      </ul>
	  </div>

    <div id="footer">
      / <a href="#top"><b>наверх</b></a> /
    </div>

  </body>
</html>
