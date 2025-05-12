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
			  	text-align: center;
			}
    	</style>
        
    	<title>java практика: аренда виртуального сервера</title>

    	<meta name="description" content="Аренда виртуального сервера (vps), краткий гайд для ускорения и облегчения процесса его настройки.">
  	</head>

  	<body>
		<header>
      		<div class="favicon">
        		<a href="/"><img src="/favicon.ico" alt="java практика сайт" class="favicon"></a>
      		</div>
      		<div class="github">
        		<a href="https://github.com/AlexandrAnatoliev"><img src="/images/logo/github.svg" alt="ссылка на github" class="github"></a>
      		</div>

      		<nav>
        		<ul>
    				<li><a href="/"><b>Главная</b></a></li>
    				<li><a href="/blog" class="current"><b>Блог</b></a></li>
    				<li><a href="/devops"><b>DevOps</b></a></li>
    			</ul>
      		</nav>
    	</header>

		<section>
      		<h1 id="top">АРЕНДА ВИРТУАЛЬНОГО СЕРВЕРА (VPS)</h1>

    		<p>Для размещения и запуска своих проектов арендовать <b>vps</b> сервер будет дешевле, чем оплачивать услуги хостинга. 
    		Управлять им, однако немного сложнее, потому что понадобятся некоторые знания для его настройки. 
    		Чтобы облегчить этот процесс, составлен небольшой гайд.</p>
		</section>

		<section>
    		<h3>Создание сервера</h3>

			<aside>
    			<p>Переходим на официальный сайт <b>TimeWeb</b> по <a href="https://timeweb.com/ru/?i=112465" target="_blank">ссылке</a>.</p>
			</aside>

			<figure>
    			<img alt="Вход на сайт TimeWeb" src="/images/arenda-vps/picture1.png" class="large">
			</figure>

	  		<p>Нажимаем кнопку <b>Выбрать сервер</b></p>
	
			<figure>
	  			<img alt="Создание аккаунта в TimeWeb" src="/images/arenda-vps/picture2.png" class="large">
			</figure>

	  		<p>При необходимости регистрируемся</p>
	
			<figure>
	  			<img alt="Регистрация в TimeWeb" src="/images/arenda-vps/picture3.png" class="large">
			</figure>

	  		<p>Выбираем <b>Облачные серверы</b></p>

			<figure>
	  			<img alt="Облачные серверы" src="/images/arenda-vps/picture4.png" class="large">
			</figure>

	  		<p>Выбираем операционную систему</p>
	
			<figure>
	  			<img alt="Операционные системы" src="/images/arenda-vps/picture5.png" class="large">
			</figure>

	  		<p>Выбираем регион (его можно сменить в любое время)</p>
	
			<figure>
	  			<img alt="Регион" src="/images/arenda-vps/picture6.png" class="large">
			</figure>

	  		<p>Определяем конфигурацию сервера (также можно изменить позже)</p>

			<figure>
	  			<img alt="Конфигурация сервера" src="/images/arenda-vps/picture7.png" class="large">
			</figure>

	  		<p>Отключаем дополнительные услуги, чтобы удешевить обслуживание (можно всегда изменить)</p>
	
			<figure>
	  			<img alt="Убираем бекапы" src="/images/arenda-vps/picture8.png" class="large">
			</figure>

	  		<p>Задаем имя сервера и комментарий (если нужно)</p>
	
			<figure>
	  			<img alt="Имя сервера" src="/images/arenda-vps/picture9.png" class="large">
			</figure>

	  		<p>Нажимаем кнопку <b>Заказа</b></p>

			<figure>
	  			<img alt="Заказ vps" src="/images/arenda-vps/picture10.png" class="large">
			</figure>

	  		<p>Дожидаемся создания сервера (данные придут на почту)</p>
	
			<figure>
	  			<img alt="Создание сервера" src="/images/arenda-vps/picture11.png" class="large">
			</figure>

	  		<p>Копируем пароль (можно из дашборда)</p>
	
			<figure>
	  			<img alt="Дашборд" src="/images/arenda-vps/picture12.png" class="large">
			</figure>
		</section>

		<section>
    		<h3>Вход на сервер</h3>

	  		<p>Переходим в консоль</p>
	
	  		<img alt="Консоль vps сервера" src="/images/arenda-vps/picture13.png" class="large">

	  		<p>Вводим логин (<b>root</b>) и пароль (копируем из дашборда)</p>
		</section>
	  <div class="article-preview">
      <h4>Навигация по статьям</h4>
		  <ul>
        <li><b>Аренда виртуального сервера</b></li>
        <li><a href="/blog/podklyuchenie-po-ssh-k-vps.jsp"><b>Подключение по ssh к виртуальному серверу</b></a></li>
        <li><a href="/blog/komandy-linux-terminala.jsp"><b>Основные команды linux терминала</b></a></li>
      </ul>
	  </div>

        <div id="footer">
    		<ul>
    			<li><a href="#top"><b>Наверх</b></a></li>
    		</ul>
    	</div>

  </body>
</html>
