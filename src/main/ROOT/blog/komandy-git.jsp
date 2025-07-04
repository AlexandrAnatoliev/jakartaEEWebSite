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

<title>java практика: команды git</title>
<meta name="description" content="Полный список команд git довольно обширен, потому здесь приведены только основные - те, которые использую чаще всего.">
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
    <h1 id="top">ОСНОВНЫЕ КОМАНДЫ GIT</h1>

    <p>Полный список команд <b>git</b> довольно обширен, потому здесь приведены только основные - те, которые использую чаще всего.</p>
  </section>

  <section>
    <h3>Создание git репозитория</h3>

    <p>Инициализация нового <b>git</b> репозитория в текущей папке:</p>

    <div class="vimcode">
			git init
		</div>

    <p>С помощью команды...</p>

    <div class="vimcode">
			ls -a
		</div>
	
		<p>...можно увидеть, что появилась скрытая папка с репозиторием:</p>

    <div class="vimcode">
			.git/
		</div>
  </section>

  <section>
    <h3>Клонирование git репозитория</h3>

    <p>Скачать (склонировать) удаленный репозиторий на локальный компьютер:</p>

    <div class="vimcode">
			git clone https://github.com/example...
		</div>
  </section>

  <section>
    <h3>Установка имени и email</h3>

<pre class="vimcode">
git config --global user.email "example.com"
git config --global user.name "UserName"
</pre>

    <p>
			Посмотреть установленные имя и email:
    </p>

<pre class="vimcode">
git config --global user.email
git config --global user.name
</pre>
	</section>

  <section>
    <h3>Создание файла .gitignore</h3>

		<p>
			Вывести информацию о текущем состоянии репозитория:
		</p>

		<div class="vimcode">
			git status
		</div>

    <p>
			Некоторые файлы обычно не отслеживают  и отправляют в <b>.gitignore</b> (например, <b>file.class</b>).
    </p>

		<p>Создаем пустой файл <b>.gitignore</b> в корне проекта:</p>

		<div class="vimcode">
			vim .gitignore
		</div>

		<p>Исключаем от отслеживания все файлы с расширением <b>.class</b>, для чего пишем в файле:</p>

		<div class="vimcode">
			*.class
		</div>
	</section>

  <section>
    <h3>Создание коммитов</h3>

		<p>Добавить <b>file</b> в отслеживаемые (т.е. его изменения будут отслеживаться):</p>

		<div class="vimcode">
			git add file
		</div>

    <p>Добавить все файлы из текущей папки в отслеживаемую зону (кроме указанных в <b>.gitignore)</b>:</p>

		<div class="vimcode">
			git add .
		</div>

		<p>Создаем коммит с сообщением "add file":</p>

		<div class="vimcode">
			git commit -m "fix: add file"
		</div>

    <p>Более подробно о правилах написания коммитов можно почитать в статье:</b>

    <aside class="article-preview">
      <h4>Соглашение о коммитах</h4>
      <p>Это соглашение помогает упростить ведение истории изменений, 
        автоматизировать анализ изменений в коде и в целом повышает прозрачность для всей команды...
        <a href="/blog/soglashenie-o-kommitah.jsp"><b>читать</b></a>
      </p>
    </aside>

		<p>Показать историю коммитов:</p>

		<div class="vimcode">
			git log
		</div>

		<p>Сокращенный вывод истории коммитов (по одной строке на каждый коммит):</p>

		<div class="vimcode">
			git log --oneline
		</div>
	</section>
	
  <section>
    <h3>Откат к предыдущему коммиту</h3>

    <p>Удалить все изменения и "откатить" на один коммит назад:</p>

		<div class="vimcode">
			git reset --hard HEAD~1
		</div>

    <p>Чтобы "откатить" изменения к определенному коммиту, необходимо написать его <b>хеш</b> вместо <b>HEAD</b>.</p>

    <p>Также "откатить" изменения на один коммит.
      При этом измененные файлы остаются и отображаются, как имеющие изменения и отслеживаемые (как добавленные с помощью команды <b>git add</b>),
      т.е. удаляется сам коммит, изменения в файлах сохраняются:</p>

		<div class="vimcode">
			git reset --soft HEAD~1
		</div>

    <p>Коммит откатывается, файлы остаются измененными, но не отслеживаются:</p>

		<div class="vimcode">
			git reset --mixed HEAD~1
		</div>

    <p>или</p>

		<div class="vimcode">
			git reset HEAD~1
		</div>
	</section>

  <section>
    <h3>Работа с ветками</h3>

    <p>Показать список доступных веток:</p>

		<div class="vimcode">
			git branch
		</div>

    <p>Создать новую ветку:</p>

		<div class="vimcode">
			git branch feature_1
		</div>

    <p>Переключиться на ветку:</p>

		<div class="vimcode">
			git switch feature_1
		</div>
  </section>

  <section>
    <h3>Слияние изменений</h3>

    <p>Слияние изменений из указанной ветки (feature_1) в текущую:</p>

		<div class="vimcode">
			git merge feature_1
		</div>
  </section>

  <section>
    <h3>Работа с удаленным репозиторием</h3>

    <p>Вывести список удаленных репозиториев (ремоутов):</p>

		<div class="vimcode">
			git remote -v
		</div>

    <p>Добавить удаленный репозиторий:</p>

		<div class="vimcode">
			git remote add origin https://github.com/example...
		</div>

    <p>Где origin - это имя ремоута.</p>

    <p>Отправить изменения в ремоут <b>origin</b> ветки <b>master</b>:</p>

		<div class="vimcode">
			git push origin master
		</div>

    <p>Получить изменения из удаленного репозитория <b>origin</b> в локальный, в ветку <b>master</b>:</p>

		<div class="vimcode">
			git pull origin master
		</div>

    <p>Сохранить логин и пароль для доступа в git репозиторий:</p>

		<div class="vimcode">
			git config --global credential.helper store 
		</div>

    <p>После выполнения команды необходимо ввести логин и пароль (например, сделать <b>git push</b>).
    Введенные данные сохранятся в файле <b>~/.git-credentials</b> и в последующем не будут запрашиваться.</p>
  </section>

  <aside class="article-preview">
    <h4>Навигация по статьям</h4>
    <ul>
      <li><a href="/blog/project-euler-3.jsp"><b>Проект Эйлера задача 3</b></a></li>
      <li><a href="/blog/semanticheskoe-versionirovanie.jsp"><b>Семантическое версионирование</b></a></li>
      <li><b>Соглашение о коммитах</b></li>
    </ul>
  </aside>

  <footer>
    <ul>
      <li><a href="#top"><b>Наверх</b></a></li>
    </ul>
  </footer>

</body>
</html>
