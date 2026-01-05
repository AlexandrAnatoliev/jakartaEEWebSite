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

<!-- Google tag (gtag.js) -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-7WDGSQZ36B"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'G-7WDGSQZ36B');
</script>

<style>
  <%@include file="/style.css"%>
</style>

<title>java практика: blog</title>

<meta name="description" content="Моя личная практика java">
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
    <h1 id="top">БЛОГ</h1>

    <p> Это небольшой дневник, в котором излагается 
      моя личная практика <b>Java</b>
      шаг за шагом в виде конспектов, гайдов 
      и, возможно, даже статей.
      Он помогает мне уложить знания в голове, 
      служит своеобразной тетрадкой, в которую я 
      могу подсматривать иногда, а также, возможно,
      будет полезен другим.</p>
  </section>

  <section>
    <aside class="article-preview">
      <h4>Project Euler open source</h4>
      <p>Этот проект поможет не только 
      закрепить знания Java, но и сделать свой 
      первый pull request на GitHub...
      <a href="/blog/project-euler-open-source.jsp"><b>читать</b></a> </p>
    </aside>

    <aside class="article-preview">
      <h4>Проект Эйлера 4 задача</h4>
      <p>Задача "Наибольшее произведение-палиндром"
      позволила не только познакомиться и отработать
      новые конструкции языка <b>Java</b>,
      но и попрактиковаться в работе с <b>Git</b>: 
      создать локальный репозиторий с кодом программы, 
      отправить изменения на удаленный репозиторий 
      (в <b>GitHub</b>) и склонировать код на 
      удаленный сервер, где затем скомпилировать 
      и запустить программу. 
      <b>Онлайн-калькулятор</b> для проверки 
      вычислений и <b>правильный ответ</b> 
      на задачу прилагаются... 
      <a href="/blog/project-euler-4.jsp"><b>читать</b></a> </p>
    </aside>

     <aside class="article-preview">
      <h4>Пример использования Git</h4>
      <p>Типичный пример использования Git - 
      работa с удаленным репозиторием: создание 
      новой ветки, внесение изменений в код, 
      создание <b>pull request</b> на <b>GitHub</b> 
      и слияние (<b>merge</b>) изменений с основной 
      веткой <b>master</b>...
        <a href="/blog/primer-git.jsp"><b>читать</b></a> </p>
    </aside>

    <aside class="article-preview">
      <h4>Основные команды Git</h4>
      <p>Полный список команд Git довольно 
      обширен, потому здесь приведены только 
      основные - те, которые использую чаще всего...
        <a href="/blog/komandy-git.jsp"><b>читать</b></a> </p>
    </aside>

    <aside class="article-preview">
      <h4>Соглашение о коммитах</h4>
      <p>Это соглашение помогает упростить 
      ведение истории изменений, автоматизировать 
      анализ изменений в коде и в целом повышает 
      прозрачность для всей команды...
        <a href="/blog/soglashenie-o-kommitah.jsp"><b>читать</b></a> </p>
    </aside>

    <aside class="article-preview">
      <h4>Семантическое версионирование</h4>
      <p> Краткий гайд о том, как именовать 
      версии програмного обеспечения так, 
      чтобы другим программистам был сразу 
      ясен характер внесенных изменений...
        <a href="/blog/semanticheskoe-versionirovanie.jsp"><b>читать</b></a> </p>
    </aside>

    <aside class="article-preview">
      <h4>Проект Эйлера 3 задача</h4>
      <p>
        Данная небольшая задача уже не решилась 
        "с наскока" и потребовала немного подумать 
        над алгоритмом. Также помимо применения 
        в программе новых конструкций языка 
        <b>Java</b>, реализовал в ней пользовательский 
        ввод через параметры командной строки, 
        все файлы скомпилировал в один <b>JAR</b>-архив, 
        передал его через <b>SSH</b> и запустил 
        на удаленном сервере. <b>Онлайн-калькулятор</b>
        для проверки вычислений и <b>правильный ответ</b> на задачу
        прилагаются... <a href="/blog/project-euler-3.jsp"><b>читать</b></a>
      </p>
    </aside>

    <aside class="article-preview">
      <h4>Проект Эйлера 2 задача</h4>
      <p> В данной задаче продолжаю знакомиться 
      с языком <b>Java</b>, для чего реализовал 
      пользовательский ввод, а также установил 
      и запустил программу на удаленном сервере. 
      Как всегда, для проверки вычислений сделан 
      небольшой <b>онлайн-калькулятор</b> и 
      приведен <b>правильный ответ</b> на задачу... <a
          href="/blog/project-euler-2.jsp"><b>читать</b></a> </p>
    </aside>

    <aside class="article-preview">
      <h4>Проект Эйлера - решенные задачи</h4>
      <p> Цикл задач проекта Эйлера позволяет 
        не только познакомиться с алгоритмами 
        и отработать конструкции языка 
        программирования, но и разобраться 
        с такими вопросами как настройка, 
        отладка, тестирование и т.п... 
        <a href="/blog/project-euler-solutions.jsp"><b>читать</b></a> </p>
    </aside>

    <aside class="article-preview">
      <h4>Проект Эйлера 1 задача</h4>
      <p> Решая эту задачу, решил не только 
        отработать конструкции языка <b>Java</b>, 
        но и разобраться с компиляцией программы 
        без использования <b>IDE</b>.
        Как бонус, сделан небольшой 
        <b>онлайн-калькулятор</b>, позволяющий 
        проверить Ваши вычисления, и приведен 
        <b>ответ</b> на задачу... 
        <a href="/blog/project-euler-1.jsp"><b>читать</b></a> </p>
    </aside>

    <aside class="article-preview">
      <h4>Компиляция Java-кода</h4>
      <p> Компиляция <b>Java</b>-кода без 
      использования <b>IDE</b> (одного класса, 
           нескольких, создание <b>JAR-файла</b>). 
           <a href="/blog/kompilyaciya-java-koda.jsp"><b>читать</b></a> </p>
    </aside>

    <aside class="article-preview">
      <h4>Установка Java на Linux</h4>
      <p> Небольшой конспект по установке <b>Java</b> 
           на <b>Linux</b>... <a href="/blog/ustanovka-java.jsp"><b>читать</b></a> </p>
    </aside>

    <aside class="article-preview">
      <h4>Копирование файлов по SSH</h4>
      <p> После аренды виртуального сервера 
      не всегда удобно что-то делать сразу 
      на нем. Чаще всего проект будет делаться 
      на локальном компьютере и лишь потом 
           копироваться на сервер... <a href="/blog/kopirovanie-fajlov-po-ssh.jsp"><b>читать</b></a> </p>
    </aside>

    <aside class="article-preview">
      <h4>Основные команды Linux-терминала</h4>
      <p> Команды, вводимые пользователем 
      в консоли терминала, выполняются командной 
      оболочкой <b>Bash</b>. Пользователь вводит 
      команду, <b>Bash</b> ищет программу, 
      соответствующую команде, в нужных каталогах,
      запускает ее и передает введенные параметры. 
      Количество их, поэтому, огромно. В статье 
      будут описаны лишь те команды Linux-терминала, 
           которые я использую чаще всего... 
           <a href="/blog/komandy-linux-terminala.jsp"><b>читать</b></a> </p>
    </aside>

    <aside class="article-preview">
      <h4>Подключение по SSH к виртуальному серверу</h4>
      <p> Краткий гайд по подключению по SSH к 
      виртуальному серверу (VPS)... 
      <a href="/blog/podklyuchenie-po-ssh-k-vps.jsp"><b>читать</b></a> </p>
    </aside>

    <aside class="article-preview">
      <h4>Аренда виртуального сервера</h4>
      <p> Для размещения и запуска своих проектов 
      арендовать <b>VPS</b> сервер будет дешевле, 
      чем оплачивать услуги хостинга. Управлять
      им, однако, немного сложнее, потому что 
      понадобятся некоторые знания для его 
      настройки. Чтобы облегчить этот процесс,
        составлен небольшой гайд... <a href="/blog/arenda-vps.jsp"><b>читать</b></a> </p>
    </aside>
  </section>

  <footer>
    <ul>
      <li><a href="#top"><b>Наверх</b></a></li>
    </ul>
  </footer>
</body>
</html>
