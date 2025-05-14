<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- Yandex.Metrika counter -->
<script type="text/javascript">
	(function(m, e, t, r, i, k, a) {
		m[i] = m[i] || function() {
			(m[i].a = m[i].a || []).push(arguments)
		};
		m[i].l = 1 * new Date();
		for (var j = 0; j < document.scripts.length; j++) {
			if (document.scripts[j].src === r) {
				return;
			}
		}
		k = e.createElement(t), a = e.getElementsByTagName(t)[0], k.async = 1,
				k.src = r, a.parentNode.insertBefore(k, a)
	})(window, document, "script", "https://mc.yandex.ru/metrika/tag.js", "ym");

	ym(101004544, "init", {
		clickmap : true,
		trackLinks : true,
		accurateTrackBounce : true
	});
</script>
<noscript>
  <div>
    <img src="https://mc.yandex.ru/watch/101004544"
      style="position: absolute; left: -9999px;" alt="" />
  </div>
</noscript>
<!-- /Yandex.Metrika counter -->
<style type="text/css">
  <%@include file ="/style.css" %> 
  body p {
    text-align: center;
  }
</style>

<title>java практика: подключение по ssh к vps</title>
<meta name="description"
  content="Краткий гайд по подключению по ssh к виртуальному серверу (VPS)">
</head>

<body>
  <header>
    <div class="favicon">
      <a href="/"><img src="/favicon.ico" alt="java практика сайт"
        class="favicon"></a>
    </div>
    <div class="github">
      <a href="https://github.com/AlexandrAnatoliev"><img
        src="/images/logo/github.svg" alt="ссылка на github"
        class="github"></a>
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
    <h1 id="top">ПОДКЛЮЧЕНИЕ ПО SSH К ВИРТУАЛЬНОМУ СЕРВЕРУ (VPS)</h1>

    <p>
      Краткий гайд по подключению по ssh к виртуальному серверу (<b>VPS</b>)
    </p>
  </section>

  <section>
    <aside class="article-preview">
      <h4>Аренда виртуального сервера</h4>
      <p>
        Краткий пошаговый гайд по аренде сервера... <a
          href="/blog/arenda-vps.jsp"> <b>читать</b></a>
      </p>
    </aside>

    <p>Запустите сервер</p>

    <figure>
      <img alt="Включение виртуального сервера"
        src="/images/podklyuchenie-po-ssh-k-vps/pic-1.png" class="large">
    </figure>

    <p>Введите команду вида:</p>

    <div class="vimcode">ssh root@ip_адрес_сервера</div>

    <p>Пароль можно взять на даш-борде</p>

    <figure>
      <img alt="Дашборд виртуального сервера"
        src="/images/podklyuchenie-po-ssh-k-vps/pic-2.png" class="large">
    </figure>
  </section>

  <aside class="article-preview">
    <h4>Навигация по статьям</h4>
    <ul>
      <li><a href="/blog/arenda-vps.jsp"><b>Аренда
            виртуального сервера</b></a></li>
      <li><b>Подключение по ssh к виртуальному серверу</b></li>
      <li><a href="/blog/komandy-linux-terminala.jsp"><b>Основные
            команды linux терминала</b></a></li>
      <li><a href="/blog/kopirovanie-fajlov-po-ssh.jsp"><b>Копирование
            файлов по ssh</b></a></li>
    </ul>
  </aside>

  <footer>
    <ul>
      <li><a href="#top"><b>Наверх</b></a></li>
    </ul>
  </footer>
</body>
</html>
