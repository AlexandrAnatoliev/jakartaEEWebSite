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

<title>java практика: семантическое версионирование</title>
<meta name="description" content="краткий гайд о том, как именовать версии програмного обеспечения.">
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
    <h1 id="top">СЕМАНТИЧЕСКОЕ ВЕРСИОНИРОВАНИЕ</h1>
    <p>
      Краткий гайд о том, как именовать версии програмного обеспечения так, 
      чтобы другим программистам был сразу ясен характер внесенных изменений.
    </p>
  </section>

  <section>
    <h3>API</h3>

    <p>
      Версионирование программы внедряется тогда, когда у нее появляется публичный интерфейс, доступный пользователю (<b>API</b>).
    </p>

		<p>В API описываются:
			<ul>
				<li>публичные методы;</li>
				<li>зависимости;</li>
				<li>какие данные программа принимает;</li>
				<li>как их обрабатывает;</li>
				<li>что возвращает.</li>
			</ul>
		</p>
  </section>

  <section>
    <h3>Семантическое версионирование</h3>

		<p>Выглядит оно так:</p>

		<div class="vimcode">
			MyProject 0.1.2
		</div>

    <p>Где:
			<ul>
				<li><b>MyProject</b> - название программы;</li>
				<li><b>0.1.2</b> - номер версии</li>
			</ul>
		</p>

<pre class="vimcode">
0.1.2
| | |
| | |<- Patch
| |<--- Minor
|<----- Major
</pre>

    <p><b>Major</b> версия (первая цифра) увеличивается, если <b>"ломается"</b> обратная совместимость. Например, <b>удаляется</b> публичный метод.</p>

		<p><b>Minor</b> (вторая цифра) - изменяется, когда <b>добавляется</b> новая функциональность.</p>

    <p><b>Patch</b> (последняя) - меняется, когда <b>исправляются</b> ("фиксятся") новые "баги", 
    функциональность же при этом не изменяется (ничего <b>не добавляется</b> и <b>не убирается</b>).</p>

		<p><b>0.1.0</b> - "начальная" версия. Пока <b>major</b> равняется нулю, <b>API</b> может свободно меняться.</p>

		<p><b>1.0.0</b> - первая "рабочая" версия. Уже требует наличия документации с описаниями <b>API</b>.</p>
	</section>

  <section>
    <h3>Пример</h3>

		<p>Версия пишется в файл <b>CHANGELOG.md</b> или <b>HISTORY.md</b> или в <b>README.md</b> в конец файла. Например:</p>

<pre class="vimcode">
Changelog
	
[1.0.1] - 2024-09-17

Added
* ...
* ...

Changed
* ...
* ...

Fixed
* ...
* ...
</pre>
	</section>

  <aside class="article-preview">
    <h4>Навигация по статьям</h4>
    <ul>
      <li><a href="/blog/project-euler-2.jsp"><b>Проект
            Эйлера задача 2</b></a></li>
      <li><a href="/blog/project-euler-3.jsp"><b>Проект
            Эйлера задача 3</b></a></li>
      <li><b>Семантическое версионирование</b></li>
      <li><a href="/blog/soglashenie-o-kommitah.jsp"><b>Соглашение о коммитах</b></a></li>
      <li><a href="/blog/komandy-git.jsp"><b>Основные команды git</b></a></li>
    </ul>
  </aside>

  <footer>
    <ul>
      <li><a href="#top"><b>Наверх</b></a></li>
    </ul>
  </footer>

</body>
</html>
