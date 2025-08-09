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

<link rel="icon" href="/favicon.ico" type="image/x-icon">

<style>
  <%@include file="/style.css"%>
</style>

<title>java практика</title>

<meta name="description"
  content="Ежедневная практика в java - лучший способ освоить данный язык программирования">
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
        <li><a href="/" class="current"><b>Главная</b></a></li>
        <li><a href="/blog"><b>Блог</b></a></li>
        <li><a href="/devops"><b>DevOps</b></a></li>
      </ul>
    </nav>
  </header>

  <section>
    <h1 id="top">О ПРОЕКТЕ</h1>

    <p align="center">На сайте разобраны простые "пет-проекты" для
      тех, кому не терпится применить полученные знания в деле.</p>
  </section>

  <section>
    <div id="logos" align="center">
      <p>
        <a href="/devops#linux"><img src="images/logo/linux.svg" class="logo" alt="linux" title="linux" /></a> 
        <a href="/devops#java"><img src="images/logo/java.svg" class="logo" alt="java" title="java" /></a>
        <a href="/devops#git"><img src="images/logo/git.svg" class="logo" alt="git" title="git" /></a>
      </p>
    </div>

    <aside class="article-preview">
      <h4>Проект Эйлера - решенные задачи</h4>
      <p>
        Цикл задач проекта Эйлера позволяет не только познакомиться с
        алгоритмами и отработать конструкции языка программирования, но
        и разобраться с такими вопросами как настройка, отладка,
        тестирование и т.п... <a
          href="/blog/project-euler-solutions.jsp"><b>читать</b></a>
      </p>
    </aside>
  </section>

  <footer>
    <ul>
      <li><a href="#top"><b>Наверх</b></a></li>
    </ul>
  </footer>
</body>
</html>
