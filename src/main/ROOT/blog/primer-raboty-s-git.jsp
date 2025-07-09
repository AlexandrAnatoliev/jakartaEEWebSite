<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
  <head>
    <!-- Yandex.Metrika counter -->
<script type="text/javascript">
      (function(m,e,t,r,i,k,a){m[i]=m[i]||function(){(m[i].a=m[i].a||[]).push(arguments)};
      m[i].l=1*new Date();
      for (var j = 0; j < document.scripts.length; j++) {if (document.scripts[j].src === r) { return; }}
      k=e.createElement(t),a=e.getElementsByTagName(t)[0],k.async=1,k.src=r,a.parentNode.insertBefore(k,a)})
      (window, document, "script", "https://mc.yandex.ru/metrika/tag.js", "ym");


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
  <%@include file="/style.css" %>
</style>

<title>java практика: пример работы с удаленным git репозиторием</title>
<meta name="description" content="Рассмотрим типичный сценарий работы с удаленным git репозиторием: создание новой ветки,
внесение изменений и отправка на GitHub.">
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
    <h1 id="top">ПРИМЕР РАБОТЫ С УДАЛЕННЫМ GIT РЕПОЗИТОРИЕМ</h1>

    <p>Рассмотрим типичный сценарий работы с удаленным git репозиторием: создание новой ветки, внесение изменений и отправка на GitHub.</p>
  </section>

  <section>
    <p>Получить изменения из удаленного репозитория <b>origin</b> в локальный, в ветку <b>master</b>:</p>

		<div class="vimcode">
			git pull origin master
		</div>

    <p>Создать новую ветку под новую "фичу":</p>

		<div class="vimcode">
			git branch issue-2_update_readme
		</div>

    <p>Где:
      <ul>
        <li><b>issue-2</b> - номер решаемой задачи (или issue);</li>
        <li><b>update_readme</b> - ее краткое описание;</li>
      </ul>
    </p>

    <p>Переключиться на созданную ветку:<p>

		<div class="vimcode">
			git switch issue-2_update_readme
		</div>

    <p>Внести необходимые изменения в код (в данном случае - в файл <b>README.md</b>) и добавить изменения для их отслеживания:<p>

		<div class="vimcode">
			git add .
		</div>

    <p>"Закоммитить" изменения:</p>

		<div class="vimcode">
			git commit -m "fix: update README.md"
		</div>

    <p>"Запушить" изменения в ветку issue-2_update_readme репозитория origin:</p>

		<div class="vimcode">
			git push origin issue-2_update_readme
		</div>

  </section>

  <aside class="article-preview">
    <h4>Навигация по статьям</h4>
    <ul>
      <li><a href="/blog/semanticheskoe-versionirovanie.jsp"><b>Семантическое версионирование</b></a></li>
      <li><a href="/blog/soglashenie-o-kommitah.jsp"><b>Соглашение о коммитах</b></a></li>
      <li><b>Основные команды git</b></li>
    </ul>
  </aside>

  <footer>
    <ul>
      <li><a href="#top"><b>Наверх</b></a></li>
    </ul>
  </footer>

</body>
</html>
