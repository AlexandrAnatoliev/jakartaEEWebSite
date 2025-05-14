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

    <p>
      Это небольшой дневник, в котором излагается моя личная практика <b>java</b>
      шаг за шагом в виде конспектов, гайдов и может быть даже статей.
      Он помогает мне уложить знания в голове, служит своеобразной
      тетрадкой, в которую я могу подсматривать иногда, а также возможно
      будет полезен другим.
    </p>
  </section>

  <section>
    <aside class="article-preview">
      <h4>Проект Эйлера задача 3</h4>
      <p>
        Данная небольшая задача уже не решилась "с наскоку" и
        потребовала немного подумать над алгоритмом. Также помимо
        применения в программе новых конструкций языка <b>java</b>,
        реализовал в ней пользовательский ввод через параметры командной
        строки, все файлы скомпилировал в один <b>jar</b> архив, передал
        его через <b>ssh</b> и запустил на удаленном сервере. <b>Онлайн-калькулятор</b>
        для проверки вычислений и <b>правильный ответ</b> на задачу
        прилагаются... <a href="/blog/project-euler-3.jsp"><b>читать</b></a>
      </p>
    </aside>

    <aside class="article-preview">
      <h4>Проект Эйлера задача 2</h4>
      <p>
        В данной задаче продолжаю знакомиться с языком <b>java</b>, для
        чего реализовал пользовательский ввод, а также установил и
        запустил программу на удаленном сервере. Как всегда, для
        проверки вычислений сделан небольшой <b>онлайн-калькулятор</b> и
        приведен <b>правильный ответ</b> на задачу... <a
          href="/blog/project-euler-2.jsp"><b>читать</b></a>
      </p>
    </aside>

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

    <aside class="article-preview">
      <h4>Проект Эйлера задача 1</h4>
      <p>
        Решая эту задачу, решил не только отработать конструкции языка <b>java</b>,
        но и разобраться с компиляцией программы без использования <b>ide</b>.
        Как бонус, сделан небольшой <b>онлайн-калькулятор</b>,
        позволяющий проверить Ваши вычисления, и приведен <b>ответ</b>
        на задачу... <a href="/blog/project-euler-1.jsp"><b>читать</b></a>
      </p>
    </aside>

    <aside class="article-preview">
      <h4>Компиляция java кода</h4>
      <p>
        Компиляция <b>java</b> кода без использования <b>ide</b> (одного
        класса, нескольких, создание <b>jar-файла</b>). <a
          href="/blog/kompilyaciya-java-koda.jsp"><b>читать</b></a>
      </p>
    </aside>

    <aside class="article-preview">
      <h4>Установка java на linux</h4>
      <p>
        Небольшой конспект по установке <b>java</b> на <b>linux</b>... <a
          href="/blog/ustanovka-java.jsp"><b>читать</b></a>
      </p>
    </aside>

    <aside class="article-preview">
      <h4>Виртуальная частная сеть</h4>
      <p>
        Краткий гайд по настройке <b>wireguard</b> на своем сервере... <a
          href="/blog/virtualnaya-chastnaya-set.jsp"><b>читать</b></a>
      </p>
    </aside>

    <aside class="article-preview">
      <h4>Копирование файлов по ssh</h4>
      <p>
        После аренды виртуального сервера не всегда удобно что-то делать
        сразу на нем. Чаще всего проект будет делаться на локальном
        компьютере и лишь потом копироваться сервер... <a
          href="/blog/kopirovanie-fajlov-po-ssh.jsp"><b>читать</b></a>
      </p>
    </aside>

    <aside class="article-preview">
      <h4>Основные команды linux терминала</h4>
      <p>
        Команды, вводимые пользователем в консоли терминала, выполняются
        командной оболочкой <b>bash</b>. Пользователь вводит команду, <b>bash</b>
        ищет программу, соответствующую команде, в нужных каталогах,
        запускает ее и передает ей введенные параметры. Количество их,
        потому, огромно. В статье будут описаны лишь те команды linux
        терминала, которые я использую чаще всего... <a
          href="/blog/komandy-linux-terminala.jsp"><b>читать</b></a>
      </p>
    </aside>

    <aside class="article-preview">
      <h4>Подключение по ssh к виртуальному серверу</h4>
      <p>
        Краткий гайд по подключению по ssh к виртуальному серверу
        (VPS)... <a href="/blog/podklyuchenie-po-ssh-k-vps.jsp"><b>читать</b></a>
      </p>
    </aside>

    <aside class="article-preview">
      <h4>Аренда виртуального сервера</h4>
      <p>
        Для размещения и запуска своих проектов арендовать <b>vps</b>
        сервер будет дешевле, чем оплачивать услуги хостинга. Управлять
        им, однако немного сложнее, потому что понадобятся некоторые
        знания для его настройки. Чтобы облегчить этот процесс,
        составлен небольшой гайд... <a href="/blog/arenda-vps.jsp"><b>читать</b></a>
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
