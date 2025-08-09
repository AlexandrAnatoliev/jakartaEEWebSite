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

<title>java практика: пример использования git</title>
<meta name="description" content="Типичный пример использования git - работa с удаленным репозиторием: 
    создание новой ветки, внесение изменений в код, создание pull request на GitHub и слияние (merge) изменений с основной веткой master.">
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
    <h1 id="top">ПРИМЕР ИСПОЛЬЗОВАНИЯ GIT</h1>

    <p>Типичный пример использования git - работa с удаленным репозиторием: 
    создание новой ветки, внесение изменений в код, создание <b>pull request</b> на <b>GitHub</b> и слияние (<b>merge</b>) изменений с основной веткой <b>master</b>.</p>
  </section>

  <section>
    <h3>Почему нельзя работать в ветке master</h3>

    <p>Если Вы вносите изменения в код реального проекта, над которым работает не один человек, может возникнуть конфликт, 
    как только Вы попытаетесь отправить (<b>push</b>) изменения. 
    Именно поэтому, когда работают над новой функциональностью, не работают в <b>master</b>, а создают отдельную ветку. 
    Это гарантирует, что Вы никому не помешаете и никто не помешает Вам.</p>
  </section>

  <section>
    <h3>Пример использования git: работа с удаленным git-репозиторием</h3>

    <p>Сначала необходимо получить последние изменения из удаленного репозитория <b>origin</b> в локальный, в ветку <b>master</b>:</p>

		<div class="vimcode">
			git pull origin master
		</div>

    <p>Небольшой мануал по командам git:</p>

    <aside class="article-preview">
      <h4>Основные команды git</h4>
      <p>Полный список команд git довольно обширен, потому здесь приведены только основные - те, которые использую чаще всего...
        <a href="/blog/komandy-git.jsp"><b>читать</b></a>
      </p>
    </aside>

    <p>Создать новую ветку для работы над задачей:</p>

		<div class="vimcode">
			git branch issue-2_update-readme
		</div>

    <p>Где:
      <ul>
        <li><b>issue-2</b> - номер решаемой задачи (или <b>issue</b>);</li>
        <li><b>update-readme</b> - ее краткое описание;</li>
      </ul>
    </p>

    <p>Переключиться на созданную ветку:<p>

		<div class="vimcode">
			git switch issue-2_update-readme
		</div>

    <p>Внести необходимые изменения в код (в данном случае - в файл <b>README.md</b>) и добавить изменения для их отслеживания:<p>

		<div class="vimcode">
			git add .
		</div>

    <p>"Закоммитить" изменения:</p>

		<div class="vimcode">
			git commit -m "fix: update README.md"
		</div>

    <p>Правильно написать коммит поможет статья:</p>

    <aside class="article-preview">
      <h4>Соглашение о коммитах</h4>
      <p>Это соглашение помогает упростить ведение истории изменений, 
        автоматизировать анализ изменений в коде и в целом повышает прозрачность для всей команды...
        <a href="/blog/soglashenie-o-kommitah.jsp"><b>читать</b></a>
      </p>
    </aside>

    <p>Отправить изменения в ветку <b>issue-2_update-readme</b> удаленного репозитория <b>origin</b>:</p>

		<div class="vimcode">
			git push origin issue-2_update-readme
		</div>

  </section>

  <section>
    <h3>Пример использования git: pull request на GitHub</h3>

    <p>После отправки изменений на  <b>GitHub</b> во вкладке <b>Branches</b> появится новая ветка <b>issue-2_update-readme</b>:</p>

    <figure>
      <img alt="Пример использования git: появилась новая ветка"
        src="/images/primer-git/pic-1.png" class="large">
    </figure>

    <p>Создать <b>pull request</b> (заявку на слияние Вашего кода с основной веткой <b>master</b>) можно 
      зайдя во вкладку <b>Pull requests</b> и нажав кнопку <b>New pull request</b>:</p>

    <figure>
      <img alt="Пример использования git: создать pull request"
        src="/images/primer-git/pic-2.png" class="full-screen">
    </figure>

    <p>Выбрать откуда и куда будем "мерджить" (из <b>issue-2_update-readme</b> в <b>master</b>):</p>

    <figure>
      <img alt="Выбрать откуда и куда будем мерджить"
        src="/images/primer-git/pic-3.png" class="full-screen">
    </figure>

    <p>Нажать <b>Create pull request</b>:</p>

    <figure>
      <img alt="Нажать Create pull request"
        src="/images/primer-git/pic-4.png" class="full-screen">
    </figure>

    <p>Далее ссылку на этот <b>pull request</b> можно отправить на проверку. 
    "Ревьювер" сможет проверить код, собрать его, прогнать через свои тесты, запустить на тестовом сервере и т.п.</p>

    <p>Если ревью пройдено, код можно будет "смерджить", нажав на кнопку <b>Merge pull request</b>:</p>

    <figure>
      <img alt="Если ревью пройдено, код можно будет смерджить"
        src="/images/primer-git/pic-5.png" class="full-screen">
    </figure>
  </section>

  <section>
    <h3>Обновление локальной ветки master</h3>

    <p>К этому моменту Ваши изменения уже "влиты" в основную (<b>master</b>) ветку удаленного <b>git</b>-репозитория 
    и осталось лишь обновить свой локальный репозиторий.</p>

    <p>Переключиться на ветку <b>master</b>:<p>

		<div class="vimcode">
			git switch master
		</div>

    <p>Скачиваем внесенные изменения из удаленного репозитория <b>origin</b> на свой локальный репозиторий:</p>

		<div class="vimcode">
			git pull origin master
		</div>
  </section>

  <aside class="article-preview">
    <h4>Навигация по статьям</h4>
    <ul>
      <li><a href="/blog/soglashenie-o-kommitah.jsp"><b>Соглашение о коммитах</b></a></li>
      <li><a href="/blog/komandy-git.jsp"><b>Основные команды git</b></a></li>
      <li><b>Пример использования git</b></li>
      <li><a href="/blog/project-euler-4.jsp"><b>Проект Эйлера 4 задача</b></a></li>
    </ul>
  </aside>

  <footer>
    <ul>
      <li><a href="#top"><b>Наверх</b></a></li>
    </ul>
  </footer>

</body>
</html>
