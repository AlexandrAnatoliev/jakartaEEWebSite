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

<style>
  <%@include file="/style.css"%>
</style>

<title>java практика: devops</title>

<meta name="description"
  content="На практике знания только языка java не достаточно, необходимо разобраться и в devOps и devTools">
<meta name="robots" content="nofollow">
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
        <li><a href="/blog"><b>Блог</b></a></li>
        <li><a href="/devops" class="current"><b>DevOps</b></a></li>
      </ul>
    </nav>
  </header>

  <section>
    <h1 id="top">DEVOPS И DEVTOOLS</h1>

    <p>На этой странице собраны статьи связанные 
    не столько с самим программированием, 
    сколько с такими вопросами, как настройка, 
    отладка и т.п.</p>
  </section>

  <section>
    <aside id="linux" class="article-preview">
      <h4>LINUX</h4>
      <ul>
        <li><a href="/blog/arenda-vps.jsp"><b>Аренда
              виртуального сервера</b></a></li>
        <li><a href="/blog/podklyuchenie-po-ssh-k-vps.jsp"><b>Подключение
              по SSH к виртуальному серверу</b></a></li>
        <li><a href="/blog/komandy-linux-terminala.jsp"><b>Основные
              команды Linux-терминала</b></a></li>
        <li><a href="/blog/kopirovanie-fajlov-po-ssh.jsp"><b>Копирование
              файлов по SSH</b></a></li>
      </ul>
    </aside>

    <aside id="java" class="article-preview">
      <h4>JAVA</h4>
      <ul>
        <li><a href="/blog/ustanovka-java.jsp"><b>Установка
              Java на Linux</b></a></li>
        <li><a href="/blog/kompilyaciya-java-koda.jsp"><b>Компиляция
              Java-кода</b></a></li>
      </ul>
    </aside>

    <aside id="git" class="article-preview">
      <h4>GIT</h4>
      <ul>
        <li><a href="/blog/semanticheskoe-versionirovanie.jsp"><b>Семантическое версионирование</b></a></li>
        <li><a href="/blog/soglashenie-o-kommitah.jsp"><b>Соглашение о коммитах</b></a></li>
        <li><a href="/blog/komandy-git.jsp"><b>Основные команды Git</b></a></li>
        <li><a href="/blog/primer-git.jsp"><b>Пример использования Git</b></a></li>
      </ul>
    </aside>

    <aside id="git" class="article-preview">
      <h4>GITHUB</h4>
      <ul>
        <li><a href="/blog/project-euler-open-source.jsp">
                <b>Пример отправки pull request</b></a></li>
      </ul>
    </aside>
  </section>

  <footer>
    <ul>
      <li><a href="#top"><b>Наверх</b></a></li>
    </ul>
  </footer>
</body>
</html>
