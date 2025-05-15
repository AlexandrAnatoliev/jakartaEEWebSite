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

<title>java практика: проект Эйлера 2 задача</title>
<meta name="description"
  content="Проект Эйлера 2 задача (четные числа Фибоначчи) прозволяет 
                                      не только отработать конструкции языка java, но и реализовать 
                                      пользовательский ввод, установку и запуск  программы на удаленном 
                                      сервере">
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
        <li><a href="/blog"><b><span class="iamhere">Блог</span></b></a></li>
        <li><a href="/devops"><b>DevOps</b></a></li>
      </ul>
    </nav>
  </header>

  <section>
    <h1 id="top">ПРОЕКТ ЭЙЛЕРА 2 ЗАДАЧА</h1>

    <p>
      В данной задаче продолжаем знакомиться с языком <b>java</b>, для
      чего реализуем пользовательский ввод, а также установим и запустим
      программу на удаленном сервере. Как всегда, для проверки
      вычислений сделан небольшой <b>онлайн-калькулятор</b> и приведен <b>правильный
        ответ</b> на задачу.
    </p>
  </section>

  <section>
    <h3 id="top">Четные числа Фибоначчи</h3>

    <p>
      <i>Каждый следующий элемент ряда Фибоначчи получается при
        сложении двух предыдущих. Начиная с <b>1</b> и <b>2</b>, первые
        <b>10</b> элементов будут:<br /> <b>1, 2, 3, 5, 8, 13, 21,
          34, 55, 89...</b><br /> Найдите сумму всех четных элементов ряда
        Фибоначчи, которые не превышают <b>четыре миллиона.</b>
      </i>
    </p>
  </section>

  <section>
    <article class="calculator">
      <h3>Онлайн-калькулятор: "Определение ближайшего меньшего
        числа Фибоначчи"</h3>

      <form method="post">
        <label for="maximum">Введите число:</label> <input type="number"
          step="any" id="maximum" name="maximum" required><br>
        <br> <input type="submit" value="Посчитать">
      </form>

      <%
      // Получаем введенные значения из запроса
      String maxStr = request.getParameter("maximum");

      // Проверяем, что параметры не null и не пустые
      if (maxStr != null && !maxStr.isEmpty() && (Double.parseDouble(maxStr) < 1_000_000_000)) {
        try {
          // Преобразуем строки в числа
          int max = Integer.parseInt(maxStr);

          int firstFib = 1;
          int secondFib = 2;
          int nextFib = 3; // 1 + 2
          int answer = 0;%>

      <%while (nextFib < max) {%>

      <%if (secondFib % 2 == 0) {%>
      <%answer += secondFib;%>
      <%}%>

      <%nextFib = firstFib + secondFib;%>
      <%firstFib = secondFib;%>
      <%secondFib = nextFib;%>
      <%}%>

      <p>
        Число <strong><%= firstFib %></strong> является ближайшим
        меньшим числом Фибоначчи.<br /> Сумма всех четных элементов
        ряда <strong><%= answer %></strong>.
      </p>

      <%   } catch (NumberFormatException e) { %>

      <!-- Обработка ошибки ввода -->
      <p style="color: red;">Ошибка: Пожалуйста, введите корректные
        числовые значения.</p>

      <%  }
      }
    %>
    </article>
  </section>

  <section>
    <h3 id="top">Описание алгоритма работы программы</h3>

    <pre class="vimcode">
import java.util.Scanner;

public class Solution {
  public static void main(String[] args) {

    int firstFib = 1;
    int secondFib = 2;
    int nextFib = 3; // 1 + 2
    int answer = 0;

    Scanner input = new Scanner(System.in);
    System.out.print("Input max value: ");
    int max = input.nextInt();

    while (nextFib < max) {

      if (secondFib % 2 == 0) {
        answer += secondFib;
      }

      nextFib = firstFib + secondFib;
      firstFib = secondFib;
      secondFib = nextFib;
    }

    System.out.println("Answer is " + answer);
    input.close();
  }
}
</pre>

    <p>Во-первых, нужно помнить, что согласно заданию и самому
      определению чисел Фибоначчи: “следующий элемент получается при
      сложении двух предыдущих”.</p>

    <div class="vimcode">nextFib = firstFib + secondFib;</div>

    <p>
      Во-вторых, четное число делится на <b>2</b> без остатка.
    </p>

    <div class="vimcode">if (secondFib % 2 == 0)</div>

    <p>Ну и главное, не нужно вычислять каждый элемент ряда каждый
      раз заново. Потому, как только будет получено число Фибоначчи,
      следующее за первыми двумя.</p>

    <div class="vimcode">nextFib = firstFib + secondFib;</div>

    <p>...значения обновляются:</p>

    <div class="vimcode">firstFib = secondFib;</div>

    <p>...первое число принимает значение второго:</p>

    <div class="vimcode">secondFib = nextFib;</div>

    <p>
      ...второе – третьего (суммы первых двух).<br /> Такой цикл
      продолжается снова и снова до тех пор, пока в итоге не дойдет до
      искомых <b>4000000</b>.
    </p>
  </section>

  <section>
    <h3 id="top">DevOps</h3>

    <p>
      Постепенно приближаем сложность задачи к реальной - отработаю
      запуск программы на удаленном сервере.<br /> Арендую <b>vps
        сервер</b> на время (гайд внизу).
    </p>

    <aside class="article-preview">
      <h4>Аренда виртуального сервера</h4>
      <p>
        Краткий пошаговый гайд по аренде сервера... <a
          href="/blog/arenda-vps.jsp"> <b>читать</b></a>
      </p>
    </aside>

    <p>...подключаюсь к нему...</p>

    <aside class="article-preview">
      <h4>Подключение по ssh к виртуальному серверу</h4>
      <p>
        Краткий гайд по подключению по ssh к виртуальному серверу
        (VPS)... <a href="/blog/podklyuchenie-po-ssh-k-vps.jsp"><b>читать</b></a>
      </p>
    </aside>

    <p>
      ...и напишу текст программы во встроенном текстовом редакторе(<b>vim,
        nano</b>, лично я пользуюсь <b>neovim</b>).<br /> Краткий список
      команд ниже.
    </p>

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

    <p>
      Небольшой гайд по установке <b>java</b> на сервер:
    </p>

    <aside class="article-preview">
      <h4>Установка java на linux</h4>
      <p>
        Небольшой конспект по установке <b>java</b> на <b>linux</b>... <a
          href="/blog/ustanovka-java.jsp"><b>читать</b></a>
      </p>
    </aside>

    <p>Скомпилирую программу...</p>

    <div class="vimcode">javac Solution.java</div>

    <p>
      Вопросы компиляции <b>java</b> были подробно описаны в статье.
    </p>

    <aside class="article-preview">
      <h4>Компиляция java кода</h4>
      <p>
        Компиляция <b>java</b> кода без использования <b>ide</b> (одного
        класса, нескольких, создание <b>jar-файла</b>). <a
          href="/blog/kompilyaciya-java-koda.jsp"><b>читать</b></a>
      </p>
    </aside>

    <p>Запуск программы, ввод максимального числа, до которого
      следует производить поиск и выведется искомый ответ</p>

    <pre class="vimcode">
$ java Solution
Input max value Fibonacci sequence term: 4000000
Answer is 4613732
</pre>

    <p>
      В данной программе применили несколько новых конструкций языка <b>java</b>:
    
    <ul>
      <li>Чтение программой вводимых пользователем данных</li>
      <li>Применен цикл <b>while</b></li>
    </ul>
    </p>
  </section>

  <aside class="article-preview">
    <h4>Навигация по статьям</h4>
    <ul>
      <li><a href="/blog/project-euler-1.jsp"><b>Проект
            Эйлера задача 1</b></a></li>
      <li><a href="/blog/project-euler-solutions.jsp"><b>Проект
            Эйлера - решенные задачи</b></a></li>
      <li><b>Проект Эйлера 2 задача</b></li>
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
