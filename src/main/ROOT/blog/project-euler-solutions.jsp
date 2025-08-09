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
        clickmap:true,
        trackLinks:true,
        accurateTrackBounce:true
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

<title>java практика: проект Эйлера решенные задачи</title>
<meta name="description"
  content="Решая задачи проекта Эйлера, можно не только познакомиться с алгоритмами и отработать конструкции языка программирования, 
    но и разобраться с такими вопросами как настройка, отладка, тестирование и т.п.">
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
    <h1 id="top">ПРОЕКТ ЭЙЛЕРА - РЕШЕННЫЕ ЗАДАЧИ</h1>

    <p>Цикл задач проекта Эйлера позволяет не только познакомиться с
      алгоритмами и отработать конструкции языка программирования, но и
      разобраться с такими вопросами как настройка, отладка,
      тестирование и т.п.</p>
  </section>

  <aside class="article-preview">
    <h4>Числа, кратные 3 или 5</h4>
    <p>
      Решая эту задачу, постарался не только отработать конструкции
      языка <b>java</b>, но и разобраться с компиляцией программы без
      использования <b>ide</b>. Как бонус, сделан небольшой <b>онлайн-калькулятор</b>,
      позволяющий проверить Ваши вычисления, и приведен <b>ответ</b> на
      задачу... <a href="/blog/project-euler-1.jsp"><b>читать</b></a>
    </p>
  </aside>

  <aside class="article-preview">
    <h4>Четные числа Фибоначчи</h4>
    <p>
      В данной задаче продолжаю знакомиться с языком <b>java</b>, для
      чего реализовал пользовательский ввод, а также установил и
      запустил программу на удаленном сервере. Как всегда, для проверки
      вычислений сделан небольшой <b>онлайн-калькулятор</b> и приведен <b>правильный
        ответ</b> на задачу... <a href="/blog/project-euler-2.jsp"><b>читать</b></a>
    </p>
  </aside>

  <aside class="article-preview">
    <h4>Наибольший простой делитель</h4>
    <p>
      Данная небольшая задача уже не решилась "с наскоку" и потребовала
      немного подумать над алгоритмом. Также помимо применения в
      программе новых конструкций языка <b>java</b>, реализовал в ней
      пользовательский ввод через параметры командной строки, все файлы
      скомпилировал в один <b>jar</b> архив, передал его через <b>ssh</b>
      и запустил на удаленном сервере. <b>Онлайн-калькулятор</b> для
      проверки вычислений и <b>правильный ответ</b> на задачу
      прилагаются... <a href="/blog/project-euler-3.jsp"><b>читать</b></a>
    </p>
  </aside>

    <aside class="article-preview">
    <h4>Наибольшее произведение-палиндром</h4>
      <p>Задача позволила не только познакомиться и отработать новые конструкции языка <b>java</b>,
	но и попрактиковаться в работе с <b>git</b>, создать локальный репозиторий с кодом программы, отправить изменения на удаленный репозиторий (в <b>GitHub</b>)
	и склонировать код на удаленный сервер, где затем скомпилировать и запустить программу.
	<b>Онлайн-калькулятор</b> для проверки вычислений и <b>правильный ответ</b> на задачу прилагаются... 
	<a href="/blog/project-euler-4.jsp"><b>читать</b></a>
      </p>
  </aside>

  <aside class="article-preview">
    <h4>Навигация по статьям</h4>
    <ul>
      <li><a href="/blog/kompilyaciya-java-koda.jsp"><b>Компиляция
            java кода</b></a></li>
      <li><a href="/blog/project-euler-1.jsp"><b>Проект
            Эйлера задача 1</b></a></li>
      <li><b>Проект Эйлера - решенные задачи</b></li>
      <li><a href="/blog/project-euler-2.jsp"><b>Проект
            Эйлера задача 2</b></a></li>
      <li><a href="/blog/project-euler-3.jsp"><b>Проект
            Эйлера задача 3</b></a></li>
    </ul>
  </aside>

  <footer>
    <ul>
      <li><a href="#top"><b>Наверх</b></a></li>
    </ul>
  </footer>
</body>
</html>
