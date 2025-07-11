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

<title>java практика: соглашение о коммитах</title>
<meta name="description" content="Соглашение о коммитах помогает упростить ведение истории изменений, 
автоматизировать анализ изменений в коде и в целом повышает прозрачность для всей команды.">
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
    <h1 id="top">СОГЛАШЕНИЕ О КОММИТАХ</h1>
    <p>
      Это соглашение помогает упростить ведение истории изменений, 
      автоматизировать анализ изменений в коде и в целом повышает прозрачность для всей команды.
    </p>
  </section>

  <section>
    <h3>Основной формат сообщения коммита</h3>

		<p>В общем случае коммит имеет следующую структуру:</p>

<pre class="vimcode">
[type][optional область]: [краткое описание]

[optional "тело" коммита]

[optional "подвал"]
</pre>

		<p>Текст коммита отвечает на вопросы:
			<ul>
				<li>Что делал?</li>
				<li>Зачем?</li>
				<li>Другая дополнительная информация (например, о связи с <b>issue</b>)</li>
			</ul>
		</p>

		<p>Например:</p>

<pre class="vimcode">
fix(project1): added ru docs

see the issue for details

fixed issue #12
</pre>

  </section>

  <section>
    <h3>Типы коммитов</h3>

		<ul>
      <li><b>fix:</b> коммит, который <b>исправляет "баги"</b> в коде (<b>PATCH</b> в семантическом версионировании);</li>
      <aside class="article-preview">
        <h4>Семантическое версионирование</h4>
        <p>
          Краткий гайд о том, как именовать версии программного обеспечения так, 
          чтобы другим программистам был сразу ясен характер внесенных изменений...
          <a href="/blog/semanticheskoe-versionirovanie.jsp"><b>читать</b></a>
        </p>
      </aside>

      <li><b>feat:</b> коммит, который <b>добавляет функциональность</b> в код (<b>MINOR</b> в semver);</li>
      <li><b>BREAKING CHANGE:</b> несет в себе описание <b>нарушений обратной совместимости</b> с API (<b>MAJOR</b> в semver). </br>
      Может относиться к коммиту любого типа. В этом случае BREAKING CHANGE: пишется в начале тела коммита или подвала, 
      а после типа коммита ставится восклицательный знак (<b>feat!:</b>);</li>
		</ul>

    <p>Дополнительные типы коммитов не требуются, но разрешены:</p>
    <ul>
      <li><b>docs:</b> изменения в документации (README, комментарии к коду и т.п.);</li>
      <li><b>style:</b> правки, не затрагивающие логику (форматирование, пробелы, запятые и т.д.);</li>
      <li><b>refactor:</b> рефакторинг кода (изменения в коде без изменения ошибок или добавления "фичи");</li>
      <li><b>perf:</b> изменения, связанные с производительностью;</li>
      <li><b>test:</b> добавление или исправление тестов без изменений в рабочем коде;</li>
      <li><b>build:</b> изменения в сборке проекта или внешних зависимостях;</li>
      <li>и другие.</li>
    </ul>
	</section>

  <section>
    <h3>Область коммита</h4>

    <p>После типа коммита через круглые скобки можно указать область затронутого кода, например:</p>

    <div class="vimcode">
      fix(ui): доработан header сайта
    </div>

    <p>Это помогает понять, что именно изменилось и в каком разделе проекта. Не является обязательным элементом.</p> 
	</section>

  <section>
    <h3>Краткое описание</h4>

    <p>Представляет собой краткое изложение изменений кода. </br> Сообщает, что именно сделано в этом коммите. Пишется с маленькой буквы, точка в конце не ставится.</p>
	</section>

  <section>
    <h3>Тело коммита</h4>

    <p>Необязательный блок, в котором можно описать, зачем был сделан коммит, детали реализации и возможные "подводные камни".</p>
	</section>

  <section>
    <h3>Подвал коммита</h4>

    <p>Также необязательный блок. В нем указывают ссылки на задачи и "тикеты", к которым относится коммит.</p>
	</section>

  <aside class="article-preview">
    <h4>Навигация по статьям</h4>
    <ul>
      <li><a href="/blog/project-euler-3.jsp"><b>Проект Эйлера задача 3</b></a></li>
      <li><a href="/blog/semanticheskoe-versionirovanie.jsp"><b>Семантическое версионирование</b></a></li>
      <li><b>Соглашение о коммитах</b></li>
      <li><a href="/blog/komandy-git.jsp"><b>Основные команды git</b></a></li>
      <li><a href="/blog/primer-git.jsp"><b>Пример использования git</b></a></li>
    </ul>
  </aside>

  <footer>
    <ul>
      <li><a href="#top"><b>Наверх</b></a></li>
    </ul>
  </footer>

</body>
</html>
